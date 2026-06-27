import '../models/ai_models.dart';

/// The abstract base class for all AI providers.
/// 
/// Every provider (OpenAI, Gemini, etc.) must implement this interface
/// to ensure compatibility with the [AIChatController].
abstract class IAIProvider {
  /// The unique identifier of the provider (e.g., 'openai').
  String get providerId;

  /// The name of the model being used (e.g., 'gpt-4').
  String get model;

  /// Sends a single message to the AI and returns a [ChatResponse].
  /// 
  /// [request] contains the messages, parameters, and configuration for the call.
  Future<ChatResponse> sendMessage(ChatRequest request);

  /// Streams the response from the AI.
  /// 
  /// Returns a [Stream] of [ChatStreamChunk].
  Stream<ChatStreamChunk> streamResponse(ChatRequest request);

  /// Disposes of any resources held by the provider.
  void dispose();
}