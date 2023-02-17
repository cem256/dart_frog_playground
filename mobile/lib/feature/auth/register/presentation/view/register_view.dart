import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:mobile/app/constants/assets.dart';
import 'package:mobile/app/router/app_router.gr.dart';
import 'package:mobile/app/widgets/button/custom_elevated_button.dart';
import 'package:mobile/app/widgets/input/email_text_field.dart';
import 'package:mobile/app/widgets/input/password_input_field.dart';
import 'package:mobile/core/extensions/context_extensions.dart';
import 'package:mobile/core/extensions/widget_extesions.dart';
import 'package:mobile/core/network/network_client.dart';
import 'package:mobile/core/utils/snackbar/snackbar_utils.dart';
import 'package:mobile/feature/auth/register/presentation/bloc/bloc/register_bloc.dart';
import 'package:mobile/feature/auth/register/repository/register_repository.dart';
import 'package:mobile/feature/auth/register/service/register_service.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: BlocProvider(
        create: (context) => RegisterBloc(
          registerService: RegisterService(
            registerRepository: RegisterRepository(
              networkClient: NetworkClient.instance,
            ),
          ),
        ),
        child: const _RegisterViewBody(),
      ),
    );
  }
}

class _RegisterViewBody extends StatelessWidget {
  const _RegisterViewBody();

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterBloc, RegisterState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        if (state.status.isSubmissionSuccess) {
          SnackbarUtils.showSnackbar(
            context: context,
            message: 'Account created',
          );
          context.router.replace(const LoginRoute());
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
              BlocBuilder<RegisterBloc, RegisterState>(
                builder: (context, state) {
                  return EmailInputField(
                    textInputAction: TextInputAction.next,
                    labelText: 'Email',
                    errorText: 'Invalid email',
                    isValid: state.email.invalid,
                    onChanged: (email) => context.read<RegisterBloc>().add(RegisterEvent.emailChanged(email)),
                  );
                },
              ),
              BlocBuilder<RegisterBloc, RegisterState>(
                builder: (context, state) {
                  return PasswordInputField(
                    textInputAction: TextInputAction.next,
                    obscureText: state.isPasswordObscured,
                    isValid: state.password.invalid,
                    labelText: 'Password',
                    errorText: 'Weak Password',
                    onChanged: (password) => context.read<RegisterBloc>().add(RegisterEvent.passwordChanged(password)),
                    onPressed: () => context.read<RegisterBloc>().add(const RegisterEvent.passwordVisibilityChanged()),
                  );
                },
              ),
              BlocBuilder<RegisterBloc, RegisterState>(
                builder: (context, state) {
                  return PasswordInputField(
                    textInputAction: TextInputAction.done,
                    obscureText: state.isPasswordObscured,
                    isValid: state.confirmPassword.invalid,
                    labelText: 'Confirm Password',
                    errorText: 'Passwords do not match',
                    onChanged: (password) =>
                        context.read<RegisterBloc>().add(RegisterEvent.confirmPasswordChanged(password)),
                    onPressed: () => context.read<RegisterBloc>().add(const RegisterEvent.passwordVisibilityChanged()),
                  );
                },
              ),
              BlocBuilder<RegisterBloc, RegisterState>(
                builder: (context, state) {
                  return SizedBox(
                    width: context.width,
                    child: CustomElevatedButton(
                      buttonText: 'Register',
                      isValid: state.status.isValidated,
                      onPressed: () => context.read<RegisterBloc>().add(const RegisterEvent.formSubmitted()),
                      status: state.status,
                    ),
                  );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account?'),
                  TextButton(
                    onPressed: () => context.router.replace(const LoginRoute()),
                    child: const Text('Login'),
                  )
                ],
              ),
            ].withSpaceBetween(height: context.mediumValue),
          ),
        ),
      ),
    );
  }
}
