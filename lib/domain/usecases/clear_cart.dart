import 'package:dartz/dartz.dart';

import '../../../core/errors/failures.dart';
import '../../../core/usecases/usecase.dart';
import '../repositories/cart_repository.dart';

/// Usecase to clear all items from the cart
class ClearCart implements UseCase<bool, NoParams> {
  final CartRepository repository;

  ClearCart(this.repository);

  @override
  Future<Either<Failure, bool>> call(NoParams params) {
    return repository.clearCart();
  }
}
