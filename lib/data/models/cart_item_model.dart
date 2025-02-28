import 'package:isar/isar.dart';

import '../../domain/entities/cart_item.dart';
import '../../domain/entities/song.dart';

part 'cart_item_model.g.dart';

/// Database model for cart items
@collection
class CartItemModel {
  CartItemModel({
    this.id = Isar.autoIncrement,
    required this.songId,
    required this.quantity,
  });

  final Id id;
  final String songId;
  final int quantity;

  /// Converts to a domain entity with the related song
  CartItem toDomain(Song song) {
    return CartItem(
      id: id.toString(),
      song: song,
      quantity: quantity,
    );
  }

  /// Creates a CartItemModel from a domain entity
  factory CartItemModel.fromDomain(CartItem item) {
    return CartItemModel(
      id: int.tryParse(item.id) ?? Isar.autoIncrement,
      songId: item.song.id,
      quantity: item.quantity,
    );
  }

  /// Creates a copy with the given fields replaced
  CartItemModel copyWith({
    Id? id,
    String? songId,
    int? quantity,
  }) {
    return CartItemModel(
      id: id ?? this.id,
      songId: songId ?? this.songId,
      quantity: quantity ?? this.quantity,
    );
  }
}
