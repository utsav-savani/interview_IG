import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/usecases/usecase.dart';
import '../../../domain/usecases/add_to_cart.dart';
import '../../../domain/usecases/clear_cart.dart';
import '../../../domain/usecases/get_cart_count.dart';
import '../../../domain/usecases/get_cart_items.dart';
import '../../../domain/usecases/update_cart_item.dart';
import 'cart_state.dart';

/// Cubit for managing cart state
class CartCubit extends Cubit<CartState> {
  final GetCartItems _getCartItems;
  final AddToCart _addToCart;
  final UpdateCartItem _updateCartItem;
  final ClearCart _clearCart;
  final GetCartCount _getCartCount;

  CartCubit({
    required GetCartItems getCartItems,
    required AddToCart addToCart,
    required UpdateCartItem updateCartItem,
    required ClearCart clearCart,
    required GetCartCount getCartCount,
  })  : _getCartItems = getCartItems,
        _addToCart = addToCart,
        _updateCartItem = updateCartItem,
        _clearCart = clearCart,
        _getCartCount = getCartCount,
        super(CartInitial());

  /// Loads all items in the cart (this method can be used on screen initialization)
  Future<void> loadCartItems() async {
    emit(CartLoading());
    final itemsResult = await _getCartItems(NoParams());
    await itemsResult.fold(
      (failure) async => emit(CartError(message: failure.message)),
      (items) async {
        final countResult = await _getCartCount(NoParams());
        countResult.fold(
          (failure) => emit(CartError(message: failure.message)),
          (totalItems) =>
              emit(CartLoaded(items: items, totalItems: totalItems)),
        );
      },
    );
  }

  /// Adds a song to the cart without emitting an interim loading state
  Future<void> addToCart(String songId) async {
    final result = await _addToCart(AddToCartParams(songId: songId));
    result.fold(
      (failure) => emit(CartError(message: failure.message)),
      (_) async {
        await _refreshCartState();
      },
    );
  }

  /// Updates the quantity of an item in the cart without an interim loading state
  Future<void> updateCartItemQuantity(String itemId, int quantity) async {
    final result = await _updateCartItem(
      UpdateCartItemParams(itemId: itemId, quantity: quantity),
    );
    result.fold(
      (failure) => emit(CartError(message: failure.message)),
      (_) async {
        await _refreshCartState();
      },
    );
  }

  /// Clears all items from the cart without an interim loading state
  Future<void> clearCart() async {
    final result = await _clearCart(NoParams());
    result.fold(
      (failure) => emit(CartError(message: failure.message)),
      (_) async {
        await _refreshCartState();
      },
    );
  }

  /// Updates only the cart count (used for badge in AppBar)
  Future<void> refreshCartCount() async {
    if (state is CartLoaded) {
      final currentState = state as CartLoaded;
      final countResult = await _getCartCount(NoParams());
      countResult.fold(
        (failure) => null, // Silently fail to avoid disrupting the UI
        (totalItems) =>
            emit(CartLoaded(items: currentState.items, totalItems: totalItems)),
      );
    }
  }

  /// Helper to refresh the cart state without showing a loading indicator
  Future<void> _refreshCartState() async {
    final itemsResult = await _getCartItems(NoParams());
    await itemsResult.fold(
      (failure) async => emit(CartError(message: failure.message)),
      (items) async {
        final countResult = await _getCartCount(NoParams());
        countResult.fold(
          (failure) => emit(CartError(message: failure.message)),
          (totalItems) =>
              emit(CartLoaded(items: items, totalItems: totalItems)),
        );
      },
    );
  }
}
