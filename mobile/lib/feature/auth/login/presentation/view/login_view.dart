import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:mobile/core/extensions/context_extensions.dart';
import 'package:mobile/core/extensions/widget_extesions.dart';
import 'package:mobile/core/widgets/button/custom_elevated_button.dart';
import 'package:mobile/core/widgets/input/email_text_field.dart';
import 'package:mobile/core/widgets/input/password_input_field.dart';
import 'package:mobile/feature/auth/login/presentation/bloc/login_bloc.dart';
import 'package:mobile/locator.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<LoginBloc>(),
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
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              const SnackBar(
                content: Text('Success'),
              ),
            );
        }
        if (state.status.isSubmissionFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(state.message ?? 'Authentication Failure'),
              ),
            );
        }
      },
      child: Padding(
        padding: context.paddingAllDefault,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login',
              style: context.textTheme.headline5,
            ),
            const Text(
              'Enter your email and password to login',
            ),
            BlocBuilder<LoginBloc, LoginState>(
              builder: (context, state) {
                return EmailInputField(
                  textInputAction: TextInputAction.next,
                  isValid: state.email.invalid,
                  onChanged: (email) => context.read<LoginBloc>().add(LoginEvent.emailChanged(email)),
                );
              },
            ),
            BlocBuilder<LoginBloc, LoginState>(
              builder: (context, state) {
                return PasswordInputField(
                  textInputAction: TextInputAction.next,
                  obscureText: state.isPasswordObscured,
                  isValid: state.password.invalid,
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
          ].withSpaceBetween(height: context.mediumValue),
        ),
      ),
    );
  }
}
