import 'package:dartz/dartz.dart';

import '../../../core/errors/failures.dart';
import '../../../core/usecases/usecase.dart';
import '../repositories/cart_repository.dart';

/// Usecase to get the total number of items in the cart
class GetCartCount implements UseCase<int, NoParams> {
  final CartRepository repository;

  GetCartCount(this.repository);

  @override
  Future<Either<Failure, int>> call(NoParams params) {
    return repository.getCartItemCount();
  }
}
