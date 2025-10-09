// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chatgpt_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatGptRequest _$ChatGptRequestFromJson(Map<String, dynamic> json) {
  return _ChatGptRequest.fromJson(json);
}

/// @nodoc
mixin _$ChatGptRequest {
  String get model => throw _privateConstructorUsedError;
  List<ChatGptMessage> get messages => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;
  int get maxTokens => throw _privateConstructorUsedError;
  double get topP => throw _privateConstructorUsedError;
  double get frequencyPenalty => throw _privateConstructorUsedError;
  double get presencePenalty => throw _privateConstructorUsedError;
  List<String>? get stop => throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatGptRequestCopyWith<ChatGptRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatGptRequestCopyWith<$Res> {
  factory $ChatGptRequestCopyWith(
          ChatGptRequest value, $Res Function(ChatGptRequest) then) =
      _$ChatGptRequestCopyWithImpl<$Res, ChatGptRequest>;
  @useResult
  $Res call(
      {String model,
      List<ChatGptMessage> messages,
      double temperature,
      int maxTokens,
      double topP,
      double frequencyPenalty,
      double presencePenalty,
      List<String>? stop,
      String? user});
}

/// @nodoc
class _$ChatGptRequestCopyWithImpl<$Res, $Val extends ChatGptRequest>
    implements $ChatGptRequestCopyWith<$Res> {
  _$ChatGptRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? messages = null,
    Object? temperature = null,
    Object? maxTokens = null,
    Object? topP = null,
    Object? frequencyPenalty = null,
    Object? presencePenalty = null,
    Object? stop = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatGptMessage>,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      maxTokens: null == maxTokens
          ? _value.maxTokens
          : maxTokens // ignore: cast_nullable_to_non_nullable
              as int,
      topP: null == topP
          ? _value.topP
          : topP // ignore: cast_nullable_to_non_nullable
              as double,
      frequencyPenalty: null == frequencyPenalty
          ? _value.frequencyPenalty
          : frequencyPenalty // ignore: cast_nullable_to_non_nullable
              as double,
      presencePenalty: null == presencePenalty
          ? _value.presencePenalty
          : presencePenalty // ignore: cast_nullable_to_non_nullable
              as double,
      stop: freezed == stop
          ? _value.stop
          : stop // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatGptRequestImplCopyWith<$Res>
    implements $ChatGptRequestCopyWith<$Res> {
  factory _$$ChatGptRequestImplCopyWith(_$ChatGptRequestImpl value,
          $Res Function(_$ChatGptRequestImpl) then) =
      __$$ChatGptRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String model,
      List<ChatGptMessage> messages,
      double temperature,
      int maxTokens,
      double topP,
      double frequencyPenalty,
      double presencePenalty,
      List<String>? stop,
      String? user});
}

