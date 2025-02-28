import 'dart:io';

import 'package:dio/dio.dart';

import '../errors/exceptions.dart';
import '../network/app_logger.dart';

/// Handles Dio errors and converts them to application-specific exceptions
class DioErrorHandler {
  final AppLogger _logger = AppLogger();

  /// Handle Dio errors and convert them to application exceptions
  Exception handleError(dynamic error) {
    _logger.e('API Error: $error');

    if (error is DioException) {
      return _handleDioError(error);
    }

    return ServerException('Unexpected error occurred: $error');
  }

  /// Handle specific Dio errors and map them to appropriate exceptions
  Exception _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return TimeoutException('Network timeout error: ${error.message}');

      case DioExceptionType.connectionError:
        return NetworkException('Network connection error: ${error.message}');

      case DioExceptionType.badResponse:
        return _handleResponseError(error);

      case DioExceptionType.cancel:
        return RequestCancelledException('Request was cancelled');

      case DioExceptionType.badCertificate:
        return SecurityException('Bad SSL certificate: ${error.message}');

      case DioExceptionType.unknown:
      default:
        if (error.error is SocketException) {
          return NetworkException('No internet connection');
        }
        return ServerException(
            'An unexpected error occurred: ${error.message}');
    }
  }

  /// Handle HTTP response errors based on status codes
  Exception _handleResponseError(DioException error) {
    final statusCode = error.response?.statusCode;
    final data = error.response?.data;

    _logger.d('Response error: $statusCode, data: $data');

    switch (statusCode) {
      case 400:
        return BadRequestException('Bad request: ${_getErrorMessage(data)}');
      case 401:
        return UnauthorizedException('Unauthorized: ${_getErrorMessage(data)}');
      case 403:
        return ForbiddenException('Forbidden: ${_getErrorMessage(data)}');
      case 404:
        return NotFoundException(
            'Resource not found: ${_getErrorMessage(data)}');
      case 409:
        return ConflictException('Conflict: ${_getErrorMessage(data)}');
      case 422:
        return ValidationException(
            'Validation failed: ${_getErrorMessage(data)}');
      case 500:
      case 501:
      case 502:
      case 503:
        return ServerException('Server error: ${_getErrorMessage(data)}');
      default:
        return ServerException('Server error: ${error.message}');
    }
  }

  /// Extract error message from response data
  String _getErrorMessage(dynamic data) {
    if (data == null) return 'Unknown error';

    if (data is Map) {
      // Try to find common error message fields in APIs
      final possibleMessageFields = [
        'message',
        'error',
        'error_message',
        'errorMessage'
      ];

      for (final field in possibleMessageFields) {
        if (data.containsKey(field) && data[field] != null) {
          return data[field].toString();
        }
      }

      // Try checking for nested error objects
      if (data.containsKey('errors') &&
          data['errors'] is List &&
          (data['errors'] as List).isNotEmpty) {
        return (data['errors'] as List).first.toString();
      }
    }

    // If all else fails, return the entire data as string
    return data.toString();
  }
}
