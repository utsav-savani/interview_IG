import 'package:flutter/material.dart';

/// Returns a widget that displays an error message along with a "Try Again" button.
Widget buildError(BuildContext context, String message, VoidCallback onRetry) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Error: $message',
          style: const TextStyle(color: Colors.red),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: onRetry,
          child: const Text('Try Again'),
        ),
      ],
    ),
  );
}
