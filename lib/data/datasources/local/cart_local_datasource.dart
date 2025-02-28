import 'package:isar/isar.dart';

import '../../../../core/errors/exceptions.dart';
import '../../models/cart_item_model.dart';
import '../../models/song_model.dart';

abstract class CartLocalDataSource {
  /// Gets all items in the cart
  Future<List<CartItemModel>> getCartItems();

  /// Gets all songs associated with cart items
  Future<List<SongModel>> getCartSongs(List<String> songIds);

  /// Adds a song to the cart
  Future<CartItemModel> addToCart(String songId);

  /// Updates the quantity of an item in the cart
  Future<CartItemModel> updateCartItemQuantity(int itemId, int quantity);

  /// Removes an item from the cart
  Future<bool> removeFromCart(int itemId);

  /// Clears all items from the cart
  Future<bool> clearCart();

  /// Gets the total number of items in the cart
  Future<int> getCartItemCount();
}

class CartLocalDataSourceImpl implements CartLocalDataSource {
  final Isar isar;

  CartLocalDataSourceImpl({required this.isar});

  @override
  Future<List<CartItemModel>> getCartItems() async {
    try {
      return await isar.cartItemModels.where().findAll();
    } catch (e) {
      throw CacheException('Failed to get cart items: $e');
    }
  }

  @override
  Future<List<SongModel>> getCartSongs(List<String> songIds) async {
    try {
      if (songIds.isEmpty) return [];

      return await isar.songModels
          .filter()
          .anyOf(songIds, (q, songId) => q.songIdEqualTo(songId))
          .findAll();
    } catch (e) {
      throw CacheException('Failed to get cart songs: $e');
    }
  }

  @override
  Future<CartItemModel> addToCart(String songId) async {
    try {
      // Check if the song is already in the cart
      final existingItem =
          await isar.cartItemModels.filter().songIdEqualTo(songId).findFirst();

      if (existingItem != null) {
        // If already in cart, increment quantity
        return await updateCartItemQuantity(
            existingItem.id, existingItem.quantity + 1);
      }

      // Otherwise add new item
      final newItem = CartItemModel(
        songId: songId,
        quantity: 1,
      );

      int id = await isar.writeTxn(() async {
        return await isar.cartItemModels.put(newItem);
      });

      // Fetch the saved item with the generated ID
      final savedItem = await isar.cartItemModels.get(id);
      if (savedItem == null) {
        throw CacheException('Failed to retrieve saved cart item');
      }

      return savedItem;
    } catch (e) {
      throw CacheException('Failed to add to cart: $e');
    }
  }

  @override
  Future<CartItemModel> updateCartItemQuantity(int itemId, int quantity) async {
    try {
      if (quantity < 1) {
        // Remove item if quantity is less than 1
        await removeFromCart(itemId);
        throw const NotFoundException('Item removed from cart');
      }

      final item = await isar.cartItemModels.get(itemId);

      if (item == null) {
        throw const NotFoundException('Cart item not found');
      }

      final updatedItem = item.copyWith(quantity: quantity);

      await isar.writeTxn(() async {
        await isar.cartItemModels.put(updatedItem);
      });

      return updatedItem;
    } catch (e) {
      if (e is NotFoundException) {
        rethrow;
      }
      throw CacheException('Failed to update cart item: $e');
    }
  }

  @override
  Future<bool> removeFromCart(int itemId) async {
    try {
      return await isar.writeTxn(() async {
        return await isar.cartItemModels.delete(itemId);
      });
    } catch (e) {
      throw CacheException('Failed to remove from cart: $e');
    }
  }

  @override
  Future<bool> clearCart() async {
    try {
      await isar.writeTxn(() async {
        await isar.cartItemModels.clear();
      });
      return true;
    } catch (e) {
      throw CacheException('Failed to clear cart: $e');
    }
  }

  @override
  Future<int> getCartItemCount() async {
    try {
      final items = await isar.cartItemModels.where().findAll();
      int totalCount = 0;
      for (var item in items) {
        totalCount += item.quantity;
      }
      return totalCount;
    } catch (e) {
      throw CacheException('Failed to get cart count: $e');
    }
  }
}
