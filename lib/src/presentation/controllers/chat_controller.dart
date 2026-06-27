import 'dart:async';
import 'package:flutter/foundation.dart';
import '../../domain/models/ai_models.dart';
import '../../domain/repository/chat_repository_interface.dart';

/// The main controller for managing AI chat state and actions.
/// 
/// This controller is state-management agnostic and can be used with
/// Bloc, Riverpod, Provider, or simply [ValueListenableBuilder].
class AIChatController extends ChangeNotifier {
  final IChatRepository _repository;
  final String _conversationId;

  List<ChatMessage> _messages = [];
  bool _isLoading = false;
  String? _error;

  /// Returns the current list of messages in the conversation.
  List<ChatMessage> get messages => List.unmodifiable(_messages);

  /// Whether the controller is currently waiting for an AI response.
  bool get isLoading => _isLoading;

  /// The last error occurred, if any.
  String? get error => _error;

  AIChatController({
    required IChatRepository repository,
    String? conversationId,
  })  : _repository = repository,
        _conversationId = conversationId ?? 'default' {
    _loadHistory();
  }

  Future<void> _loadHistory() async {
    _messages = await _repository.getConversationHistory(_conversationId);
    notifyListeners();
  }

  /// Sends a message to the AI.
  /// 
  /// Updates the internal [messages] list and notifies listeners.
  Future<void> sendMessage(String content) async {
    if (content.trim().isEmpty) return;

    final userMessage = ChatMessage(
      role: ChatRole.user,
      content: content,
      timestamp: DateTime.now(),
    );

    _messages.add(userMessage);
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final request = ChatRequest(messages: _messages);
      final response = await _repository.sendMessage(request);
      
      _messages.add(response.message);
      await _repository.saveMessage(_conversationId, userMessage);
      await _repository.saveMessage(_conversationId, response.message);
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  /// Sends a message and streams the AI response.
  /// 
  /// Incremental updates are added to the last message in the [messages] list.
  Future<void> streamMessage(String content) async {
    if (content.trim().isEmpty) return;

    final userMessage = ChatMessage(
      role: ChatRole.user,
      content: content,
      timestamp: DateTime.now(),
    );

    _messages.add(userMessage);
    
    // Add an empty assistant message to be populated by the stream
    final assistantMessage = ChatMessage(
      role: ChatRole.assistant,
      content: '',
      timestamp: DateTime.now(),
    );
    _messages.add(assistantMessage);
    
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final request = ChatRequest(messages: _messages.sublist(0, _messages.length - 1), stream: true);
      final stream = _repository.streamResponse(request);

      String fullContent = '';
      await for (final chunk in stream) {
        if (chunk.content != null) {
          fullContent += chunk.content!;
          _messages[_messages.length - 1] = assistantMessage.copyWith(content: fullContent);
          notifyListeners();
        }
      }

      await _repository.saveMessage(_conversationId, userMessage);
      await _repository.saveMessage(_conversationId, _messages.last);
    } catch (e) {
      _error = e.toString();
      notifyListeners();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  /// Clears the conversation history.
  Future<void> clearHistory() async {
    await _repository.clearConversation(_conversationId);
    _messages.clear();
    notifyListeners();
  }
}