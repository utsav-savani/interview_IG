import 'package:dartz/dartz.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../../domain/entities/cart_item.dart';
import '../../../domain/entities/song.dart';
import '../../../domain/repositories/cart_repository.dart';
import '../datasources/local/cart_local_datasource.dart';

class CartRepositoryImpl implements CartRepository {
  final CartLocalDataSource localDataSource;

  CartRepositoryImpl({required this.localDataSource});

  @override
  Future<Either<Failure, List<CartItem>>> getCartItems() async {
    try {
      final cartItems = await localDataSource.getCartItems();

      // If cart is empty, return empty list
      if (cartItems.isEmpty) {
        return const Right([]);
      }

      // Get the song IDs from cart items
      final songIds = cartItems.map((item) => item.songId).toList();

      // Get the songs associated with those IDs
      final songs = await localDataSource.getCartSongs(songIds);

      // Map the cart items to domain entities with corresponding songs
      final result = cartItems.map((cartItem) {
        final songModel = songs.firstWhere(
          (song) => song.songId == cartItem.songId,
          orElse: () => throw const NotFoundException('Song not found'),
        );

        return cartItem.toDomain(songModel.toDomain());
      }).toList();

      return Right(result);
    } on CacheException catch (e) {
      return Left(CacheFailure(message: e.message));
    } on NotFoundException catch (e) {
      return Left(CacheFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, CartItem>> addToCart(String songId) async {
    try {
      final cartItem = await localDataSource.addToCart(songId);

      // Get the associated song
      final songs = await localDataSource.getCartSongs([songId]);

      if (songs.isEmpty) {
        return Left(CacheFailure(message: 'Song not found'));
      }

      return Right(cartItem.toDomain(songs.first.toDomain()));
    } on CacheException catch (e) {
      return Left(CacheFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, CartItem>> updateCartItemQuantity(
      String itemId, int quantity) async {
    try {
      final id = int.tryParse(itemId);

      if (id == null) {
        return Left(InputFailure(message: 'Invalid cart item ID'));
      }

      final updatedItem =
          await localDataSource.updateCartItemQuantity(id, quantity);

      // Get the associated song
      final songs = await localDataSource.getCartSongs([updatedItem.songId]);

      if (songs.isEmpty) {
        return Left(CacheFailure(message: 'Song not found'));
      }

      return Right(updatedItem.toDomain(songs.first.toDomain()));
    } on CacheException catch (e) {
      return Left(CacheFailure(message: e.message));
    } on NotFoundException {
      // Item removed due to quantity being 0
      return const Right(CartItem(
          id: '',
          song: Song(
            id: '',
            title: '',
            artist: '',
            albumImage: '',
            previewUrl: '',
            releaseDate: '',
            genre: '',
          ),
          quantity: 0));
    }
  }

  @override
  Future<Either<Failure, bool>> removeFromCart(String itemId) async {
    try {
      final id = int.tryParse(itemId);

      if (id == null) {
        return Left(InputFailure(message: 'Invalid cart item ID'));
      }

      final result = await localDataSource.removeFromCart(id);
      return Right(result);
    } on CacheException catch (e) {
      return Left(CacheFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, bool>> clearCart() async {
    try {
      final result = await localDataSource.clearCart();
      return Right(result);
    } on CacheException catch (e) {
      return Left(CacheFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, int>> getCartItemCount() async {
    try {
      final count = await localDataSource.getCartItemCount();
      return Right(count);
    } on CacheException catch (e) {
      return Left(CacheFailure(message: e.message));
    }
  }
}
