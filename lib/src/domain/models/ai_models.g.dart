// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatMessageImpl _$$ChatMessageImplFromJson(Map<String, dynamic> json) =>
    _$ChatMessageImpl(
      role: $enumDecode(_$ChatRoleEnumMap, json['role']),
      content: json['content'] as String,
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
      metadata: json['metadata'] as Map<String, dynamic>?,
      toolCalls: (json['toolCalls'] as List<dynamic>?)
          ?.map((e) => ToolCall.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChatMessageImplToJson(_$ChatMessageImpl instance) =>
    <String, dynamic>{
      'role': _$ChatRoleEnumMap[instance.role]!,
      'content': instance.content,
      'timestamp': instance.timestamp?.toIso8601String(),
      'metadata': instance.metadata,
      'toolCalls': instance.toolCalls,
    };

const _$ChatRoleEnumMap = {
  ChatRole.system: 'system',
  ChatRole.user: 'user',
  ChatRole.assistant: 'assistant',
  ChatRole.tool: 'tool',
};

_$ChatRequestImpl _$$ChatRequestImplFromJson(Map<String, dynamic> json) =>
    _$ChatRequestImpl(
      messages: (json['messages'] as List<dynamic>)
          .map((e) => ChatMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
      parameters: json['parameters'] == null
          ? const ChatParameters()
          : ChatParameters.fromJson(json['parameters'] as Map<String, dynamic>),
      stream: json['stream'] as bool? ?? false,
      systemPrompt: json['systemPrompt'] as String?,
      tools: (json['tools'] as List<dynamic>?)
          ?.map((e) => AITool.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChatRequestImplToJson(_$ChatRequestImpl instance) =>
    <String, dynamic>{
      'messages': instance.messages,
      'parameters': instance.parameters,
      'stream': instance.stream,
      'systemPrompt': instance.systemPrompt,
      'tools': instance.tools,
    };

_$ChatParametersImpl _$$ChatParametersImplFromJson(Map<String, dynamic> json) =>
    _$ChatParametersImpl(
      temperature: (json['temperature'] as num?)?.toDouble() ?? 0.7,
      topP: (json['topP'] as num?)?.toDouble() ?? 1.0,
      maxTokens: (json['maxTokens'] as num?)?.toInt(),
      frequencyPenalty: (json['frequencyPenalty'] as num?)?.toDouble() ?? 0.0,
      presencePenalty: (json['presencePenalty'] as num?)?.toDouble() ?? 0.0,
      seed: (json['seed'] as num?)?.toInt(),
      stop: (json['stop'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ChatParametersImplToJson(
        _$ChatParametersImpl instance) =>
    <String, dynamic>{
      'temperature': instance.temperature,
      'topP': instance.topP,
      'maxTokens': instance.maxTokens,
      'frequencyPenalty': instance.frequencyPenalty,
      'presencePenalty': instance.presencePenalty,
      'seed': instance.seed,
      'stop': instance.stop,
    };

_$ChatResponseImpl _$$ChatResponseImplFromJson(Map<String, dynamic> json) =>
    _$ChatResponseImpl(
      message: ChatMessage.fromJson(json['message'] as Map<String, dynamic>),
      usage: json['usage'] == null
          ? null
          : ChatUsage.fromJson(json['usage'] as Map<String, dynamic>),
      finishReason: json['finishReason'] as String?,
      rawResponse: json['rawResponse'],
    );

Map<String, dynamic> _$$ChatResponseImplToJson(_$ChatResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'usage': instance.usage,
      'finishReason': instance.finishReason,
      'rawResponse': instance.rawResponse,
    };

_$ChatStreamChunkImpl _$$ChatStreamChunkImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatStreamChunkImpl(
      content: json['content'] as String?,
      toolCallChunks: (json['toolCallChunks'] as List<dynamic>?)
          ?.map((e) => ToolCallChunk.fromJson(e as Map<String, dynamic>))
          .toList(),
      finishReason: json['finishReason'] as String?,
      usage: json['usage'] == null
          ? null
          : ChatUsage.fromJson(json['usage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChatStreamChunkImplToJson(
        _$ChatStreamChunkImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'toolCallChunks': instance.toolCallChunks,
      'finishReason': instance.finishReason,
      'usage': instance.usage,
    };

_$ChatUsageImpl _$$ChatUsageImplFromJson(Map<String, dynamic> json) =>
    _$ChatUsageImpl(
      promptTokens: (json['promptTokens'] as num?)?.toInt() ?? 0,
      completionTokens: (json['completionTokens'] as num?)?.toInt() ?? 0,
      totalTokens: (json['totalTokens'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ChatUsageImplToJson(_$ChatUsageImpl instance) =>
    <String, dynamic>{
      'promptTokens': instance.promptTokens,
      'completionTokens': instance.completionTokens,
      'totalTokens': instance.totalTokens,
    };

_$AIToolImpl _$$AIToolImplFromJson(Map<String, dynamic> json) => _$AIToolImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      parameters: json['parameters'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$AIToolImplToJson(_$AIToolImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'parameters': instance.parameters,
    };

_$ToolCallImpl _$$ToolCallImplFromJson(Map<String, dynamic> json) =>
    _$ToolCallImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      arguments: json['arguments'] as String,
    );

Map<String, dynamic> _$$ToolCallImplToJson(_$ToolCallImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'arguments': instance.arguments,
    };

_$ToolCallChunkImpl _$$ToolCallChunkImplFromJson(Map<String, dynamic> json) =>
    _$ToolCallChunkImpl(
      index: (json['index'] as num).toInt(),
      id: json['id'] as String?,
      name: json['name'] as String?,
      arguments: json['arguments'] as String?,
    );

Map<String, dynamic> _$$ToolCallChunkImplToJson(_$ToolCallChunkImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'id': instance.id,
      'name': instance.name,
      'arguments': instance.arguments,
    };
