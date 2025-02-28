import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../core/errors/failures.dart';
import '../../../core/usecases/usecase.dart';
import '../entities/cart_item.dart';
import '../repositories/cart_repository.dart';

/// Usecase to add a song to the cart
class AddToCart implements UseCase<CartItem, AddToCartParams> {
  final CartRepository repository;

  AddToCart(this.repository);

  @override
  Future<Either<Failure, CartItem>> call(AddToCartParams params) {
    return repository.addToCart(params.songId);
  }
}

class AddToCartParams extends Equatable {
  final String songId;

  const AddToCartParams({required this.songId});

  @override
  List<Object?> get props => [songId];
}
