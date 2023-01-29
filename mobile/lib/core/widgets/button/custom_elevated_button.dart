import 'package:flutter/material.dart';
import 'package:formz/formz.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    required this.status,
    required this.isValid,
  });

  final String buttonText;
  final void Function()? onPressed;
  final FormzStatus status;
  final bool isValid;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isValid ? onPressed : null,
      child: status == FormzStatus.submissionInProgress
          ? const SizedBox(child: CircularProgressIndicator.adaptive())
          : Text(buttonText),
    );
  }
}
