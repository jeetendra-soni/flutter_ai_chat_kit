import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import '../../../core/network/dio_client.dart';
import '../../../domain/models/ai_models.dart';
import '../../../domain/providers/ai_provider.dart';

/// Implementation of [IAIProvider] for OpenAI.
class OpenAIProvider implements IAIProvider {
  final AIDioClient _client;
  final String _model;

  @override
  String get providerId => 'openai';

  @override
  String get model => _model;

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

  @override
  Future<ChatResponse> sendMessage(ChatRequest request) async {
    final response = await _client.post(
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
              })
          .toList(),
      'temperature': request.parameters.temperature,
      'top_p': request.parameters.topP,
      'max_tokens': request.parameters.maxTokens,
      'stream': stream,
    };
  }

  ChatResponse _mapResponse(dynamic data) {
    final choice = data['choices'][0];
    final message = choice['message'];

    return ChatResponse(
      message: ChatMessage(
        role: ChatRole.values.byName(message['role']),
        content: message['content'],
        timestamp: DateTime.now(),
      ),
      usage: data['usage'] != null
          ? ChatUsage(
              promptTokens: data['usage']['prompt_tokens'],
              completionTokens: data['usage']['completion_tokens'],
              totalTokens: data['usage']['total_tokens'],
            )
          : null,
      finishReason: choice['finish_reason'],
      rawResponse: data,
    );
  }

  ChatStreamChunk _mapStreamChunk(dynamic data) {
    final choice = data['choices'][0];
    final delta = choice['delta'];

    return ChatStreamChunk(
      content: delta['content'],
      finishReason: choice['finish_reason'],
    );
  }
}