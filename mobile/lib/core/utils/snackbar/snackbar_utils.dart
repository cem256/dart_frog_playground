import 'package:flutter/material.dart';

abstract final class SnackbarUtils {
  SnackbarUtils._();

  static void showSnackbar({required BuildContext context, required String message}) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(message),
        ),
      );
  }
}
