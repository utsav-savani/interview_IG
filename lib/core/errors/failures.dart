import 'package:equatable/equatable.dart';

/// Base class for all failures in the app
abstract class Failure extends Equatable {
  final String message;

  const Failure({required this.message});

  @override
  List<Object> get props => [message];
}

/// Server failure occurs when there is an issue with the API
class ServerFailure extends Failure {
  const ServerFailure({required super.message});
}

/// Cache failure occurs when there is an issue with the local database
class CacheFailure extends Failure {
  const CacheFailure({required super.message});
}

/// Network failure occurs when there is no internet connection
class NetworkFailure extends Failure {
  const NetworkFailure({super.message = 'No internet connection'});
}

/// Input failure occurs when user input is invalid
class InputFailure extends Failure {
  const InputFailure({required super.message});
}
