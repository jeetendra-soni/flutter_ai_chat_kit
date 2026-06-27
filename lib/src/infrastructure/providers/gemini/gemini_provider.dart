import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import '../../../core/network/dio_client.dart';
import '../../../domain/models/ai_models.dart';
import '../../../domain/providers/ai_provider.dart';

/// Implementation of [IAIProvider] for Google Gemini.
class GeminiProvider implements IAIProvider {
  final AIDioClient _client;
  final String _model;

  @override
  String get providerId => 'gemini';

  @override
  String get model => _model;

  GeminiProvider({
    required String apiKey,
    String model = 'gemini-1.5-flash',
    String? baseUrl,
  })  : _model = model,
        _client = AIDioClient(
          baseUrl: baseUrl ?? 'https://generativelanguage.googleapis.com/v1beta',
          headers: {
            'Content-Type': 'application/json',
          },
          queryParameters: {
            'key': apiKey,
          },
        );

  @override
  Future<ChatResponse> sendMessage(ChatRequest request) async {
    final response = await _client.post(
      '/models/$_model:generateContent',
      data: _mapRequest(request),
    );

    return _mapResponse(response.data);
  }

  @override
  Stream<ChatStreamChunk> streamResponse(ChatRequest request) async* {
    final response = await _client.post<ResponseBody>(
      '/models/$_model:streamGenerateContent',
      data: _mapRequest(request),
      options: Options(responseType: ResponseType.stream),
      queryParameters: {
        'alt': 'sse',
      },
    );

    final stream = response.data!.stream
        .cast<List<int>>()
        .transform(utf8.decoder)
        .transform(const LineSplitter());

    await for (final line in stream) {
      if (line.isEmpty || !line.startsWith('data: ')) continue;

      final jsonStr = line.substring(6);
      final data = jsonDecode(jsonStr);
      yield _mapStreamChunk(data);
    }
  }

  @override
  void dispose() {}

  Map<String, dynamic> _mapRequest(ChatRequest request) {
    return {
      'contents': request.messages.map((m) {
        return {
          'role': m.role == ChatRole.user ? 'user' : 'model',
          'parts': [
            {'text': m.content}
          ],
        };
      }).toList(),
      'generationConfig': {
        'temperature': request.parameters.temperature,
        'topP': request.parameters.topP,
        'maxOutputTokens': request.parameters.maxTokens,
        'stopSequences': request.parameters.stop,
      },
      if (request.systemPrompt != null)
        'systemInstruction': {
          'parts': [
            {'text': request.systemPrompt}
          ]
        },
    };
  }

  ChatResponse _mapResponse(dynamic data) {
    final candidate = data['candidates'][0];
    final content = candidate['content'];
    final text = content['parts'][0]['text'];

    return ChatResponse(
      message: ChatMessage(
        role: ChatRole.assistant,
        content: text,
        timestamp: DateTime.now(),
      ),
      usage: data['usageMetadata'] != null
          ? ChatUsage(
              promptTokens: data['usageMetadata']['promptTokenCount'] ?? 0,
              completionTokens: data['usageMetadata']['candidatesTokenCount'] ?? 0,
              totalTokens: data['usageMetadata']['totalTokenCount'] ?? 0,
            )
          : null,
      finishReason: candidate['finishReason'],
      rawResponse: data,
    );
  }

  ChatStreamChunk _mapStreamChunk(dynamic data) {
    final candidate = data['candidates'][0];
    final content = candidate['content'];
    final parts = content != null ? content['parts'] as List : [];
    final text = parts.isNotEmpty ? parts[0]['text'] as String? : null;

    return ChatStreamChunk(
      content: text,
      finishReason: candidate['finishReason'],
    );
  }
}