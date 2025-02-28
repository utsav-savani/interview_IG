import 'dart:convert';

import 'package:dio/dio.dart';

import 'app_logger.dart';

/// Custom interceptor for logging requests and responses
class LoggingInterceptor extends Interceptor {
  final AppLogger _logger = AppLogger();
  final bool _logRequestHeader;
  final bool _logRequestBody;
  final bool _logResponseHeader;
  final bool _logResponseBody;
  final bool _logError;

  LoggingInterceptor({
    bool logRequestHeader = true,
    bool logRequestBody = true,
    bool logResponseHeader = true,
    bool logResponseBody = true,
    bool logError = true,
  })  : _logRequestHeader = logRequestHeader,
        _logRequestBody = logRequestBody,
        _logResponseHeader = logResponseHeader,
        _logResponseBody = logResponseBody,
        _logError = logError;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    _logger.d('┌── Request: ${options.method} ${options.uri}');

    if (_logRequestHeader) {
      _logger.d('│ Headers:');
      options.headers.forEach((key, value) {
        _logger.d('│ $key: $value');
      });
    }

    if (_logRequestBody && options.data != null) {
      _logger.d('│ Body: ${_formatData(options.data)}');
    }

    _logger.d('└───────────────────────────────────────');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    _logger.d(
        '┌── Response: ${response.statusCode} ${response.requestOptions.uri}');

    if (_logResponseHeader) {
      _logger.d('│ Headers:');
      response.headers.forEach((key, values) {
        _logger.d('│ $key: ${values.join(', ')}');
      });
    }

    if (_logResponseBody) {
      _logger.d('│ Body: ${_formatData(response.data)}');
    }

    _logger.d('└───────────────────────────────────────');
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (_logError) {
      _logger.e('⚠️ Dio Error!');
      _logger.e('  Type: ${err.type}');
      _logger.e('  URL: ${err.requestOptions.uri}');
      _logger.e('  Message: ${err.message}');

      if (err.response != null) {
        _logger.e('  Status Code: ${err.response?.statusCode}');
        _logger.e('  Response Data: ${_formatData(err.response?.data)}');
      }
    }
    super.onError(err, handler);
  }

  String _formatData(dynamic data) {
    if (data == null) return 'null';
    try {
      if (data is Map || data is List) {
        return const JsonEncoder.withIndent('  ').convert(data);
      }
      return data.toString();
    } catch (e) {
      return data.toString();
    }
  }
}

/// Cache control interceptor for handling caching headers
class CacheInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Set cache control headers if needed
    // options.headers['Cache-Control'] = 'max-age=3600';
    super.onRequest(options, handler);
  }
}

/// Authentication interceptor for handling auth tokens
class AuthInterceptor extends Interceptor {
  final AppLogger _logger = AppLogger();

  Future<String?> _getToken() async {
    // Implement your token retrieval logic here
    // Example: return await secureStorage.read(key: 'auth_token');
    return null;
  }

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    // Check if the request needs authentication
    if (options.extra['requiresAuth'] == true) {
      final token = await _getToken();
      if (token != null) {
        options.headers['Authorization'] = 'Bearer $token';
      } else {
        _logger.w('Authentication token not found for secure request');
      }
    }
    super.onRequest(options, handler);
  }
}
