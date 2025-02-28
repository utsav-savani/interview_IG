import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/cart_item.dart';
import '../../../presentation/bloc/cart/cart_cubit.dart';

/// Adds a song to the cart and shows a snackbar with feedback.
void addToCart(BuildContext context, String songId, String songTitle) {
  context.read<CartCubit>().addToCart(songId);
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('$songTitle added to cart'),
      duration: const Duration(seconds: 1),
    ),
  );
}

/// Calculates the total number of items in the cart.
int calculateTotalItems(List<CartItem> items) {
  return items.fold(0, (sum, item) => sum + item.quantity);
}
