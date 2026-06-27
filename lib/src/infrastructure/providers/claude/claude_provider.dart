import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_ai_chat_kit/src/core/network/dio_client.dart';
import 'package:flutter_ai_chat_kit/src/domain/models/ai_models.dart';
import 'package:flutter_ai_chat_kit/src/domain/providers/ai_provider.dart';

/// Implementation of [IAIProvider] for Anthropic Claude.
class ClaudeProvider implements IAIProvider {

  ClaudeProvider({
    required String apiKey,
    String model = 'claude-3-5-sonnet-20240620',
    String? baseUrl,
    String apiVersion = '2023-06-01',
  })  : _model = model,
        _client = AIDioClient(
          baseUrl: baseUrl ?? 'https://api.anthropic.com/v1/',
          headers: {
            'x-api-key': apiKey,
            'anthropic-version': apiVersion,
            'content-type': 'application/json',
          },
        );
  final AIDioClient _client;
  final String _model;

  @override
  String get providerId => 'anthropic';

  @override
  String get model => _model;

  @override
  Future<ChatResponse> sendMessage(ChatRequest request) async {
    final response = await _client.post<Map<String, dynamic>>(
      'messages',
      data: _mapRequest(request),
    );

    return _mapResponse(response.data);
  }

  @override
  Stream<ChatStreamChunk> streamResponse(ChatRequest request) async* {
    final response = await _client.post<ResponseBody>(
      'messages',
      data: _mapRequest(request, stream: true),
      options: Options(responseType: ResponseType.stream),
    );

    final stream = response.data!.stream
        .cast<List<int>>()
        .transform(utf8.decoder)
        .transform(const LineSplitter());

    await for (final line in stream) {
      if (line.isEmpty || !line.startsWith('data: ')) continue;

      final jsonStr = line.substring(6);
      if (jsonStr == '[DONE]') break;

      final data = jsonDecode(jsonStr);
      final chunk = _mapStreamChunk(data);
      if (chunk != null) yield chunk;
    }
  }

  @override
  void dispose() {}

  Map<String, dynamic> _mapRequest(ChatRequest request, {bool stream = false}) {
    // Anthropic separates system prompt from messages list
    return {
      'model': _model,
      'messages': request.messages
          .where((m) => m.role != ChatRole.system)
          .map((m) => {
                'role': m.role == ChatRole.user ? 'user' : 'assistant',
                'content': m.content,
              },)
          .toList(),
      if (request.systemPrompt != null) 'system': request.systemPrompt,
      'max_tokens': request.parameters.maxTokens ?? 1024,
      'temperature': request.parameters.temperature,
      'top_p': request.parameters.topP,
      'stream': stream,
    };
  }

  ChatResponse _mapResponse(dynamic data) {
    final responseData = data as Map<String, dynamic>;
    final content = responseData['content'] as List;
    final text =
        content.isNotEmpty ? (content[0] as Map)['text'] as String : '';

    return ChatResponse(
      message: ChatMessage(
        role: ChatRole.assistant,
        content: text,
        timestamp: DateTime.now(),
      ),
      usage: responseData['usage'] != null
          ? ChatUsage(
              promptTokens:
                  (responseData['usage'] as Map)['input_tokens'] as int? ?? 0,
              completionTokens:
                  (responseData['usage'] as Map)['output_tokens'] as int? ?? 0,
              totalTokens:
                  ((responseData['usage'] as Map)['input_tokens'] as int? ??
                          0) +
                      ((responseData['usage'] as Map)['output_tokens']
                              as int? ??
                          0),
            )
          : null,
      finishReason: responseData['stop_reason'] as String?,
      rawResponse: responseData,
    );
  }

  ChatStreamChunk? _mapStreamChunk(dynamic data) {
    final chunkData = data as Map<String, dynamic>;
    final type = chunkData['type'];

    if (type == 'content_block_delta') {
      return ChatStreamChunk(
        content: (chunkData['delta'] as Map)['text'] as String?,
      );
    } else if (type == 'message_stop') {
      return const ChatStreamChunk(finishReason: 'stop');
    }

    return null;
  }
}