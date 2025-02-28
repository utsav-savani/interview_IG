import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../core/errors/failures.dart';
import '../../../core/usecases/usecase.dart';
import '../entities/cart_item.dart';
import '../repositories/cart_repository.dart';

/// Usecase to update the quantity of an item in the cart
class UpdateCartItem implements UseCase<CartItem, UpdateCartItemParams> {
  final CartRepository repository;

  UpdateCartItem(this.repository);

  @override
  Future<Either<Failure, CartItem>> call(UpdateCartItemParams params) {
    return repository.updateCartItemQuantity(params.itemId, params.quantity);
  }
}

class UpdateCartItemParams extends Equatable {
  final String itemId;
  final int quantity;

  const UpdateCartItemParams({
    required this.itemId,
    required this.quantity,
  });

  @override
  List<Object?> get props => [itemId, quantity];
}
