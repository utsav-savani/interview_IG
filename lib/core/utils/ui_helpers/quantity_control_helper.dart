import 'package:flutter/material.dart';

/// Returns a widget that displays quantity controls with increment and decrement buttons.
Widget buildQuantityControl(
    int quantity, VoidCallback onIncrement, VoidCallback onDecrement) {
  return Row(
    children: [
      IconButton(
        icon: const Icon(Icons.remove),
        onPressed: onDecrement,
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Text(
          quantity.toString(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      IconButton(
        icon: const Icon(Icons.add),
        onPressed: onIncrement,
      ),
    ],
  );
}
