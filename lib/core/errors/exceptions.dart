/// Base class for all exceptions in the app
abstract class AppException implements Exception {
  final String message;

  const AppException(this.message);

  @override
  String toString() => message;
}

/// Server exception is thrown when there is an issue with the API
class ServerException extends AppException {
  const ServerException(super.message);
}

/// Cache exception is thrown when there is an issue with the local database
class CacheException extends AppException {
  const CacheException(super.message);
}

/// Network exception is thrown when there is no internet connection
class NetworkException extends AppException {
  const NetworkException([super.message = 'No internet connection']);
}

/// Not found exception is thrown when a requested resource is not found
class NotFoundException extends AppException {
  const NotFoundException(super.message);
}

/// Timeout exception is thrown when a request times out
class TimeoutException extends AppException {
  const TimeoutException(super.message);
}

/// Validation exception is thrown when request validation fails
class ValidationException extends AppException {
  const ValidationException(super.message);
}

/// Unauthorized exception is thrown when authentication fails
class UnauthorizedException extends AppException {
  const UnauthorizedException(super.message);
}

/// Forbidden exception is thrown when access is denied
class ForbiddenException extends AppException {
  const ForbiddenException(super.message);
}

/// Bad request exception is thrown when the request is invalid
class BadRequestException extends AppException {
  const BadRequestException(super.message);
}

/// Conflict exception is thrown when there is a conflict with the request
class ConflictException extends AppException {
  const ConflictException(super.message);
}

/// Security exception is thrown when there is a security issue
class SecurityException extends AppException {
  const SecurityException(super.message);
}

/// Request cancelled exception is thrown when a request is cancelled
class RequestCancelledException extends AppException {
  const RequestCancelledException(super.message);
}
