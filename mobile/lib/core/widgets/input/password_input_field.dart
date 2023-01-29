import 'package:flutter/material.dart';

class PasswordInputField extends StatelessWidget {
  const PasswordInputField({
    super.key,
    required this.obscureText,
    required this.isValid,
    this.onPressed,
    this.onChanged,
    required this.textInputAction,
  });
  final TextInputAction textInputAction;

  final bool obscureText;
  final bool isValid;
  final void Function()? onPressed;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.done,
      obscureText: obscureText,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        prefixIcon: const Icon(Icons.password),
        labelText: 'Password',
        errorText: isValid ? 'Weak password' : null,
        suffixIcon: IconButton(
          icon: obscureText ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),
          onPressed: onPressed,
        ),
      ),
      onChanged: onChanged,
    );
  }
}
