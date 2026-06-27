/// Interface for caching services.
/// 
/// Used for persisting conversation history or other temporary data.
abstract class ICacheService {
  /// Initializes the cache.
  Future<void> init();

  /// Puts a value into the cache.
  Future<void> put(String key, dynamic value);

  /// Retrieves a value from the cache.
  Future<T?> get<T>(String key);

  /// Removes a value from the cache.
  Future<void> delete(String key);

  /// Clears the entire cache.
  Future<void> clear();

  /// Closes the cache connection.
  Future<void> close();
}