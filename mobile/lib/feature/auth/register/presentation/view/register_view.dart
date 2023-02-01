import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';

import 'package:mobile/app/router/app_router.gr.dart';
import 'package:mobile/core/extensions/context_extensions.dart';
import 'package:mobile/core/extensions/widget_extesions.dart';
import 'package:mobile/core/widgets/button/custom_elevated_button.dart';
import 'package:mobile/core/widgets/input/email_text_field.dart';
import 'package:mobile/core/widgets/input/password_input_field.dart';
import 'package:mobile/feature/auth/register/presentation/bloc/bloc/register_bloc.dart';
import 'package:mobile/locator.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<RegisterBloc>(),
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
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              const SnackBar(
                content: Text('Account created'),
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
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Register',
                  style: context.textTheme.headlineMedium,
                ),
                const Text(
                  'Enter your email and password to register',
                ),
                BlocBuilder<RegisterBloc, RegisterState>(
                  builder: (context, state) {
                    return EmailInputField(
                      textInputAction: TextInputAction.next,
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
                      onChanged: (password) =>
                          context.read<RegisterBloc>().add(RegisterEvent.passwordChanged(password)),
                      onPressed: () =>
                          context.read<RegisterBloc>().add(const RegisterEvent.passwordVisibilityChanged()),
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
                      onPressed: () =>
                          context.read<RegisterBloc>().add(const RegisterEvent.passwordVisibilityChanged()),
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
      ),
    );
  }
}
