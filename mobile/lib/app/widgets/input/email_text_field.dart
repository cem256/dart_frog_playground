import 'package:flutter/material.dart';

class EmailInputField extends StatelessWidget {
  const EmailInputField({
    required this.textInputAction,
    required this.labelText,
    required this.errorText,
    required this.isValid,
    this.onChanged,
    super.key,
  });

  final TextInputAction textInputAction;
  final String labelText;
  final String errorText;
  final bool isValid;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: textInputAction,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        prefixIcon: const Icon(Icons.email),
        labelText: labelText,
        errorText: isValid ? errorText : null,
      ),
      onChanged: onChanged,
    );
  }
}
