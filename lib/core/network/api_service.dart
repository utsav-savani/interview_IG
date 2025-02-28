import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:interviewpractical/core/constants/app_constants.dart';

import '../errors/dio_error_handler.dart';
import '../errors/exceptions.dart';
import 'app_logger.dart';
import 'dio_interceptors.dart';

/// Singleton class for managing API requests
class ApiService {
  static final ApiService _instance = ApiService._internal();
  late final Dio _dio;
  final AppLogger _logger = AppLogger();
  final DioErrorHandler _errorHandler = DioErrorHandler();

  /// Factory constructor to return the singleton instance
  factory ApiService() {
    return _instance;
  }

  /// Private constructor for the singleton
  ApiService._internal() {
    _dio = Dio();
    _initDio();
  }

  /// Initialize Dio with default settings
  void _initDio() {
    _dio.options.baseUrl = AppConstants.baseUrl!;
    _dio.options.connectTimeout = const Duration(seconds: 30);
    _dio.options.receiveTimeout = const Duration(seconds: 30);
    _dio.options.headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    // Configure certificate verification
    (_dio.httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) {
        // Return true to allow bad certificates (not recommended for production)
        return true;
      };
      return client;
    };

    // Add interceptors for logging, caching, and authentication
    _dio.interceptors.add(LoggingInterceptor(
      logRequestHeader: true,
      logRequestBody: true,
      logResponseHeader: true,
      logResponseBody: true,
      logError: true,
    ));

    _dio.interceptors.add(CacheInterceptor());
    _dio.interceptors.add(AuthInterceptor());
  }

  /// Get the Dio instance directly (use with caution)
  Dio get dio => _dio;

  /// Generic GET method for making HTTP GET requests
  Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    bool requiresAuth = false,
  }) async {
    try {
      _logger.d('GET request to: $path');

      final options = Options(
        headers: headers,
        extra: {'requiresAuth': requiresAuth},
      );

      final response = await _dio.get(
        path,
        queryParameters: queryParameters,
        options: options,
      );

      return response;
    } on DioException catch (e) {
      throw _errorHandler.handleError(e);
    } catch (e) {
      _logger.e('Unexpected error in GET request', e);
      throw ServerException('Unexpected error: $e');
    }
  }

  /// Generic POST method for making HTTP POST requests
  Future<Response> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    bool requiresAuth = false,
  }) async {
    try {
      _logger.d('POST request to: $path');

      final options = Options(
        headers: headers,
        extra: {'requiresAuth': requiresAuth},
      );

      final response = await _dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );

      return response;
    } on DioException catch (e) {
      throw _errorHandler.handleError(e);
    } catch (e) {
      _logger.e('Unexpected error in POST request', e);
      throw ServerException('Unexpected error: $e');
    }
  }

  /// Generic PUT method for making HTTP PUT requests
  Future<Response> put(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    bool requiresAuth = false,
  }) async {
    try {
      _logger.d('PUT request to: $path');

      final options = Options(
        headers: headers,
        extra: {'requiresAuth': requiresAuth},
      );

      final response = await _dio.put(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );

      return response;
    } on DioException catch (e) {
      throw _errorHandler.handleError(e);
    } catch (e) {
      _logger.e('Unexpected error in PUT request', e);
      throw ServerException('Unexpected error: $e');
    }
  }

  /// Generic DELETE method for making HTTP DELETE requests
  Future<Response> delete(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    bool requiresAuth = false,
  }) async {
    try {
      _logger.d('DELETE request to: $path');

      final options = Options(
        headers: headers,
        extra: {'requiresAuth': requiresAuth},
      );

      final response = await _dio.delete(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );

      return response;
    } on DioException catch (e) {
      throw _errorHandler.handleError(e);
    } catch (e) {
      _logger.e('Unexpected error in DELETE request', e);
      throw ServerException('Unexpected error: $e');
    }
  }
}
