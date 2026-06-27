import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_ai_chat_kit/src/core/network/dio_client.dart';
import 'package:flutter_ai_chat_kit/src/domain/models/ai_models.dart';
import 'package:flutter_ai_chat_kit/src/domain/providers/ai_provider.dart';

/// Implementation of [IAIProvider] for OpenAI.
class OpenAIProvider implements IAIProvider {

  OpenAIProvider({
    required String apiKey,
    String model = 'gpt-3.5-turbo',
    String? baseUrl,
  })  : _model = model,
        _client = AIDioClient(
          baseUrl: baseUrl ?? 'https://api.openai.com/v1',
          headers: {
            'Authorization': 'Bearer $apiKey',
            'Content-Type': 'application/json',
          },
        );
  final AIDioClient _client;
  final String _model;

  @override
  String get providerId => 'openai';

  @override
  String get model => _model;

  @override
  Future<ChatResponse> sendMessage(ChatRequest request) async {
    final response = await _client.post<Map<String, dynamic>>(
      '/chat/completions',
      data: _mapRequest(request),
    );

    return _mapResponse(response.data);
  }

  @override
  Stream<ChatStreamChunk> streamResponse(ChatRequest request) async* {
    final response = await _client.post<ResponseBody>(
      '/chat/completions',
      data: _mapRequest(request, stream: true),
      options: Options(responseType: ResponseType.stream),
    );

    final stream = response.data!.stream
        .cast<List<int>>()
        .transform(utf8.decoder)
        .transform(const LineSplitter());

    await for (final line in stream) {
      if (line.isEmpty || line == 'data: [DONE]') continue;

      if (line.startsWith('data: ')) {
        final jsonStr = line.substring(6);
        final data = jsonDecode(jsonStr);
        yield _mapStreamChunk(data);
      }
    }
  }

  @override
  void dispose() {
    // Client disposal logic if needed
  }

  Map<String, dynamic> _mapRequest(ChatRequest request, {bool stream = false}) {
    return {
      'model': _model,
      'messages': request.messages
          .map((m) => {
                'role': m.role.name,
                'content': m.content,
              },)
          .toList(),
      'temperature': request.parameters.temperature,
      'top_p': request.parameters.topP,
      'max_tokens': request.parameters.maxTokens,
      'stream': stream,
    };
  }

  ChatResponse _mapResponse(dynamic data) {
    final responseData = data as Map<String, dynamic>;
    final choice = (responseData['choices'] as List)[0] as Map;
    final message = choice['message'] as Map;

    return ChatResponse(
      message: ChatMessage(
        role: ChatRole.values.byName(message['role'] as String),
        content: message['content'] as String,
        timestamp: DateTime.now(),
      ),
      usage: responseData['usage'] != null
          ? ChatUsage(
              promptTokens: (responseData['usage'] as Map)['prompt_tokens'] as int? ?? 0,
              completionTokens:
                  (responseData['usage'] as Map)['completion_tokens'] as int? ?? 0,
              totalTokens: (responseData['usage'] as Map)['total_tokens'] as int? ?? 0,
            )
          : null,
      finishReason: choice['finish_reason'] as String?,
      rawResponse: responseData,
    );
  }

  ChatStreamChunk _mapStreamChunk(dynamic data) {
    final chunkData = data as Map<String, dynamic>;
    final choice = (chunkData['choices'] as List)[0] as Map;
    final delta = choice['delta'] as Map;

    return ChatStreamChunk(
      content: delta['content'] as String?,
      finishReason: choice['finish_reason'] as String?,
    );
  }
}
