import 'package:dartz/dartz.dart';

import '../../../core/errors/failures.dart';
import '../../../core/usecases/usecase.dart';
import '../entities/cart_item.dart';
import '../repositories/cart_repository.dart';

/// Usecase to get all items in the cart
class GetCartItems implements UseCase<List<CartItem>, NoParams> {
  final CartRepository repository;

  GetCartItems(this.repository);

  @override
  Future<Either<Failure, List<CartItem>>> call(NoParams params) {
    return repository.getCartItems();
  }
}
