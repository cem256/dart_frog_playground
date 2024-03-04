import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:mobile/app/bloc/app_bloc.dart';
import 'package:mobile/app/constants/assets.dart';
import 'package:mobile/app/router/app_router.gr.dart';
import 'package:mobile/app/widgets/button/custom_elevated_button.dart';
import 'package:mobile/app/widgets/input/email_text_field.dart';
import 'package:mobile/app/widgets/input/password_input_field.dart';
import 'package:mobile/core/cache/cache_client.dart';
import 'package:mobile/core/extensions/context_extensions.dart';
import 'package:mobile/core/extensions/widget_extesions.dart';
import 'package:mobile/core/network/network_client.dart';
import 'package:mobile/core/utils/snackbar/snackbar_utils.dart';
import 'package:mobile/feature/auth/login/presentation/bloc/login_bloc.dart';
import 'package:mobile/feature/auth/login/repository/login_repository.dart';
import 'package:mobile/feature/auth/login/service/login_service.dart';

@RoutePage()
class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: BlocProvider(
        create: (context) => LoginBloc(
          loginService: LoginService(
            loginRepository: LoginRepository(
              networkClient: NetworkClient.instance,
              cacheClient: CacheClient.instance,
            ),
          ),
        ),
        child: const _LoginViewBody(),
      ),
    );
  }
}

class _LoginViewBody extends StatelessWidget {
  const _LoginViewBody();

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        if (state.status.isSubmissionSuccess) {
          context.read<AppBloc>().add(const AppEvent.checkAuthState());
        }
        if (state.status.isSubmissionFailure) {
          SnackbarUtils.showSnackbar(
            context: context,
            message: state.message ?? 'Authentication Failure',
          );
        }
      },
      child: Padding(
        padding: context.paddingAllDefault,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                AssetConstants.dartFrogLogo,
              ),
              BlocBuilder<LoginBloc, LoginState>(
                builder: (context, state) {
                  return EmailInputField(
                    textInputAction: TextInputAction.next,
                    labelText: 'Email',
                    errorText: 'Invalid email',
                    isValid: state.email.invalid,
                    onChanged: (email) => context.read<LoginBloc>().add(LoginEvent.emailChanged(email)),
                  );
                },
              ),
              BlocBuilder<LoginBloc, LoginState>(
                builder: (context, state) {
                  return PasswordInputField(
                    textInputAction: TextInputAction.done,
                    obscureText: state.isPasswordObscured,
                    isValid: state.password.invalid,
                    labelText: 'Password',
                    errorText: 'Weak Password',
                    onChanged: (password) => context.read<LoginBloc>().add(LoginEvent.passwordChanged(password)),
                    onPressed: () => context.read<LoginBloc>().add(const LoginEvent.passwordVisibilityChanged()),
                  );
                },
              ),
              BlocBuilder<LoginBloc, LoginState>(
                builder: (context, state) {
                  return SizedBox(
                    width: context.width,
                    child: CustomElevatedButton(
                      buttonText: 'Login',
                      isValid: state.status.isValidated,
                      onPressed: () => context.read<LoginBloc>().add(const LoginEvent.formSubmitted()),
                      status: state.status,
                    ),
                  );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                    onPressed: () => context.router.replace(const RegisterRoute()),
                    child: const Text('Register'),
                  ),
                ],
              ),
            ].withSpaceBetween(height: context.mediumValue),
          ),
        ),
      ),
    );
  }
}
