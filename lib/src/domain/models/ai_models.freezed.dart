// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatMessage _$ChatMessageFromJson(Map<String, dynamic> json) {
  return _ChatMessage.fromJson(json);
}

/// @nodoc
mixin _$ChatMessage {
  /// The role of the message sender.
  ChatRole get role => throw _privateConstructorUsedError;

  /// The content of the message.
  String get content => throw _privateConstructorUsedError;

  /// Optional timestamp for the message.
  DateTime? get timestamp => throw _privateConstructorUsedError;

  /// Optional metadata associated with the message.
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  /// Optional tool calls if this is an assistant message.
  List<ToolCall>? get toolCalls => throw _privateConstructorUsedError;

  /// Serializes this ChatMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatMessageCopyWith<ChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageCopyWith<$Res> {
  factory $ChatMessageCopyWith(
          ChatMessage value, $Res Function(ChatMessage) then) =
      _$ChatMessageCopyWithImpl<$Res, ChatMessage>;
  @useResult
  $Res call(
      {ChatRole role,
      String content,
      DateTime? timestamp,
      Map<String, dynamic>? metadata,
      List<ToolCall>? toolCalls});
}

/// @nodoc
class _$ChatMessageCopyWithImpl<$Res, $Val extends ChatMessage>
    implements $ChatMessageCopyWith<$Res> {
  _$ChatMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? content = null,
    Object? timestamp = freezed,
    Object? metadata = freezed,
    Object? toolCalls = freezed,
  }) {
    return _then(_value.copyWith(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as ChatRole,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      toolCalls: freezed == toolCalls
          ? _value.toolCalls
          : toolCalls // ignore: cast_nullable_to_non_nullable
              as List<ToolCall>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatMessageImplCopyWith<$Res>
    implements $ChatMessageCopyWith<$Res> {
  factory _$$ChatMessageImplCopyWith(
          _$ChatMessageImpl value, $Res Function(_$ChatMessageImpl) then) =
      __$$ChatMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ChatRole role,
      String content,
      DateTime? timestamp,
      Map<String, dynamic>? metadata,
      List<ToolCall>? toolCalls});
}

/// @nodoc
class __$$ChatMessageImplCopyWithImpl<$Res>
    extends _$ChatMessageCopyWithImpl<$Res, _$ChatMessageImpl>
    implements _$$ChatMessageImplCopyWith<$Res> {
  __$$ChatMessageImplCopyWithImpl(
      _$ChatMessageImpl _value, $Res Function(_$ChatMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? content = null,
    Object? timestamp = freezed,
    Object? metadata = freezed,
    Object? toolCalls = freezed,
  }) {
    return _then(_$ChatMessageImpl(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as ChatRole,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      toolCalls: freezed == toolCalls
          ? _value._toolCalls
          : toolCalls // ignore: cast_nullable_to_non_nullable
              as List<ToolCall>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMessageImpl implements _ChatMessage {
  const _$ChatMessageImpl(
      {required this.role,
      required this.content,
      this.timestamp,
      final Map<String, dynamic>? metadata,
      final List<ToolCall>? toolCalls})
      : _metadata = metadata,
        _toolCalls = toolCalls;

  factory _$ChatMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMessageImplFromJson(json);

  /// The role of the message sender.
  @override
  final ChatRole role;

  /// The content of the message.
  @override
  final String content;

  /// Optional timestamp for the message.
  @override
  final DateTime? timestamp;

  /// Optional metadata associated with the message.
  final Map<String, dynamic>? _metadata;

  /// Optional metadata associated with the message.
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Optional tool calls if this is an assistant message.
  final List<ToolCall>? _toolCalls;

  /// Optional tool calls if this is an assistant message.
  @override
  List<ToolCall>? get toolCalls {
    final value = _toolCalls;
    if (value == null) return null;
    if (_toolCalls is EqualUnmodifiableListView) return _toolCalls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ChatMessage(role: $role, content: $content, timestamp: $timestamp, metadata: $metadata, toolCalls: $toolCalls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            const DeepCollectionEquality()
                .equals(other._toolCalls, _toolCalls));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      role,
      content,
      timestamp,
      const DeepCollectionEquality().hash(_metadata),
      const DeepCollectionEquality().hash(_toolCalls));

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageImplCopyWith<_$ChatMessageImpl> get copyWith =>
      __$$ChatMessageImplCopyWithImpl<_$ChatMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMessageImplToJson(
      this,
    );
  }
}

abstract class _ChatMessage implements ChatMessage {
  const factory _ChatMessage(
      {required final ChatRole role,
      required final String content,
      final DateTime? timestamp,
      final Map<String, dynamic>? metadata,
      final List<ToolCall>? toolCalls}) = _$ChatMessageImpl;

  factory _ChatMessage.fromJson(Map<String, dynamic> json) =
      _$ChatMessageImpl.fromJson;

  /// The role of the message sender.
  @override
  ChatRole get role;

  /// The content of the message.
  @override
  String get content;

  /// Optional timestamp for the message.
  @override
  DateTime? get timestamp;

  /// Optional metadata associated with the message.
  @override
  Map<String, dynamic>? get metadata;

  /// Optional tool calls if this is an assistant message.
  @override
  List<ToolCall>? get toolCalls;

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMessageImplCopyWith<_$ChatMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatRequest _$ChatRequestFromJson(Map<String, dynamic> json) {
  return _ChatRequest.fromJson(json);
}

/// @nodoc
mixin _$ChatRequest {
  /// List of messages in the conversation.
  List<ChatMessage> get messages => throw _privateConstructorUsedError;

  /// Model-specific parameters (temperature, top_p, etc.).
  ChatParameters get parameters => throw _privateConstructorUsedError;

  /// Whether to stream the response.
  bool get stream => throw _privateConstructorUsedError;

  /// Optional system prompt to override the default one.
  String? get systemPrompt => throw _privateConstructorUsedError;

  /// Optional tools/functions available to the model.
  List<AITool>? get tools => throw _privateConstructorUsedError;

  /// Serializes this ChatRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatRequestCopyWith<ChatRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRequestCopyWith<$Res> {
  factory $ChatRequestCopyWith(
          ChatRequest value, $Res Function(ChatRequest) then) =
      _$ChatRequestCopyWithImpl<$Res, ChatRequest>;
  @useResult
  $Res call(
      {List<ChatMessage> messages,
      ChatParameters parameters,
      bool stream,
      String? systemPrompt,
      List<AITool>? tools});

  $ChatParametersCopyWith<$Res> get parameters;
}

/// @nodoc
class _$ChatRequestCopyWithImpl<$Res, $Val extends ChatRequest>
    implements $ChatRequestCopyWith<$Res> {
  _$ChatRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? parameters = null,
    Object? stream = null,
    Object? systemPrompt = freezed,
    Object? tools = freezed,
  }) {
    return _then(_value.copyWith(
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as ChatParameters,
      stream: null == stream
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as bool,
      systemPrompt: freezed == systemPrompt
          ? _value.systemPrompt
          : systemPrompt // ignore: cast_nullable_to_non_nullable
              as String?,
      tools: freezed == tools
          ? _value.tools
          : tools // ignore: cast_nullable_to_non_nullable
              as List<AITool>?,
    ) as $Val);
  }

  /// Create a copy of ChatRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatParametersCopyWith<$Res> get parameters {
    return $ChatParametersCopyWith<$Res>(_value.parameters, (value) {
      return _then(_value.copyWith(parameters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatRequestImplCopyWith<$Res>
    implements $ChatRequestCopyWith<$Res> {
  factory _$$ChatRequestImplCopyWith(
          _$ChatRequestImpl value, $Res Function(_$ChatRequestImpl) then) =
      __$$ChatRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ChatMessage> messages,
      ChatParameters parameters,
      bool stream,
      String? systemPrompt,
      List<AITool>? tools});

  @override
  $ChatParametersCopyWith<$Res> get parameters;
}

/// @nodoc
class __$$ChatRequestImplCopyWithImpl<$Res>
    extends _$ChatRequestCopyWithImpl<$Res, _$ChatRequestImpl>
    implements _$$ChatRequestImplCopyWith<$Res> {
  __$$ChatRequestImplCopyWithImpl(
      _$ChatRequestImpl _value, $Res Function(_$ChatRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? parameters = null,
    Object? stream = null,
    Object? systemPrompt = freezed,
    Object? tools = freezed,
  }) {
    return _then(_$ChatRequestImpl(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as ChatParameters,
      stream: null == stream
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as bool,
      systemPrompt: freezed == systemPrompt
          ? _value.systemPrompt
          : systemPrompt // ignore: cast_nullable_to_non_nullable
              as String?,
      tools: freezed == tools
          ? _value._tools
          : tools // ignore: cast_nullable_to_non_nullable
              as List<AITool>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatRequestImpl implements _ChatRequest {
  const _$ChatRequestImpl(
      {required final List<ChatMessage> messages,
      this.parameters = const ChatParameters(),
      this.stream = false,
      this.systemPrompt,
      final List<AITool>? tools})
      : _messages = messages,
        _tools = tools;

  factory _$ChatRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatRequestImplFromJson(json);

  /// List of messages in the conversation.
  final List<ChatMessage> _messages;

  /// List of messages in the conversation.
  @override
  List<ChatMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  /// Model-specific parameters (temperature, top_p, etc.).
  @override
  @JsonKey()
  final ChatParameters parameters;

  /// Whether to stream the response.
  @override
  @JsonKey()
  final bool stream;

  /// Optional system prompt to override the default one.
  @override
  final String? systemPrompt;

  /// Optional tools/functions available to the model.
  final List<AITool>? _tools;

  /// Optional tools/functions available to the model.
  @override
  List<AITool>? get tools {
    final value = _tools;
    if (value == null) return null;
    if (_tools is EqualUnmodifiableListView) return _tools;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ChatRequest(messages: $messages, parameters: $parameters, stream: $stream, systemPrompt: $systemPrompt, tools: $tools)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatRequestImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.parameters, parameters) ||
                other.parameters == parameters) &&
            (identical(other.stream, stream) || other.stream == stream) &&
            (identical(other.systemPrompt, systemPrompt) ||
                other.systemPrompt == systemPrompt) &&
            const DeepCollectionEquality().equals(other._tools, _tools));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_messages),
      parameters,
      stream,
      systemPrompt,
      const DeepCollectionEquality().hash(_tools));

  /// Create a copy of ChatRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatRequestImplCopyWith<_$ChatRequestImpl> get copyWith =>
      __$$ChatRequestImplCopyWithImpl<_$ChatRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatRequestImplToJson(
      this,
    );
  }
}

abstract class _ChatRequest implements ChatRequest {
  const factory _ChatRequest(
      {required final List<ChatMessage> messages,
      final ChatParameters parameters,
      final bool stream,
      final String? systemPrompt,
      final List<AITool>? tools}) = _$ChatRequestImpl;

  factory _ChatRequest.fromJson(Map<String, dynamic> json) =
      _$ChatRequestImpl.fromJson;

  /// List of messages in the conversation.
  @override
  List<ChatMessage> get messages;

  /// Model-specific parameters (temperature, top_p, etc.).
  @override
  ChatParameters get parameters;

  /// Whether to stream the response.
  @override
  bool get stream;

  /// Optional system prompt to override the default one.
  @override
  String? get systemPrompt;

  /// Optional tools/functions available to the model.
  @override
  List<AITool>? get tools;

  /// Create a copy of ChatRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatRequestImplCopyWith<_$ChatRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatParameters _$ChatParametersFromJson(Map<String, dynamic> json) {
  return _ChatParameters.fromJson(json);
}

/// @nodoc
mixin _$ChatParameters {
  /// Temperature for randomness (0.0 to 2.0).
  double get temperature => throw _privateConstructorUsedError;

  /// Top P for nucleus sampling (0.0 to 1.0).
  double get topP => throw _privateConstructorUsedError;

  /// Maximum number of tokens to generate.
  int? get maxTokens => throw _privateConstructorUsedError;

  /// Penalize frequent tokens.
  double get frequencyPenalty => throw _privateConstructorUsedError;

  /// Penalize already present tokens.
  double get presencePenalty => throw _privateConstructorUsedError;

  /// Seed for deterministic output.
  int? get seed => throw _privateConstructorUsedError;

  /// Stop sequences to end generation.
  List<String>? get stop => throw _privateConstructorUsedError;

  /// Serializes this ChatParameters to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatParametersCopyWith<ChatParameters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatParametersCopyWith<$Res> {
  factory $ChatParametersCopyWith(
          ChatParameters value, $Res Function(ChatParameters) then) =
      _$ChatParametersCopyWithImpl<$Res, ChatParameters>;
  @useResult
  $Res call(
      {double temperature,
      double topP,
      int? maxTokens,
      double frequencyPenalty,
      double presencePenalty,
      int? seed,
      List<String>? stop});
}

/// @nodoc
class _$ChatParametersCopyWithImpl<$Res, $Val extends ChatParameters>
    implements $ChatParametersCopyWith<$Res> {
  _$ChatParametersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = null,
    Object? topP = null,
    Object? maxTokens = freezed,
    Object? frequencyPenalty = null,
    Object? presencePenalty = null,
    Object? seed = freezed,
    Object? stop = freezed,
  }) {
    return _then(_value.copyWith(
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      topP: null == topP
          ? _value.topP
          : topP // ignore: cast_nullable_to_non_nullable
              as double,
      maxTokens: freezed == maxTokens
          ? _value.maxTokens
          : maxTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      frequencyPenalty: null == frequencyPenalty
          ? _value.frequencyPenalty
          : frequencyPenalty // ignore: cast_nullable_to_non_nullable
              as double,
      presencePenalty: null == presencePenalty
          ? _value.presencePenalty
          : presencePenalty // ignore: cast_nullable_to_non_nullable
              as double,
      seed: freezed == seed
          ? _value.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as int?,
      stop: freezed == stop
          ? _value.stop
          : stop // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatParametersImplCopyWith<$Res>
    implements $ChatParametersCopyWith<$Res> {
  factory _$$ChatParametersImplCopyWith(_$ChatParametersImpl value,
          $Res Function(_$ChatParametersImpl) then) =
      __$$ChatParametersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double temperature,
      double topP,
      int? maxTokens,
      double frequencyPenalty,
      double presencePenalty,
      int? seed,
      List<String>? stop});
}

/// @nodoc
class __$$ChatParametersImplCopyWithImpl<$Res>
    extends _$ChatParametersCopyWithImpl<$Res, _$ChatParametersImpl>
    implements _$$ChatParametersImplCopyWith<$Res> {
  __$$ChatParametersImplCopyWithImpl(
      _$ChatParametersImpl _value, $Res Function(_$ChatParametersImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = null,
    Object? topP = null,
    Object? maxTokens = freezed,
    Object? frequencyPenalty = null,
    Object? presencePenalty = null,
    Object? seed = freezed,
    Object? stop = freezed,
  }) {
    return _then(_$ChatParametersImpl(
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      topP: null == topP
          ? _value.topP
          : topP // ignore: cast_nullable_to_non_nullable
              as double,
      maxTokens: freezed == maxTokens
          ? _value.maxTokens
          : maxTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      frequencyPenalty: null == frequencyPenalty
          ? _value.frequencyPenalty
          : frequencyPenalty // ignore: cast_nullable_to_non_nullable
              as double,
      presencePenalty: null == presencePenalty
          ? _value.presencePenalty
          : presencePenalty // ignore: cast_nullable_to_non_nullable
              as double,
      seed: freezed == seed
          ? _value.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as int?,
      stop: freezed == stop
          ? _value._stop
          : stop // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatParametersImpl implements _ChatParameters {
  const _$ChatParametersImpl(
      {this.temperature = 0.7,
      this.topP = 1.0,
      this.maxTokens,
      this.frequencyPenalty = 0.0,
      this.presencePenalty = 0.0,
      this.seed,
      final List<String>? stop})
      : _stop = stop;

  factory _$ChatParametersImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatParametersImplFromJson(json);

  /// Temperature for randomness (0.0 to 2.0).
  @override
  @JsonKey()
  final double temperature;

  /// Top P for nucleus sampling (0.0 to 1.0).
  @override
  @JsonKey()
  final double topP;

  /// Maximum number of tokens to generate.
  @override
  final int? maxTokens;

  /// Penalize frequent tokens.
  @override
  @JsonKey()
  final double frequencyPenalty;

  /// Penalize already present tokens.
  @override
  @JsonKey()
  final double presencePenalty;

  /// Seed for deterministic output.
  @override
  final int? seed;

  /// Stop sequences to end generation.
  final List<String>? _stop;

  /// Stop sequences to end generation.
  @override
  List<String>? get stop {
    final value = _stop;
    if (value == null) return null;
    if (_stop is EqualUnmodifiableListView) return _stop;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ChatParameters(temperature: $temperature, topP: $topP, maxTokens: $maxTokens, frequencyPenalty: $frequencyPenalty, presencePenalty: $presencePenalty, seed: $seed, stop: $stop)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatParametersImpl &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.topP, topP) || other.topP == topP) &&
            (identical(other.maxTokens, maxTokens) ||
                other.maxTokens == maxTokens) &&
            (identical(other.frequencyPenalty, frequencyPenalty) ||
                other.frequencyPenalty == frequencyPenalty) &&
            (identical(other.presencePenalty, presencePenalty) ||
                other.presencePenalty == presencePenalty) &&
            (identical(other.seed, seed) || other.seed == seed) &&
            const DeepCollectionEquality().equals(other._stop, _stop));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      temperature,
      topP,
      maxTokens,
      frequencyPenalty,
      presencePenalty,
      seed,
      const DeepCollectionEquality().hash(_stop));

  /// Create a copy of ChatParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatParametersImplCopyWith<_$ChatParametersImpl> get copyWith =>
      __$$ChatParametersImplCopyWithImpl<_$ChatParametersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatParametersImplToJson(
      this,
    );
  }
}

abstract class _ChatParameters implements ChatParameters {
  const factory _ChatParameters(
      {final double temperature,
      final double topP,
      final int? maxTokens,
      final double frequencyPenalty,
      final double presencePenalty,
      final int? seed,
      final List<String>? stop}) = _$ChatParametersImpl;

  factory _ChatParameters.fromJson(Map<String, dynamic> json) =
      _$ChatParametersImpl.fromJson;

  /// Temperature for randomness (0.0 to 2.0).
  @override
  double get temperature;

  /// Top P for nucleus sampling (0.0 to 1.0).
  @override
  double get topP;

  /// Maximum number of tokens to generate.
  @override
  int? get maxTokens;

  /// Penalize frequent tokens.
  @override
  double get frequencyPenalty;

  /// Penalize already present tokens.
  @override
  double get presencePenalty;

  /// Seed for deterministic output.
  @override
  int? get seed;

  /// Stop sequences to end generation.
  @override
  List<String>? get stop;

  /// Create a copy of ChatParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatParametersImplCopyWith<_$ChatParametersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatResponse _$ChatResponseFromJson(Map<String, dynamic> json) {
  return _ChatResponse.fromJson(json);
}

/// @nodoc
mixin _$ChatResponse {
  /// The generated message.
  ChatMessage get message => throw _privateConstructorUsedError;

  /// Usage statistics for the request.
  ChatUsage? get usage => throw _privateConstructorUsedError;

  /// Finish reason (e.g., 'stop', 'length').
  String? get finishReason => throw _privateConstructorUsedError;

  /// The raw response from the provider.
// @JsonKey(includeFromJson: false, includeToJson: false)
  Object? get rawResponse => throw _privateConstructorUsedError;

  /// Serializes this ChatResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatResponseCopyWith<ChatResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatResponseCopyWith<$Res> {
  factory $ChatResponseCopyWith(
          ChatResponse value, $Res Function(ChatResponse) then) =
      _$ChatResponseCopyWithImpl<$Res, ChatResponse>;
  @useResult
  $Res call(
      {ChatMessage message,
      ChatUsage? usage,
      String? finishReason,
      Object? rawResponse});

  $ChatMessageCopyWith<$Res> get message;
  $ChatUsageCopyWith<$Res>? get usage;
}

/// @nodoc
class _$ChatResponseCopyWithImpl<$Res, $Val extends ChatResponse>
    implements $ChatResponseCopyWith<$Res> {
  _$ChatResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? usage = freezed,
    Object? finishReason = freezed,
    Object? rawResponse = freezed,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessage,
      usage: freezed == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as ChatUsage?,
      finishReason: freezed == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as String?,
      rawResponse: freezed == rawResponse ? _value.rawResponse : rawResponse,
    ) as $Val);
  }

  /// Create a copy of ChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatMessageCopyWith<$Res> get message {
    return $ChatMessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }

  /// Create a copy of ChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatUsageCopyWith<$Res>? get usage {
    if (_value.usage == null) {
      return null;
    }

    return $ChatUsageCopyWith<$Res>(_value.usage!, (value) {
      return _then(_value.copyWith(usage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatResponseImplCopyWith<$Res>
    implements $ChatResponseCopyWith<$Res> {
  factory _$$ChatResponseImplCopyWith(
          _$ChatResponseImpl value, $Res Function(_$ChatResponseImpl) then) =
      __$$ChatResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ChatMessage message,
      ChatUsage? usage,
      String? finishReason,
      Object? rawResponse});

  @override
  $ChatMessageCopyWith<$Res> get message;
  @override
  $ChatUsageCopyWith<$Res>? get usage;
}

/// @nodoc
class __$$ChatResponseImplCopyWithImpl<$Res>
    extends _$ChatResponseCopyWithImpl<$Res, _$ChatResponseImpl>
    implements _$$ChatResponseImplCopyWith<$Res> {
  __$$ChatResponseImplCopyWithImpl(
      _$ChatResponseImpl _value, $Res Function(_$ChatResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? usage = freezed,
    Object? finishReason = freezed,
    Object? rawResponse = freezed,
  }) {
    return _then(_$ChatResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessage,
      usage: freezed == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as ChatUsage?,
      finishReason: freezed == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as String?,
      rawResponse: freezed == rawResponse ? _value.rawResponse : rawResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatResponseImpl implements _ChatResponse {
  const _$ChatResponseImpl(
      {required this.message, this.usage, this.finishReason, this.rawResponse});

  factory _$ChatResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatResponseImplFromJson(json);

  /// The generated message.
  @override
  final ChatMessage message;

  /// Usage statistics for the request.
  @override
  final ChatUsage? usage;

  /// Finish reason (e.g., 'stop', 'length').
  @override
  final String? finishReason;

  /// The raw response from the provider.
// @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  final Object? rawResponse;

  @override
  String toString() {
    return 'ChatResponse(message: $message, usage: $usage, finishReason: $finishReason, rawResponse: $rawResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.usage, usage) || other.usage == usage) &&
            (identical(other.finishReason, finishReason) ||
                other.finishReason == finishReason) &&
            const DeepCollectionEquality()
                .equals(other.rawResponse, rawResponse));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, usage, finishReason,
      const DeepCollectionEquality().hash(rawResponse));

  /// Create a copy of ChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatResponseImplCopyWith<_$ChatResponseImpl> get copyWith =>
      __$$ChatResponseImplCopyWithImpl<_$ChatResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatResponseImplToJson(
      this,
    );
  }
}

abstract class _ChatResponse implements ChatResponse {
  const factory _ChatResponse(
      {required final ChatMessage message,
      final ChatUsage? usage,
      final String? finishReason,
      final Object? rawResponse}) = _$ChatResponseImpl;

  factory _ChatResponse.fromJson(Map<String, dynamic> json) =
      _$ChatResponseImpl.fromJson;

  /// The generated message.
  @override
  ChatMessage get message;

  /// Usage statistics for the request.
  @override
  ChatUsage? get usage;

  /// Finish reason (e.g., 'stop', 'length').
  @override
  String? get finishReason;

  /// The raw response from the provider.
// @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  Object? get rawResponse;

  /// Create a copy of ChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatResponseImplCopyWith<_$ChatResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatStreamChunk _$ChatStreamChunkFromJson(Map<String, dynamic> json) {
  return _ChatStreamChunk.fromJson(json);
}

/// @nodoc
mixin _$ChatStreamChunk {
  /// The incremental content chunk.
  String? get content => throw _privateConstructorUsedError;

  /// Incremental tool call chunks.
  List<ToolCallChunk>? get toolCallChunks => throw _privateConstructorUsedError;

  /// Finish reason if the stream ended.
  String? get finishReason => throw _privateConstructorUsedError;

  /// Usage if provided in the final chunk.
  ChatUsage? get usage => throw _privateConstructorUsedError;

  /// Serializes this ChatStreamChunk to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatStreamChunk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatStreamChunkCopyWith<ChatStreamChunk> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStreamChunkCopyWith<$Res> {
  factory $ChatStreamChunkCopyWith(
          ChatStreamChunk value, $Res Function(ChatStreamChunk) then) =
      _$ChatStreamChunkCopyWithImpl<$Res, ChatStreamChunk>;
  @useResult
  $Res call(
      {String? content,
      List<ToolCallChunk>? toolCallChunks,
      String? finishReason,
      ChatUsage? usage});

  $ChatUsageCopyWith<$Res>? get usage;
}

/// @nodoc
class _$ChatStreamChunkCopyWithImpl<$Res, $Val extends ChatStreamChunk>
    implements $ChatStreamChunkCopyWith<$Res> {
  _$ChatStreamChunkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatStreamChunk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
    Object? toolCallChunks = freezed,
    Object? finishReason = freezed,
    Object? usage = freezed,
  }) {
    return _then(_value.copyWith(
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      toolCallChunks: freezed == toolCallChunks
          ? _value.toolCallChunks
          : toolCallChunks // ignore: cast_nullable_to_non_nullable
              as List<ToolCallChunk>?,
      finishReason: freezed == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as String?,
      usage: freezed == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as ChatUsage?,
    ) as $Val);
  }

  /// Create a copy of ChatStreamChunk
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatUsageCopyWith<$Res>? get usage {
    if (_value.usage == null) {
      return null;
    }

    return $ChatUsageCopyWith<$Res>(_value.usage!, (value) {
      return _then(_value.copyWith(usage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatStreamChunkImplCopyWith<$Res>
    implements $ChatStreamChunkCopyWith<$Res> {
  factory _$$ChatStreamChunkImplCopyWith(_$ChatStreamChunkImpl value,
          $Res Function(_$ChatStreamChunkImpl) then) =
      __$$ChatStreamChunkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? content,
      List<ToolCallChunk>? toolCallChunks,
      String? finishReason,
      ChatUsage? usage});

  @override
  $ChatUsageCopyWith<$Res>? get usage;
}

/// @nodoc
class __$$ChatStreamChunkImplCopyWithImpl<$Res>
    extends _$ChatStreamChunkCopyWithImpl<$Res, _$ChatStreamChunkImpl>
    implements _$$ChatStreamChunkImplCopyWith<$Res> {
  __$$ChatStreamChunkImplCopyWithImpl(
      _$ChatStreamChunkImpl _value, $Res Function(_$ChatStreamChunkImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatStreamChunk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
    Object? toolCallChunks = freezed,
    Object? finishReason = freezed,
    Object? usage = freezed,
  }) {
    return _then(_$ChatStreamChunkImpl(
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      toolCallChunks: freezed == toolCallChunks
          ? _value._toolCallChunks
          : toolCallChunks // ignore: cast_nullable_to_non_nullable
              as List<ToolCallChunk>?,
      finishReason: freezed == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as String?,
      usage: freezed == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as ChatUsage?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatStreamChunkImpl implements _ChatStreamChunk {
  const _$ChatStreamChunkImpl(
      {this.content,
      final List<ToolCallChunk>? toolCallChunks,
      this.finishReason,
      this.usage})
      : _toolCallChunks = toolCallChunks;

  factory _$ChatStreamChunkImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatStreamChunkImplFromJson(json);

  /// The incremental content chunk.
  @override
  final String? content;

  /// Incremental tool call chunks.
  final List<ToolCallChunk>? _toolCallChunks;

  /// Incremental tool call chunks.
  @override
  List<ToolCallChunk>? get toolCallChunks {
    final value = _toolCallChunks;
    if (value == null) return null;
    if (_toolCallChunks is EqualUnmodifiableListView) return _toolCallChunks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Finish reason if the stream ended.
  @override
  final String? finishReason;

  /// Usage if provided in the final chunk.
  @override
  final ChatUsage? usage;

  @override
  String toString() {
    return 'ChatStreamChunk(content: $content, toolCallChunks: $toolCallChunks, finishReason: $finishReason, usage: $usage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStreamChunkImpl &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality()
                .equals(other._toolCallChunks, _toolCallChunks) &&
            (identical(other.finishReason, finishReason) ||
                other.finishReason == finishReason) &&
            (identical(other.usage, usage) || other.usage == usage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      content,
      const DeepCollectionEquality().hash(_toolCallChunks),
      finishReason,
      usage);

  /// Create a copy of ChatStreamChunk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStreamChunkImplCopyWith<_$ChatStreamChunkImpl> get copyWith =>
      __$$ChatStreamChunkImplCopyWithImpl<_$ChatStreamChunkImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatStreamChunkImplToJson(
      this,
    );
  }
}

abstract class _ChatStreamChunk implements ChatStreamChunk {
  const factory _ChatStreamChunk(
      {final String? content,
      final List<ToolCallChunk>? toolCallChunks,
      final String? finishReason,
      final ChatUsage? usage}) = _$ChatStreamChunkImpl;

  factory _ChatStreamChunk.fromJson(Map<String, dynamic> json) =
      _$ChatStreamChunkImpl.fromJson;

  /// The incremental content chunk.
  @override
  String? get content;

  /// Incremental tool call chunks.
  @override
  List<ToolCallChunk>? get toolCallChunks;

  /// Finish reason if the stream ended.
  @override
  String? get finishReason;

  /// Usage if provided in the final chunk.
  @override
  ChatUsage? get usage;

  /// Create a copy of ChatStreamChunk
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatStreamChunkImplCopyWith<_$ChatStreamChunkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatUsage _$ChatUsageFromJson(Map<String, dynamic> json) {
  return _ChatUsage.fromJson(json);
}

/// @nodoc
mixin _$ChatUsage {
  int get promptTokens => throw _privateConstructorUsedError;
  int get completionTokens => throw _privateConstructorUsedError;
  int get totalTokens => throw _privateConstructorUsedError;

  /// Serializes this ChatUsage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatUsage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatUsageCopyWith<ChatUsage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatUsageCopyWith<$Res> {
  factory $ChatUsageCopyWith(ChatUsage value, $Res Function(ChatUsage) then) =
      _$ChatUsageCopyWithImpl<$Res, ChatUsage>;
  @useResult
  $Res call({int promptTokens, int completionTokens, int totalTokens});
}

/// @nodoc
class _$ChatUsageCopyWithImpl<$Res, $Val extends ChatUsage>
    implements $ChatUsageCopyWith<$Res> {
  _$ChatUsageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatUsage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promptTokens = null,
    Object? completionTokens = null,
    Object? totalTokens = null,
  }) {
    return _then(_value.copyWith(
      promptTokens: null == promptTokens
          ? _value.promptTokens
          : promptTokens // ignore: cast_nullable_to_non_nullable
              as int,
      completionTokens: null == completionTokens
          ? _value.completionTokens
          : completionTokens // ignore: cast_nullable_to_non_nullable
              as int,
      totalTokens: null == totalTokens
          ? _value.totalTokens
          : totalTokens // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatUsageImplCopyWith<$Res>
    implements $ChatUsageCopyWith<$Res> {
  factory _$$ChatUsageImplCopyWith(
          _$ChatUsageImpl value, $Res Function(_$ChatUsageImpl) then) =
      __$$ChatUsageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int promptTokens, int completionTokens, int totalTokens});
}

/// @nodoc
class __$$ChatUsageImplCopyWithImpl<$Res>
    extends _$ChatUsageCopyWithImpl<$Res, _$ChatUsageImpl>
    implements _$$ChatUsageImplCopyWith<$Res> {
  __$$ChatUsageImplCopyWithImpl(
      _$ChatUsageImpl _value, $Res Function(_$ChatUsageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatUsage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promptTokens = null,
    Object? completionTokens = null,
    Object? totalTokens = null,
  }) {
    return _then(_$ChatUsageImpl(
      promptTokens: null == promptTokens
          ? _value.promptTokens
          : promptTokens // ignore: cast_nullable_to_non_nullable
              as int,
      completionTokens: null == completionTokens
          ? _value.completionTokens
          : completionTokens // ignore: cast_nullable_to_non_nullable
              as int,
      totalTokens: null == totalTokens
          ? _value.totalTokens
          : totalTokens // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatUsageImpl implements _ChatUsage {
  const _$ChatUsageImpl(
      {this.promptTokens = 0, this.completionTokens = 0, this.totalTokens = 0});

  factory _$ChatUsageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatUsageImplFromJson(json);

  @override
  @JsonKey()
  final int promptTokens;
  @override
  @JsonKey()
  final int completionTokens;
  @override
  @JsonKey()
  final int totalTokens;

  @override
  String toString() {
    return 'ChatUsage(promptTokens: $promptTokens, completionTokens: $completionTokens, totalTokens: $totalTokens)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatUsageImpl &&
            (identical(other.promptTokens, promptTokens) ||
                other.promptTokens == promptTokens) &&
            (identical(other.completionTokens, completionTokens) ||
                other.completionTokens == completionTokens) &&
            (identical(other.totalTokens, totalTokens) ||
                other.totalTokens == totalTokens));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, promptTokens, completionTokens, totalTokens);

  /// Create a copy of ChatUsage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatUsageImplCopyWith<_$ChatUsageImpl> get copyWith =>
      __$$ChatUsageImplCopyWithImpl<_$ChatUsageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatUsageImplToJson(
      this,
    );
  }
}

abstract class _ChatUsage implements ChatUsage {
  const factory _ChatUsage(
      {final int promptTokens,
      final int completionTokens,
      final int totalTokens}) = _$ChatUsageImpl;

  factory _ChatUsage.fromJson(Map<String, dynamic> json) =
      _$ChatUsageImpl.fromJson;

  @override
  int get promptTokens;
  @override
  int get completionTokens;
  @override
  int get totalTokens;

  /// Create a copy of ChatUsage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatUsageImplCopyWith<_$ChatUsageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AITool _$AIToolFromJson(Map<String, dynamic> json) {
  return _AITool.fromJson(json);
}

/// @nodoc
mixin _$AITool {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Map<String, dynamic> get parameters => throw _privateConstructorUsedError;

  /// Serializes this AITool to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AITool
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AIToolCopyWith<AITool> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AIToolCopyWith<$Res> {
  factory $AIToolCopyWith(AITool value, $Res Function(AITool) then) =
      _$AIToolCopyWithImpl<$Res, AITool>;
  @useResult
  $Res call({String name, String description, Map<String, dynamic> parameters});
}

/// @nodoc
class _$AIToolCopyWithImpl<$Res, $Val extends AITool>
    implements $AIToolCopyWith<$Res> {
  _$AIToolCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AITool
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? parameters = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AIToolImplCopyWith<$Res> implements $AIToolCopyWith<$Res> {
  factory _$$AIToolImplCopyWith(
          _$AIToolImpl value, $Res Function(_$AIToolImpl) then) =
      __$$AIToolImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description, Map<String, dynamic> parameters});
}

/// @nodoc
class __$$AIToolImplCopyWithImpl<$Res>
    extends _$AIToolCopyWithImpl<$Res, _$AIToolImpl>
    implements _$$AIToolImplCopyWith<$Res> {
  __$$AIToolImplCopyWithImpl(
      _$AIToolImpl _value, $Res Function(_$AIToolImpl) _then)
      : super(_value, _then);

  /// Create a copy of AITool
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? parameters = null,
  }) {
    return _then(_$AIToolImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AIToolImpl implements _AITool {
  const _$AIToolImpl(
      {required this.name,
      required this.description,
      required final Map<String, dynamic> parameters})
      : _parameters = parameters;

  factory _$AIToolImpl.fromJson(Map<String, dynamic> json) =>
      _$$AIToolImplFromJson(json);

  @override
  final String name;
  @override
  final String description;
  final Map<String, dynamic> _parameters;
  @override
  Map<String, dynamic> get parameters {
    if (_parameters is EqualUnmodifiableMapView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_parameters);
  }

  @override
  String toString() {
    return 'AITool(name: $name, description: $description, parameters: $parameters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AIToolImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, description,
      const DeepCollectionEquality().hash(_parameters));

  /// Create a copy of AITool
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AIToolImplCopyWith<_$AIToolImpl> get copyWith =>
      __$$AIToolImplCopyWithImpl<_$AIToolImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AIToolImplToJson(
      this,
    );
  }
}

abstract class _AITool implements AITool {
  const factory _AITool(
      {required final String name,
      required final String description,
      required final Map<String, dynamic> parameters}) = _$AIToolImpl;

  factory _AITool.fromJson(Map<String, dynamic> json) = _$AIToolImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  Map<String, dynamic> get parameters;

  /// Create a copy of AITool
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AIToolImplCopyWith<_$AIToolImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ToolCall _$ToolCallFromJson(Map<String, dynamic> json) {
  return _ToolCall.fromJson(json);
}

/// @nodoc
mixin _$ToolCall {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get arguments => throw _privateConstructorUsedError;

  /// Serializes this ToolCall to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ToolCall
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ToolCallCopyWith<ToolCall> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToolCallCopyWith<$Res> {
  factory $ToolCallCopyWith(ToolCall value, $Res Function(ToolCall) then) =
      _$ToolCallCopyWithImpl<$Res, ToolCall>;
  @useResult
  $Res call({String id, String name, String arguments});
}

/// @nodoc
class _$ToolCallCopyWithImpl<$Res, $Val extends ToolCall>
    implements $ToolCallCopyWith<$Res> {
  _$ToolCallCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ToolCall
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? arguments = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: null == arguments
          ? _value.arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ToolCallImplCopyWith<$Res>
    implements $ToolCallCopyWith<$Res> {
  factory _$$ToolCallImplCopyWith(
          _$ToolCallImpl value, $Res Function(_$ToolCallImpl) then) =
      __$$ToolCallImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String arguments});
}

/// @nodoc
class __$$ToolCallImplCopyWithImpl<$Res>
    extends _$ToolCallCopyWithImpl<$Res, _$ToolCallImpl>
    implements _$$ToolCallImplCopyWith<$Res> {
  __$$ToolCallImplCopyWithImpl(
      _$ToolCallImpl _value, $Res Function(_$ToolCallImpl) _then)
      : super(_value, _then);

  /// Create a copy of ToolCall
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? arguments = null,
  }) {
    return _then(_$ToolCallImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: null == arguments
          ? _value.arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ToolCallImpl implements _ToolCall {
  const _$ToolCallImpl(
      {required this.id, required this.name, required this.arguments});

  factory _$ToolCallImpl.fromJson(Map<String, dynamic> json) =>
      _$$ToolCallImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String arguments;

  @override
  String toString() {
    return 'ToolCall(id: $id, name: $name, arguments: $arguments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToolCallImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.arguments, arguments) ||
                other.arguments == arguments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, arguments);

  /// Create a copy of ToolCall
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToolCallImplCopyWith<_$ToolCallImpl> get copyWith =>
      __$$ToolCallImplCopyWithImpl<_$ToolCallImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ToolCallImplToJson(
      this,
    );
  }
}

abstract class _ToolCall implements ToolCall {
  const factory _ToolCall(
      {required final String id,
      required final String name,
      required final String arguments}) = _$ToolCallImpl;

  factory _ToolCall.fromJson(Map<String, dynamic> json) =
      _$ToolCallImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get arguments;

  /// Create a copy of ToolCall
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToolCallImplCopyWith<_$ToolCallImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ToolCallChunk _$ToolCallChunkFromJson(Map<String, dynamic> json) {
  return _ToolCallChunk.fromJson(json);
}

/// @nodoc
mixin _$ToolCallChunk {
  int get index => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get arguments => throw _privateConstructorUsedError;

  /// Serializes this ToolCallChunk to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ToolCallChunk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ToolCallChunkCopyWith<ToolCallChunk> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToolCallChunkCopyWith<$Res> {
  factory $ToolCallChunkCopyWith(
          ToolCallChunk value, $Res Function(ToolCallChunk) then) =
      _$ToolCallChunkCopyWithImpl<$Res, ToolCallChunk>;
  @useResult
  $Res call({int index, String? id, String? name, String? arguments});
}

/// @nodoc
class _$ToolCallChunkCopyWithImpl<$Res, $Val extends ToolCallChunk>
    implements $ToolCallChunkCopyWith<$Res> {
  _$ToolCallChunkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ToolCallChunk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? id = freezed,
    Object? name = freezed,
    Object? arguments = freezed,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      arguments: freezed == arguments
          ? _value.arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ToolCallChunkImplCopyWith<$Res>
    implements $ToolCallChunkCopyWith<$Res> {
  factory _$$ToolCallChunkImplCopyWith(
          _$ToolCallChunkImpl value, $Res Function(_$ToolCallChunkImpl) then) =
      __$$ToolCallChunkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, String? id, String? name, String? arguments});
}

/// @nodoc
class __$$ToolCallChunkImplCopyWithImpl<$Res>
    extends _$ToolCallChunkCopyWithImpl<$Res, _$ToolCallChunkImpl>
    implements _$$ToolCallChunkImplCopyWith<$Res> {
  __$$ToolCallChunkImplCopyWithImpl(
      _$ToolCallChunkImpl _value, $Res Function(_$ToolCallChunkImpl) _then)
      : super(_value, _then);

  /// Create a copy of ToolCallChunk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? id = freezed,
    Object? name = freezed,
    Object? arguments = freezed,
  }) {
    return _then(_$ToolCallChunkImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      arguments: freezed == arguments
          ? _value.arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ToolCallChunkImpl implements _ToolCallChunk {
  const _$ToolCallChunkImpl(
      {required this.index, this.id, this.name, this.arguments});

  factory _$ToolCallChunkImpl.fromJson(Map<String, dynamic> json) =>
      _$$ToolCallChunkImplFromJson(json);

  @override
  final int index;
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? arguments;

  @override
  String toString() {
    return 'ToolCallChunk(index: $index, id: $id, name: $name, arguments: $arguments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToolCallChunkImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.arguments, arguments) ||
                other.arguments == arguments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, index, id, name, arguments);

  /// Create a copy of ToolCallChunk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToolCallChunkImplCopyWith<_$ToolCallChunkImpl> get copyWith =>
      __$$ToolCallChunkImplCopyWithImpl<_$ToolCallChunkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ToolCallChunkImplToJson(
      this,
    );
  }
}

abstract class _ToolCallChunk implements ToolCallChunk {
  const factory _ToolCallChunk(
      {required final int index,
      final String? id,
      final String? name,
      final String? arguments}) = _$ToolCallChunkImpl;

  factory _ToolCallChunk.fromJson(Map<String, dynamic> json) =
      _$ToolCallChunkImpl.fromJson;

  @override
  int get index;
  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get arguments;

  /// Create a copy of ToolCallChunk
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToolCallChunkImplCopyWith<_$ToolCallChunkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
