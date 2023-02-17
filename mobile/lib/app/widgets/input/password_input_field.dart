import 'package:flutter/material.dart';

class PasswordInputField extends StatelessWidget {
  const PasswordInputField({
    required this.obscureText,
    required this.isValid,
    required this.textInputAction,
    required this.labelText,
    required this.errorText,
    this.onPressed,
    this.onChanged,
    super.key,
  });
  final TextInputAction textInputAction;
  final bool obscureText;
  final bool isValid;
  final String labelText;
  final String errorText;
  final void Function()? onPressed;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: textInputAction,
      obscureText: obscureText,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        prefixIcon: const Icon(Icons.password),
        labelText: labelText,
        errorText: isValid ? errorText : null,
        suffixIcon: IconButton(
          icon: obscureText ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),
          onPressed: onPressed,
        ),
      ),
      onChanged: onChanged,
    );
  }
}
