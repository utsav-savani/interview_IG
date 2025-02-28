import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../errors/failures.dart';

/// Base class for all use cases in the app
abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

/// Used when a usecase doesn't need any parameters
class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
