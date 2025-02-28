import 'package:flutter/material.dart';

/// Displays a snackbar with the given [message] and optional [duration].
void showSnackBar(BuildContext context, String message, {Duration? duration}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      duration: duration ?? const Duration(seconds: 1),
    ),
  );
}
