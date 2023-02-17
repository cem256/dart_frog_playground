import 'package:flutter/material.dart';

class EmailInputField extends StatelessWidget {
  const EmailInputField({
    required this.textInputAction,
    required this.isValid,
    this.onChanged,
    super.key,
  });

  final TextInputAction textInputAction;
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
        labelText: 'Email',
        errorText: isValid ? 'Invalid email' : null,
      ),
      onChanged: onChanged,
    );
  }
}
