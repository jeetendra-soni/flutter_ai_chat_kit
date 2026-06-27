import 'package:flutter_ai_chat_kit/src/domain/models/ai_models.dart';
import 'package:flutter_ai_chat_kit/src/domain/providers/ai_provider.dart';

/// Interface for the Chat Repository.
///
/// The repository orchestrates communication between providers,
/// caching mechanisms, and persistence.
abstract class IChatRepository {
  /// The current active provider.
  IAIProvider get currentProvider;

  /// Switches the active provider.
  void switchProvider(IAIProvider provider);

  /// Sends a message using the current provider.
  Future<ChatResponse> sendMessage(ChatRequest request);

  /// Streams a message using the current provider.
  Stream<ChatStreamChunk> streamResponse(ChatRequest request);

  /// Retrieves conversation history by ID.
  Future<List<ChatMessage>> getConversationHistory(String conversationId);

  /// Saves a message to the conversation history.
  Future<void> saveMessage(String conversationId, ChatMessage message);

  /// Clears conversation history.
  Future<void> clearConversation(String conversationId);
}
