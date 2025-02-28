import 'package:flutter/material.dart';

import '../../core/utils/ui_helpers.dart' as UIHelpers;
import '../../domain/entities/cart_item.dart';

class CheckoutDialog extends StatelessWidget {
  final List<CartItem> cartItems;
  final VoidCallback onCheckout;

  const CheckoutDialog({
    super.key,
    required this.cartItems,
    required this.onCheckout,
  });

  @override
  Widget build(BuildContext context) {
    final totalItems = UIHelpers.calculateTotalItems(cartItems);

    return AlertDialog(
      title: const Text('Checkout Summary'),
      content: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'You are about to purchase $totalItems item${totalItems > 1 ? 's' : ''}:',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Flexible(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: cartItems.length,
                itemBuilder: (context, index) =>
                    _buildItemRow(cartItems[index]),
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('CANCEL'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
            onCheckout();
          },
          child: const Text('DONE'),
        ),
      ],
    );
  }

  Widget _buildItemRow(CartItem item) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Text(
            '${item.quantity} x',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              item.song.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
