import 'package:equatable/equatable.dart';

import 'song.dart';

/// Domain entity representing an item in the cart
class CartItem extends Equatable {
  final String id;
  final Song song;
  final int quantity;

  const CartItem({
    required this.id,
    required this.song,
    required this.quantity,
  });

  /// Creates a copy of this CartItem with the given fields replaced.
  CartItem copyWith({
    String? id,
    Song? song,
    int? quantity,
  }) {
    return CartItem(
      id: id ?? this.id,
      song: song ?? this.song,
      quantity: quantity ?? this.quantity,
    );
  }

  @override
  List<Object?> get props => [id, song, quantity];
}
