import 'package:equatable/equatable.dart';

import '../../../domain/entities/cart_item.dart';

/// States for the cart feature
abstract class CartState extends Equatable {
  const CartState();

  @override
  List<Object?> get props => [];
}

/// Initial state
class CartInitial extends CartState {}

/// Loading state while fetching or updating cart
class CartLoading extends CartState {}

/// State when cart items are successfully loaded
class CartLoaded extends CartState {
  final List<CartItem> items;
  final int totalItems;

  const CartLoaded({
    required this.items,
    required this.totalItems,
  });

  @override
  List<Object?> get props => [items, totalItems];
}

/// State when there's an error with the cart
class CartError extends CartState {
  final String message;

  const CartError({required this.message});

  @override
  List<Object?> get props => [message];
}
