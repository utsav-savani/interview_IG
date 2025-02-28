import 'package:dartz/dartz.dart';

import '../../../core/errors/failures.dart';
import '../entities/cart_item.dart';

/// Repository interface for cart-related operations
abstract class CartRepository {
  /// Gets all items in the cart
  Future<Either<Failure, List<CartItem>>> getCartItems();

  /// Adds a song to the cart
  Future<Either<Failure, CartItem>> addToCart(String songId);

  /// Updates the quantity of an item in the cart
  Future<Either<Failure, CartItem>> updateCartItemQuantity(
      String itemId, int quantity);

  /// Removes an item from the cart
  Future<Either<Failure, bool>> removeFromCart(String itemId);

  /// Clears all items from the cart
  Future<Either<Failure, bool>> clearCart();

  /// Gets the total number of items in the cart
  Future<Either<Failure, int>> getCartItemCount();
}
