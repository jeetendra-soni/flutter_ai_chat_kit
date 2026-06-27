/// Base class for all AI package exceptions.
abstract class AIException implements Exception {

  AIException(this.message, {this.code, this.details});
  final String message;
  final String? code;
  final dynamic details;

  @override
  String toString() => '[$runtimeType] $message (code: $code)';
}

class AuthenticationException extends AIException {
  AuthenticationException(super.message, {super.code, super.details});
}

class RateLimitException extends AIException {
  RateLimitException(super.message, {super.code, super.details});
}

class TimeoutException extends AIException {
  TimeoutException(super.message, {super.code, super.details});
}

class NetworkException extends AIException {
  NetworkException(super.message, {super.code, super.details});
}

class ProviderException extends AIException {
  ProviderException(super.message, {super.code, super.details});
}

class ValidationException extends AIException {
  ValidationException(super.message, {super.code, super.details});
}

class CancelledException extends AIException {
  CancelledException(super.message, {super.code, super.details});
}

class UnknownException extends AIException {
  UnknownException(super.message, {super.code, super.details});
}
