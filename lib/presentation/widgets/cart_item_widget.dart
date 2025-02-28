import 'package:flutter/material.dart';

import '../../core/utils/ui_helpers.dart' as UIHelpers;
import '../../domain/entities/cart_item.dart';

class CartItemWidget extends StatelessWidget {
  final CartItem cartItem;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const CartItemWidget({
    super.key,
    required this.cartItem,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            // Song image
            UIHelpers.buildCachedImage(cartItem.song.albumImage),

            const SizedBox(width: 16),

            // Song info
            Expanded(
              child: UIHelpers.buildSongInfo(
                  cartItem.song.title, cartItem.song.artist),
            ),

            // Quantity controls
            UIHelpers.buildQuantityControl(
                cartItem.quantity, onIncrement, onDecrement),
          ],
        ),
      ),
    );
  }
}