/// @nodoc
class __$$ChatGptRequestImplCopyWithImpl<$Res>
    extends _$ChatGptRequestCopyWithImpl<$Res, _$ChatGptRequestImpl>
    implements _$$ChatGptRequestImplCopyWith<$Res> {
  __$$ChatGptRequestImplCopyWithImpl(
      _$ChatGptRequestImpl _value, $Res Function(_$ChatGptRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? messages = null,
    Object? temperature = null,
    Object? maxTokens = null,
    Object? topP = null,
    Object? frequencyPenalty = null,
    Object? presencePenalty = null,
    Object? stop = freezed,
    Object? user = freezed,
  }) {
    return _then(_$ChatGptRequestImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatGptMessage>,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      maxTokens: null == maxTokens
          ? _value.maxTokens
          : maxTokens // ignore: cast_nullable_to_non_nullable
              as int,
      topP: null == topP
          ? _value.topP
          : topP // ignore: cast_nullable_to_non_nullable
              as double,
      frequencyPenalty: null == frequencyPenalty
          ? _value.frequencyPenalty
          : frequencyPenalty // ignore: cast_nullable_to_non_nullable
              as double,
      presencePenalty: null == presencePenalty
          ? _value.presencePenalty
          : presencePenalty // ignore: cast_nullable_to_non_nullable
              as double,
      stop: freezed == stop
          ? _value._stop
          : stop // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatGptRequestImpl implements _ChatGptRequest {
  const _$ChatGptRequestImpl(
      {required this.model,
      required final List<ChatGptMessage> messages,
      this.temperature = 1.0,
      this.maxTokens = 2000,
      this.topP = 1.0,
      this.frequencyPenalty = 0.0,
      this.presencePenalty = 0.0,
      final List<String>? stop,
      this.user})
      : _messages = messages,
        _stop = stop;

  factory _$ChatGptRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatGptRequestImplFromJson(json);

  @override
  final String model;
  final List<ChatGptMessage> _messages;
  @override
  List<ChatGptMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  @JsonKey()
  final double temperature;
  @override
  @JsonKey()
  final int maxTokens;
  @override
  @JsonKey()
  final double topP;
  @override
  @JsonKey()
  final double frequencyPenalty;
  @override
  @JsonKey()
  final double presencePenalty;
  final List<String>? _stop;
  @override
  List<String>? get stop {
    final value = _stop;
    if (value == null) return null;
    if (_stop is EqualUnmodifiableListView) return _stop;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? user;

  @override
  String toString() {
    return 'ChatGptRequest(model: $model, messages: $messages, temperature: $temperature, maxTokens: $maxTokens, topP: $topP, frequencyPenalty: $frequencyPenalty, presencePenalty: $presencePenalty, stop: $stop, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatGptRequestImpl &&
            (identical(other.model, model) || other.model == model) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.maxTokens, maxTokens) ||
                other.maxTokens == maxTokens) &&
            (identical(other.topP, topP) || other.topP == topP) &&
            (identical(other.frequencyPenalty, frequencyPenalty) ||
                other.frequencyPenalty == frequencyPenalty) &&
            (identical(other.presencePenalty, presencePenalty) ||
                other.presencePenalty == presencePenalty) &&
            const DeepCollectionEquality().equals(other._stop, _stop) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      model,
      const DeepCollectionEquality().hash(_messages),
      temperature,
      maxTokens,
      topP,
      frequencyPenalty,
      presencePenalty,
      const DeepCollectionEquality().hash(_stop),
      user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatGptRequestImplCopyWith<_$ChatGptRequestImpl> get copyWith =>
      __$$ChatGptRequestImplCopyWithImpl<_$ChatGptRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatGptRequestImplToJson(
      this,
    );
  }
}

abstract class _ChatGptRequest implements ChatGptRequest {
  const factory _ChatGptRequest(
      {required final String model,
      required final List<ChatGptMessage> messages,
      final double temperature,
      final int maxTokens,
      final double topP,
      final double frequencyPenalty,
      final double presencePenalty,
      final List<String>? stop,
      final String? user}) = _$ChatGptRequestImpl;

  factory _ChatGptRequest.fromJson(Map<String, dynamic> json) =
      _$ChatGptRequestImpl.fromJson;

  @override
  String get model;
  @override
  List<ChatGptMessage> get messages;
  @override
  double get temperature;
  @override
  int get maxTokens;
  @override
  double get topP;
  @override
  double get frequencyPenalty;
  @override
  double get presencePenalty;
  @override
  List<String>? get stop;
  @override
  String? get user;
  @override
  @JsonKey(ignore: true)
  _$$ChatGptRequestImplCopyWith<_$ChatGptRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatGptMessage _$ChatGptMessageFromJson(Map<String, dynamic> json) {
  return _ChatGptMessage.fromJson(json);
}

/// @nodoc
mixin _$ChatGptMessage {
  String get role => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatGptMessageCopyWith<ChatGptMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatGptMessageCopyWith<$Res> {
  factory $ChatGptMessageCopyWith(
          ChatGptMessage value, $Res Function(ChatGptMessage) then) =
      _$ChatGptMessageCopyWithImpl<$Res, ChatGptMessage>;
  @useResult
  $Res call({String role, String content, String? name});
}

/// @nodoc
class _$ChatGptMessageCopyWithImpl<$Res, $Val extends ChatGptMessage>
    implements $ChatGptMessageCopyWith<$Res> {
  _$ChatGptMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? content = null,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatGptMessageImplCopyWith<$Res>
    implements $ChatGptMessageCopyWith<$Res> {
  factory _$$ChatGptMessageImplCopyWith(_$ChatGptMessageImpl value,
          $Res Function(_$ChatGptMessageImpl) then) =
      __$$ChatGptMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String role, String content, String? name});
}

/// @nodoc
class __$$ChatGptMessageImplCopyWithImpl<$Res>
    extends _$ChatGptMessageCopyWithImpl<$Res, _$ChatGptMessageImpl>
    implements _$$ChatGptMessageImplCopyWith<$Res> {
  __$$ChatGptMessageImplCopyWithImpl(
      _$ChatGptMessageImpl _value, $Res Function(_$ChatGptMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? content = null,
    Object? name = freezed,
  }) {
    return _then(_$ChatGptMessageImpl(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatGptMessageImpl implements _ChatGptMessage {
  const _$ChatGptMessageImpl(
      {required this.role, required this.content, this.name});

  factory _$ChatGptMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatGptMessageImplFromJson(json);

  @override
  final String role;
  @override
  final String content;
  @override
  final String? name;

  @override
  String toString() {
    return 'ChatGptMessage(role: $role, content: $content, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatGptMessageImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, role, content, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatGptMessageImplCopyWith<_$ChatGptMessageImpl> get copyWith =>
      __$$ChatGptMessageImplCopyWithImpl<_$ChatGptMessageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatGptMessageImplToJson(
      this,
    );
  }
}

abstract class _ChatGptMessage implements ChatGptMessage {
  const factory _ChatGptMessage(
      {required final String role,
      required final String content,
      final String? name}) = _$ChatGptMessageImpl;

  factory _ChatGptMessage.fromJson(Map<String, dynamic> json) =
      _$ChatGptMessageImpl.fromJson;

  @override
  String get role;
  @override
  String get content;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$ChatGptMessageImplCopyWith<_$ChatGptMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatGptResponse _$ChatGptResponseFromJson(Map<String, dynamic> json) {
  return _ChatGptResponse.fromJson(json);
}

/// @nodoc
mixin _$ChatGptResponse {
  String get id => throw _privateConstructorUsedError;
  String get object => throw _privateConstructorUsedError;
  int get created => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  ChatGptUsage? get usage => throw _privateConstructorUsedError;
  List<ChatGptChoice> get choices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatGptResponseCopyWith<ChatGptResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatGptResponseCopyWith<$Res> {
  factory $ChatGptResponseCopyWith(
          ChatGptResponse value, $Res Function(ChatGptResponse) then) =
      _$ChatGptResponseCopyWithImpl<$Res, ChatGptResponse>;
  @useResult
  $Res call(
      {String id,
      String object,
      int created,
      String model,
      ChatGptUsage? usage,
      List<ChatGptChoice> choices});

  $ChatGptUsageCopyWith<$Res>? get usage;
}

/// @nodoc
class _$ChatGptResponseCopyWithImpl<$Res, $Val extends ChatGptResponse>
    implements $ChatGptResponseCopyWith<$Res> {
  _$ChatGptResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? created = null,
    Object? model = null,
    Object? usage = freezed,
    Object? choices = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      usage: freezed == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as ChatGptUsage?,
      choices: null == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<ChatGptChoice>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatGptUsageCopyWith<$Res>? get usage {
    if (_value.usage == null) {
      return null;
    }

    return $ChatGptUsageCopyWith<$Res>(_value.usage!, (value) {
      return _then(_value.copyWith(usage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatGptResponseImplCopyWith<$Res>
    implements $ChatGptResponseCopyWith<$Res> {
  factory _$$ChatGptResponseImplCopyWith(_$ChatGptResponseImpl value,
          $Res Function(_$ChatGptResponseImpl) then) =
      __$$ChatGptResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String object,
      int created,
      String model,
      ChatGptUsage? usage,
      List<ChatGptChoice> choices});

  @override
  $ChatGptUsageCopyWith<$Res>? get usage;
}

/// @nodoc
class __$$ChatGptResponseImplCopyWithImpl<$Res>
    extends _$ChatGptResponseCopyWithImpl<$Res, _$ChatGptResponseImpl>
    implements _$$ChatGptResponseImplCopyWith<$Res> {
  __$$ChatGptResponseImplCopyWithImpl(
      _$ChatGptResponseImpl _value, $Res Function(_$ChatGptResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? created = null,
    Object? model = null,
    Object? usage = freezed,
    Object? choices = null,
  }) {
    return _then(_$ChatGptResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      usage: freezed == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as ChatGptUsage?,
      choices: null == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<ChatGptChoice>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatGptResponseImpl implements _ChatGptResponse {
  const _$ChatGptResponseImpl(
      {required this.id,
      required this.object,
      this.created = 0,
      required this.model,
      this.usage,
      required final List<ChatGptChoice> choices})
      : _choices = choices;

  factory _$ChatGptResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatGptResponseImplFromJson(json);

  @override
  final String id;
  @override
  final String object;
  @override
  @JsonKey()
  final int created;
  @override
  final String model;
  @override
  final ChatGptUsage? usage;
  final List<ChatGptChoice> _choices;
  @override
  List<ChatGptChoice> get choices {
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choices);
  }

  @override
  String toString() {
    return 'ChatGptResponse(id: $id, object: $object, created: $created, model: $model, usage: $usage, choices: $choices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatGptResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.usage, usage) || other.usage == usage) &&
            const DeepCollectionEquality().equals(other._choices, _choices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, object, created, model,
      usage, const DeepCollectionEquality().hash(_choices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatGptResponseImplCopyWith<_$ChatGptResponseImpl> get copyWith =>
      __$$ChatGptResponseImplCopyWithImpl<_$ChatGptResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatGptResponseImplToJson(
      this,
    );
  }
}

abstract class _ChatGptResponse implements ChatGptResponse {
  const factory _ChatGptResponse(
      {required final String id,
      required final String object,
      final int created,
      required final String model,
      final ChatGptUsage? usage,
      required final List<ChatGptChoice> choices}) = _$ChatGptResponseImpl;

  factory _ChatGptResponse.fromJson(Map<String, dynamic> json) =
      _$ChatGptResponseImpl.fromJson;

  @override
  String get id;
  @override
  String get object;
  @override
  int get created;
  @override
  String get model;
  @override
  ChatGptUsage? get usage;
  @override
  List<ChatGptChoice> get choices;
  @override
  @JsonKey(ignore: true)
  _$$ChatGptResponseImplCopyWith<_$ChatGptResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatGptUsage _$ChatGptUsageFromJson(Map<String, dynamic> json) {
  return _ChatGptUsage.fromJson(json);
}

/// @nodoc
mixin _$ChatGptUsage {
  int get promptTokens => throw _privateConstructorUsedError;
  int get completionTokens => throw _privateConstructorUsedError;
  int get totalTokens => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatGptUsageCopyWith<ChatGptUsage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatGptUsageCopyWith<$Res> {
  factory $ChatGptUsageCopyWith(
          ChatGptUsage value, $Res Function(ChatGptUsage) then) =
      _$ChatGptUsageCopyWithImpl<$Res, ChatGptUsage>;
  @useResult
  $Res call({int promptTokens, int completionTokens, int totalTokens});
}

/// @nodoc
class _$ChatGptUsageCopyWithImpl<$Res, $Val extends ChatGptUsage>
    implements $ChatGptUsageCopyWith<$Res> {
  _$ChatGptUsageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$ChatGptUsageImplCopyWith<$Res>
    implements $ChatGptUsageCopyWith<$Res> {
  factory _$$ChatGptUsageImplCopyWith(
          _$ChatGptUsageImpl value, $Res Function(_$ChatGptUsageImpl) then) =
      __$$ChatGptUsageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int promptTokens, int completionTokens, int totalTokens});
}

/// @nodoc
class __$$ChatGptUsageImplCopyWithImpl<$Res>
    extends _$ChatGptUsageCopyWithImpl<$Res, _$ChatGptUsageImpl>
    implements _$$ChatGptUsageImplCopyWith<$Res> {
  __$$ChatGptUsageImplCopyWithImpl(
      _$ChatGptUsageImpl _value, $Res Function(_$ChatGptUsageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promptTokens = null,
    Object? completionTokens = null,
    Object? totalTokens = null,
  }) {
    return _then(_$ChatGptUsageImpl(
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
class _$ChatGptUsageImpl implements _ChatGptUsage {
  const _$ChatGptUsageImpl(
      {this.promptTokens = 0, this.completionTokens = 0, this.totalTokens = 0});

  factory _$ChatGptUsageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatGptUsageImplFromJson(json);

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
    return 'ChatGptUsage(promptTokens: $promptTokens, completionTokens: $completionTokens, totalTokens: $totalTokens)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatGptUsageImpl &&
            (identical(other.promptTokens, promptTokens) ||
                other.promptTokens == promptTokens) &&
            (identical(other.completionTokens, completionTokens) ||
                other.completionTokens == completionTokens) &&
            (identical(other.totalTokens, totalTokens) ||
                other.totalTokens == totalTokens));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, promptTokens, completionTokens, totalTokens);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatGptUsageImplCopyWith<_$ChatGptUsageImpl> get copyWith =>
      __$$ChatGptUsageImplCopyWithImpl<_$ChatGptUsageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatGptUsageImplToJson(
      this,
    );
  }
}

abstract class _ChatGptUsage implements ChatGptUsage {
  const factory _ChatGptUsage(
      {final int promptTokens,
      final int completionTokens,
      final int totalTokens}) = _$ChatGptUsageImpl;

  factory _ChatGptUsage.fromJson(Map<String, dynamic> json) =
      _$ChatGptUsageImpl.fromJson;

  @override
  int get promptTokens;
  @override
  int get completionTokens;
  @override
  int get totalTokens;
  @override
  @JsonKey(ignore: true)
  _$$ChatGptUsageImplCopyWith<_$ChatGptUsageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatGptChoice _$ChatGptChoiceFromJson(Map<String, dynamic> json) {
  return _ChatGptChoice.fromJson(json);
}

/// @nodoc
mixin _$ChatGptChoice {
  int get index => throw _privateConstructorUsedError;
  ChatGptMessage get message => throw _privateConstructorUsedError;
  String? get finishReason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatGptChoiceCopyWith<ChatGptChoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatGptChoiceCopyWith<$Res> {
  factory $ChatGptChoiceCopyWith(
          ChatGptChoice value, $Res Function(ChatGptChoice) then) =
      _$ChatGptChoiceCopyWithImpl<$Res, ChatGptChoice>;
  @useResult
  $Res call({int index, ChatGptMessage message, String? finishReason});

  $ChatGptMessageCopyWith<$Res> get message;
}

/// @nodoc
class _$ChatGptChoiceCopyWithImpl<$Res, $Val extends ChatGptChoice>
    implements $ChatGptChoiceCopyWith<$Res> {
  _$ChatGptChoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? message = null,
    Object? finishReason = freezed,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatGptMessage,
      finishReason: freezed == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatGptMessageCopyWith<$Res> get message {
    return $ChatGptMessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatGptChoiceImplCopyWith<$Res>
    implements $ChatGptChoiceCopyWith<$Res> {
  factory _$$ChatGptChoiceImplCopyWith(
          _$ChatGptChoiceImpl value, $Res Function(_$ChatGptChoiceImpl) then) =
      __$$ChatGptChoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, ChatGptMessage message, String? finishReason});

  @override
  $ChatGptMessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$ChatGptChoiceImplCopyWithImpl<$Res>
    extends _$ChatGptChoiceCopyWithImpl<$Res, _$ChatGptChoiceImpl>
    implements _$$ChatGptChoiceImplCopyWith<$Res> {
  __$$ChatGptChoiceImplCopyWithImpl(
      _$ChatGptChoiceImpl _value, $Res Function(_$ChatGptChoiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? message = null,
    Object? finishReason = freezed,
  }) {
    return _then(_$ChatGptChoiceImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatGptMessage,
      finishReason: freezed == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatGptChoiceImpl implements _ChatGptChoice {
  const _$ChatGptChoiceImpl(
      {this.index = 0, required this.message, this.finishReason});

  factory _$ChatGptChoiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatGptChoiceImplFromJson(json);

  @override
  @JsonKey()
  final int index;
  @override
  final ChatGptMessage message;
  @override
  final String? finishReason;

  @override
  String toString() {
    return 'ChatGptChoice(index: $index, message: $message, finishReason: $finishReason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatGptChoiceImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.finishReason, finishReason) ||
                other.finishReason == finishReason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, index, message, finishReason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatGptChoiceImplCopyWith<_$ChatGptChoiceImpl> get copyWith =>
      __$$ChatGptChoiceImplCopyWithImpl<_$ChatGptChoiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatGptChoiceImplToJson(
      this,
    );
  }
}

abstract class _ChatGptChoice implements ChatGptChoice {
  const factory _ChatGptChoice(
      {final int index,
      required final ChatGptMessage message,
      final String? finishReason}) = _$ChatGptChoiceImpl;

  factory _ChatGptChoice.fromJson(Map<String, dynamic> json) =
      _$ChatGptChoiceImpl.fromJson;

  @override
  int get index;
  @override
  ChatGptMessage get message;
  @override
  String? get finishReason;
  @override
  @JsonKey(ignore: true)
  _$$ChatGptChoiceImplCopyWith<_$ChatGptChoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatGptError _$ChatGptErrorFromJson(Map<String, dynamic> json) {
  return _ChatGptError.fromJson(json);
}

/// @nodoc
mixin _$ChatGptError {
  String get message => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get param => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatGptErrorCopyWith<ChatGptError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatGptErrorCopyWith<$Res> {
  factory $ChatGptErrorCopyWith(
          ChatGptError value, $Res Function(ChatGptError) then) =
      _$ChatGptErrorCopyWithImpl<$Res, ChatGptError>;
  @useResult
  $Res call({String message, String type, String? param, String? code});
}

/// @nodoc
class _$ChatGptErrorCopyWithImpl<$Res, $Val extends ChatGptError>
    implements $ChatGptErrorCopyWith<$Res> {
  _$ChatGptErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? type = null,
    Object? param = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      param: freezed == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatGptErrorImplCopyWith<$Res>
    implements $ChatGptErrorCopyWith<$Res> {
  factory _$$ChatGptErrorImplCopyWith(
          _$ChatGptErrorImpl value, $Res Function(_$ChatGptErrorImpl) then) =
      __$$ChatGptErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String type, String? param, String? code});
}

/// @nodoc
class __$$ChatGptErrorImplCopyWithImpl<$Res>
    extends _$ChatGptErrorCopyWithImpl<$Res, _$ChatGptErrorImpl>
    implements _$$ChatGptErrorImplCopyWith<$Res> {
  __$$ChatGptErrorImplCopyWithImpl(
      _$ChatGptErrorImpl _value, $Res Function(_$ChatGptErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? type = null,
    Object? param = freezed,
    Object? code = freezed,
  }) {
    return _then(_$ChatGptErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      param: freezed == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatGptErrorImpl implements _ChatGptError {
  const _$ChatGptErrorImpl(
      {required this.message, required this.type, this.param, this.code});

  factory _$ChatGptErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatGptErrorImplFromJson(json);

  @override
  final String message;
  @override
  final String type;
  @override
  final String? param;
  @override
  final String? code;

  @override
  String toString() {
    return 'ChatGptError(message: $message, type: $type, param: $param, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatGptErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.param, param) || other.param == param) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, type, param, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatGptErrorImplCopyWith<_$ChatGptErrorImpl> get copyWith =>
      __$$ChatGptErrorImplCopyWithImpl<_$ChatGptErrorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatGptErrorImplToJson(
      this,
    );
  }
}

abstract class _ChatGptError implements ChatGptError {
  const factory _ChatGptError(
      {required final String message,
      required final String type,
      final String? param,
      final String? code}) = _$ChatGptErrorImpl;

  factory _ChatGptError.fromJson(Map<String, dynamic> json) =
      _$ChatGptErrorImpl.fromJson;

  @override
  String get message;
  @override
  String get type;
  @override
  String? get param;
  @override
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$ChatGptErrorImplCopyWith<_$ChatGptErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
