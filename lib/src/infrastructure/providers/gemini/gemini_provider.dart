import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_ai_chat_kit/src/core/network/dio_client.dart';
import 'package:flutter_ai_chat_kit/src/domain/models/ai_models.dart';
import 'package:flutter_ai_chat_kit/src/domain/providers/ai_provider.dart';

/// Implementation of [IAIProvider] for Google Gemini.
class GeminiProvider implements IAIProvider {
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
  final AIDioClient _client;
  final String _model;

  @override
  String get providerId => 'gemini';

  @override
  String get model => _model;

  @override
  Future<ChatResponse> sendMessage(ChatRequest request) async {
    final response = await _client.post<Map<String, dynamic>>(
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

    final stream = response.data!.stream.cast<List<int>>().transform(utf8.decoder).transform(const LineSplitter());

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
            {'text': m.content},
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
            {'text': request.systemPrompt},
          ],
        },
    };
  }

  ChatResponse _mapResponse(dynamic data) {
    final responseData = data as Map<String, dynamic>;
    final candidate = (responseData['candidates'] as List)[0] as Map;
    final content = candidate['content'] as Map;
    final text = (content['parts'] as List)[0]['text'] as String;

    return ChatResponse(
      message: ChatMessage(
        role: ChatRole.assistant,
        content: text,
        timestamp: DateTime.now(),
      ),
      usage: responseData['usageMetadata'] != null
          ? ChatUsage(
              promptTokens: (responseData['usageMetadata'] as Map)['promptTokenCount'] as int? ?? 0,
              completionTokens: (responseData['usageMetadata'] as Map)['candidatesTokenCount'] as int? ?? 0,
              totalTokens: (responseData['usageMetadata'] as Map)['totalTokenCount'] as int? ?? 0,
            )
          : null,
      finishReason: candidate['finishReason'] as String?,
      rawResponse: responseData,
    );
  }

  ChatStreamChunk _mapStreamChunk(dynamic data) {
    final chunkData = data as Map<String, dynamic>;
    final candidate = (chunkData['candidates'] as List)[0] as Map;
    final content = candidate['content'] as Map?;
    final parts = content != null ? content['parts'] as List : <Map<String, dynamic>>[];
    final text = parts.isNotEmpty ? (parts[0] as Map)['text'] as String? : null;

    return ChatStreamChunk(
      content: text,
      finishReason: candidate['finishReason'] as String?,
    );
  }
}