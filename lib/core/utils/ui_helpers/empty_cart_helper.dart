import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Returns a widget that displays an empty cart message with a "Browse Songs" button.
Widget buildEmptyCart(BuildContext context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.shopping_cart_outlined,
          size: 80,
          color: Colors.grey,
        ),
        const SizedBox(height: 16),
        const Text(
          'Your cart is empty',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'Add songs to get started',
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(height: 24),
        ElevatedButton(
          onPressed: () => context.pop(),
          child: const Text('Browse Songs'),
        ),
      ],
    ),
  );
}
