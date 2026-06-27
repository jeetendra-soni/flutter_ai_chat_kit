/// Interface for logging.
/// 
/// Allows users to plug in their own logging solution or use the default one.
abstract class IAILogger {
  /// Logs a debug message.
  void debug(String message, [Object? error, StackTrace? stackTrace]);

  /// Logs an info message.
  void info(String message);

  /// Logs a warning message.
  void warning(String message, [Object? error, StackTrace? stackTrace]);

  /// Logs an error message.
  void error(String message, [Object? error, StackTrace? stackTrace]);
}