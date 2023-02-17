import 'package:flutter/material.dart';
import 'package:form_inputs/form_inputs.dart';

import 'package:mobile/core/extensions/context_extensions.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    required this.buttonText,
    required this.onPressed,
    required this.status,
    required this.isValid,
    super.key,
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
          ? SizedBox.square(
              dimension: context.mediumValue,
              child: const CircularProgressIndicator.adaptive(strokeWidth: 2),
            )
          : Text(buttonText),
    );
  }
}
