import 'dart:async';
import 'package:flutter_ai_chat_kit/src/core/cache/cache_service_interface.dart';
import 'package:flutter_ai_chat_kit/src/domain/models/ai_models.dart';
import 'package:flutter_ai_chat_kit/src/domain/providers/ai_provider.dart';
import 'package:flutter_ai_chat_kit/src/domain/repository/chat_repository_interface.dart';

/// Concrete implementation of [IChatRepository].
class ChatRepository implements IChatRepository {

  ChatRepository({
    required IAIProvider provider,
    ICacheService? cache,
  })  : _provider = provider,
        _cache = cache;
  IAIProvider _provider;
  final ICacheService? _cache;

  @override
  IAIProvider get currentProvider => _provider;

  @override
  void switchProvider(IAIProvider provider) {
    _provider.dispose();
    _provider = provider;
  }

  @override
  Future<ChatResponse> sendMessage(ChatRequest request) async {
    final response = await _provider.sendMessage(request);
    return response;
  }

  @override
  Stream<ChatStreamChunk> streamResponse(ChatRequest request) {
    return _provider.streamResponse(request);
  }

  @override
  Future<List<ChatMessage>> getConversationHistory(
      String conversationId,) async {
    if (_cache == null) return [];
    final history = await _cache!.get<List<dynamic>>(conversationId);
    if (history == null) return [];
    return history
        .map((e) => ChatMessage.fromJson(Map<String, dynamic>.from(e as Map)))
        .toList();
  }

  @override
  Future<void> saveMessage(String conversationId, ChatMessage message) async {
    if (_cache == null) return;
    final history = await getConversationHistory(conversationId);
    history.add(message);
    await _cache!.put(conversationId, history.map((e) => e.toJson()).toList());
  }

  @override
  Future<void> clearConversation(String conversationId) async {
    if (_cache == null) return;
    await _cache!.delete(conversationId);
  }
}
