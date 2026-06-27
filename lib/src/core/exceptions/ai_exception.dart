/// Base class for all AI package exceptions.
abstract class AIException implements Exception {
  final String message;
  final String? code;
  final dynamic details;

  AIException(this.message, {this.code, this.details});

  @override
  String toString() => '[$runtimeType] $message (code: $code)';
}

class AuthenticationException extends AIException {
  AuthenticationException(String message, {String? code, dynamic details})
      : super(message, code: code, details: details);
}

class RateLimitException extends AIException {
  RateLimitException(String message, {String? code, dynamic details})
      : super(message, code: code, details: details);
}

class TimeoutException extends AIException {
  TimeoutException(String message, {String? code, dynamic details})
      : super(message, code: code, details: details);
}

class NetworkException extends AIException {
  NetworkException(String message, {String? code, dynamic details})
      : super(message, code: code, details: details);
}

class ProviderException extends AIException {
  ProviderException(String message, {String? code, dynamic details})
      : super(message, code: code, details: details);
}

class ValidationException extends AIException {
  ValidationException(String message, {String? code, dynamic details})
      : super(message, code: code, details: details);
}

class CancelledException extends AIException {
  CancelledException(String message, {String? code, dynamic details})
      : super(message, code: code, details: details);
}

class UnknownException extends AIException {
  UnknownException(String message, {String? code, dynamic details})
      : super(message, code: code, details: details);
}