import 'package:dio/dio.dart';
import 'package:flutter_ai_chat_kit/src/core/exceptions/ai_exception.dart';
import 'package:flutter_ai_chat_kit/src/core/logging/logger_interface.dart';

/// A wrapper around [Dio] for making API requests to AI providers.
class AIDioClient {

  AIDioClient({
    required String baseUrl,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
    IAILogger? logger,
    Duration? connectTimeout,
    Duration? receiveTimeout,
  })  : _dio = Dio(
          BaseOptions(
            baseUrl: baseUrl,
            headers: headers,
            queryParameters: queryParameters,
            connectTimeout: connectTimeout ?? const Duration(seconds: 30),
            receiveTimeout: receiveTimeout ?? const Duration(seconds: 30),
          ),
        ),
        _logger = logger {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          _logger?.debug('API Request: ${options.method} ${options.path}');
          return handler.next(options);
        },
        onResponse: (response, handler) {
          _logger?.debug('API Response: ${response.statusCode}');
          return handler.next(response);
        },
        onError: (DioException e, handler) {
          _logger?.error('API Error: ${e.message}', e, e.stackTrace);
          return handler.next(e);
        },
      ),
    );
  }
  final Dio _dio;
  final IAILogger? _logger;

  /// Sends a POST request.
  Future<Response<T>> post<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      return await _dio.post<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
    } on DioException catch (e) {
      throw _handleDioException(e);
    } catch (e) {
      throw UnknownException(e.toString());
    }
  }

  /// Handles Dio-specific exceptions and maps them to [AIException].
  AIException _handleDioException(DioException e) {
    final statusCode = e.response?.statusCode;
    final message = e.response?.statusMessage ?? e.message ?? 'Unknown error';
    final data = e.response?.data;

    if (statusCode == 401) {
      return AuthenticationException('Invalid API Key',
          code: '401', details: data,);
    } else if (statusCode == 429) {
      return RateLimitException('Rate limit exceeded',
          code: '429', details: data,);
    } else if (e.type == DioExceptionType.connectionTimeout ||
        e.type == DioExceptionType.receiveTimeout) {
      return TimeoutException('Request timed out', details: data);
    } else if (e.type == DioExceptionType.cancel) {
      return CancelledException('Request cancelled');
    }

    return NetworkException(message,
        code: statusCode?.toString(), details: data,);
  }
}
