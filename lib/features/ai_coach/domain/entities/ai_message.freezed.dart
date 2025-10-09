// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AiMessage _$AiMessageFromJson(Map<String, dynamic> json) {
  return _AiMessage.fromJson(json);
}

/// @nodoc
mixin _$AiMessage {
  String get id => throw _privateConstructorUsedError;
  AiMessageRole get role => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  bool get isTyping => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AiMessageCopyWith<AiMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiMessageCopyWith<$Res> {
  factory $AiMessageCopyWith(AiMessage value, $Res Function(AiMessage) then) =
      _$AiMessageCopyWithImpl<$Res, AiMessage>;
  @useResult
  $Res call(
      {String id,
      AiMessageRole role,
      String content,
      DateTime timestamp,
      bool isTyping,
      Map<String, dynamic>? metadata});

  $AiMessageRoleCopyWith<$Res> get role;
}

/// @nodoc
class _$AiMessageCopyWithImpl<$Res, $Val extends AiMessage>
    implements $AiMessageCopyWith<$Res> {
  _$AiMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? role = null,
    Object? content = null,
    Object? timestamp = null,
    Object? isTyping = null,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as AiMessageRole,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isTyping: null == isTyping
          ? _value.isTyping
          : isTyping // ignore: cast_nullable_to_non_nullable
              as bool,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AiMessageRoleCopyWith<$Res> get role {
    return $AiMessageRoleCopyWith<$Res>(_value.role, (value) {
      return _then(_value.copyWith(role: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AiMessageImplCopyWith<$Res>
    implements $AiMessageCopyWith<$Res> {
  factory _$$AiMessageImplCopyWith(
          _$AiMessageImpl value, $Res Function(_$AiMessageImpl) then) =
      __$$AiMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      AiMessageRole role,
      String content,
      DateTime timestamp,
      bool isTyping,
      Map<String, dynamic>? metadata});

  @override
  $AiMessageRoleCopyWith<$Res> get role;
}

/// @nodoc
class __$$AiMessageImplCopyWithImpl<$Res>
    extends _$AiMessageCopyWithImpl<$Res, _$AiMessageImpl>
    implements _$$AiMessageImplCopyWith<$Res> {
  __$$AiMessageImplCopyWithImpl(
      _$AiMessageImpl _value, $Res Function(_$AiMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? role = null,
    Object? content = null,
    Object? timestamp = null,
    Object? isTyping = null,
    Object? metadata = freezed,
  }) {
    return _then(_$AiMessageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as AiMessageRole,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isTyping: null == isTyping
          ? _value.isTyping
          : isTyping // ignore: cast_nullable_to_non_nullable
              as bool,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AiMessageImpl implements _AiMessage {
  const _$AiMessageImpl(
      {required this.id,
      required this.role,
      required this.content,
      required this.timestamp,
      this.isTyping = false,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$AiMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$AiMessageImplFromJson(json);

  @override
  final String id;
  @override
  final AiMessageRole role;
  @override
  final String content;
  @override
  final DateTime timestamp;
  @override
  @JsonKey()
  final bool isTyping;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'AiMessage(id: $id, role: $role, content: $content, timestamp: $timestamp, isTyping: $isTyping, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AiMessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.isTyping, isTyping) ||
                other.isTyping == isTyping) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, role, content, timestamp,
      isTyping, const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AiMessageImplCopyWith<_$AiMessageImpl> get copyWith =>
      __$$AiMessageImplCopyWithImpl<_$AiMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AiMessageImplToJson(
      this,
    );
  }
}

abstract class _AiMessage implements AiMessage {
  const factory _AiMessage(
      {required final String id,
      required final AiMessageRole role,
      required final String content,
      required final DateTime timestamp,
      final bool isTyping,
      final Map<String, dynamic>? metadata}) = _$AiMessageImpl;

  factory _AiMessage.fromJson(Map<String, dynamic> json) =
      _$AiMessageImpl.fromJson;

  @override
  String get id;
  @override
  AiMessageRole get role;
  @override
  String get content;
  @override
  DateTime get timestamp;
  @override
  bool get isTyping;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$AiMessageImplCopyWith<_$AiMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AiMessageRole _$AiMessageRoleFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'user':
      return UserRole.fromJson(json);
    case 'assistant':
      return AssistantRole.fromJson(json);
    case 'system':
      return SystemRole.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AiMessageRole',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AiMessageRole {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() user,
    required TResult Function() assistant,
    required TResult Function() system,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? user,
    TResult? Function()? assistant,
    TResult? Function()? system,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? user,
    TResult Function()? assistant,
    TResult Function()? system,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserRole value) user,
    required TResult Function(AssistantRole value) assistant,
    required TResult Function(SystemRole value) system,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserRole value)? user,
    TResult? Function(AssistantRole value)? assistant,
    TResult? Function(SystemRole value)? system,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserRole value)? user,
    TResult Function(AssistantRole value)? assistant,
    TResult Function(SystemRole value)? system,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiMessageRoleCopyWith<$Res> {
  factory $AiMessageRoleCopyWith(
          AiMessageRole value, $Res Function(AiMessageRole) then) =
      _$AiMessageRoleCopyWithImpl<$Res, AiMessageRole>;
}

/// @nodoc
class _$AiMessageRoleCopyWithImpl<$Res, $Val extends AiMessageRole>
    implements $AiMessageRoleCopyWith<$Res> {
  _$AiMessageRoleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserRoleImplCopyWith<$Res> {
  factory _$$UserRoleImplCopyWith(
          _$UserRoleImpl value, $Res Function(_$UserRoleImpl) then) =
      __$$UserRoleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserRoleImplCopyWithImpl<$Res>
    extends _$AiMessageRoleCopyWithImpl<$Res, _$UserRoleImpl>
    implements _$$UserRoleImplCopyWith<$Res> {
  __$$UserRoleImplCopyWithImpl(
      _$UserRoleImpl _value, $Res Function(_$UserRoleImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$UserRoleImpl implements UserRole {
  const _$UserRoleImpl({final String? $type}) : $type = $type ?? 'user';

  factory _$UserRoleImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRoleImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AiMessageRole.user()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserRoleImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() user,
    required TResult Function() assistant,
    required TResult Function() system,
  }) {
    return user();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? user,
    TResult? Function()? assistant,
    TResult? Function()? system,
  }) {
    return user?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? user,
    TResult Function()? assistant,
    TResult Function()? system,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserRole value) user,
    required TResult Function(AssistantRole value) assistant,
    required TResult Function(SystemRole value) system,
  }) {
    return user(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserRole value)? user,
    TResult? Function(AssistantRole value)? assistant,
    TResult? Function(SystemRole value)? system,
  }) {
    return user?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserRole value)? user,
    TResult Function(AssistantRole value)? assistant,
    TResult Function(SystemRole value)? system,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRoleImplToJson(
      this,
    );
  }
}

abstract class UserRole implements AiMessageRole {
  const factory UserRole() = _$UserRoleImpl;

  factory UserRole.fromJson(Map<String, dynamic> json) =
      _$UserRoleImpl.fromJson;
}

/// @nodoc
abstract class _$$AssistantRoleImplCopyWith<$Res> {
  factory _$$AssistantRoleImplCopyWith(
          _$AssistantRoleImpl value, $Res Function(_$AssistantRoleImpl) then) =
      __$$AssistantRoleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AssistantRoleImplCopyWithImpl<$Res>
    extends _$AiMessageRoleCopyWithImpl<$Res, _$AssistantRoleImpl>
    implements _$$AssistantRoleImplCopyWith<$Res> {
  __$$AssistantRoleImplCopyWithImpl(
      _$AssistantRoleImpl _value, $Res Function(_$AssistantRoleImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$AssistantRoleImpl implements AssistantRole {
  const _$AssistantRoleImpl({final String? $type})
      : $type = $type ?? 'assistant';

  factory _$AssistantRoleImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssistantRoleImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AiMessageRole.assistant()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AssistantRoleImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() user,
    required TResult Function() assistant,
    required TResult Function() system,
  }) {
    return assistant();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? user,
    TResult? Function()? assistant,
    TResult? Function()? system,
  }) {
    return assistant?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? user,
    TResult Function()? assistant,
    TResult Function()? system,
    required TResult orElse(),
  }) {
    if (assistant != null) {
      return assistant();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserRole value) user,
    required TResult Function(AssistantRole value) assistant,
    required TResult Function(SystemRole value) system,
  }) {
    return assistant(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserRole value)? user,
    TResult? Function(AssistantRole value)? assistant,
    TResult? Function(SystemRole value)? system,
  }) {
    return assistant?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserRole value)? user,
    TResult Function(AssistantRole value)? assistant,
    TResult Function(SystemRole value)? system,
    required TResult orElse(),
  }) {
    if (assistant != null) {
      return assistant(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AssistantRoleImplToJson(
      this,
    );
  }
}

abstract class AssistantRole implements AiMessageRole {
  const factory AssistantRole() = _$AssistantRoleImpl;

  factory AssistantRole.fromJson(Map<String, dynamic> json) =
      _$AssistantRoleImpl.fromJson;
}

/// @nodoc
abstract class _$$SystemRoleImplCopyWith<$Res> {
  factory _$$SystemRoleImplCopyWith(
          _$SystemRoleImpl value, $Res Function(_$SystemRoleImpl) then) =
      __$$SystemRoleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SystemRoleImplCopyWithImpl<$Res>
    extends _$AiMessageRoleCopyWithImpl<$Res, _$SystemRoleImpl>
    implements _$$SystemRoleImplCopyWith<$Res> {
  __$$SystemRoleImplCopyWithImpl(
      _$SystemRoleImpl _value, $Res Function(_$SystemRoleImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$SystemRoleImpl implements SystemRole {
  const _$SystemRoleImpl({final String? $type}) : $type = $type ?? 'system';

  factory _$SystemRoleImpl.fromJson(Map<String, dynamic> json) =>
      _$$SystemRoleImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AiMessageRole.system()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SystemRoleImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() user,
    required TResult Function() assistant,
    required TResult Function() system,
  }) {
    return system();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? user,
    TResult? Function()? assistant,
    TResult? Function()? system,
  }) {
    return system?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? user,
    TResult Function()? assistant,
    TResult Function()? system,
    required TResult orElse(),
  }) {
    if (system != null) {
      return system();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserRole value) user,
    required TResult Function(AssistantRole value) assistant,
    required TResult Function(SystemRole value) system,
  }) {
    return system(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserRole value)? user,
    TResult? Function(AssistantRole value)? assistant,
    TResult? Function(SystemRole value)? system,
  }) {
    return system?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserRole value)? user,
    TResult Function(AssistantRole value)? assistant,
    TResult Function(SystemRole value)? system,
    required TResult orElse(),
  }) {
    if (system != null) {
      return system(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SystemRoleImplToJson(
      this,
    );
  }
}

abstract class SystemRole implements AiMessageRole {
  const factory SystemRole() = _$SystemRoleImpl;

  factory SystemRole.fromJson(Map<String, dynamic> json) =
      _$SystemRoleImpl.fromJson;
}

AiConversation _$AiConversationFromJson(Map<String, dynamic> json) {
  return _AiConversation.fromJson(json);
}

/// @nodoc
mixin _$AiConversation {
  String get id => throw _privateConstructorUsedError;
  List<AiMessage> get messages => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get context => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AiConversationCopyWith<AiConversation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiConversationCopyWith<$Res> {
  factory $AiConversationCopyWith(
          AiConversation value, $Res Function(AiConversation) then) =
      _$AiConversationCopyWithImpl<$Res, AiConversation>;
  @useResult
  $Res call(
      {String id,
      List<AiMessage> messages,
      DateTime createdAt,
      DateTime updatedAt,
      String context,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$AiConversationCopyWithImpl<$Res, $Val extends AiConversation>
    implements $AiConversationCopyWith<$Res> {
  _$AiConversationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? messages = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? context = null,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<AiMessage>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AiConversationImplCopyWith<$Res>
    implements $AiConversationCopyWith<$Res> {
  factory _$$AiConversationImplCopyWith(_$AiConversationImpl value,
          $Res Function(_$AiConversationImpl) then) =
      __$$AiConversationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      List<AiMessage> messages,
      DateTime createdAt,
      DateTime updatedAt,
      String context,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$AiConversationImplCopyWithImpl<$Res>
    extends _$AiConversationCopyWithImpl<$Res, _$AiConversationImpl>
    implements _$$AiConversationImplCopyWith<$Res> {
  __$$AiConversationImplCopyWithImpl(
      _$AiConversationImpl _value, $Res Function(_$AiConversationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? messages = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? context = null,
    Object? metadata = freezed,
  }) {
    return _then(_$AiConversationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<AiMessage>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AiConversationImpl implements _AiConversation {
  const _$AiConversationImpl(
      {required this.id,
      required final List<AiMessage> messages,
      required this.createdAt,
      required this.updatedAt,
      this.context = 'general',
      final Map<String, dynamic>? metadata})
      : _messages = messages,
        _metadata = metadata;

  factory _$AiConversationImpl.fromJson(Map<String, dynamic> json) =>
      _$$AiConversationImplFromJson(json);

  @override
  final String id;
  final List<AiMessage> _messages;
  @override
  List<AiMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  @JsonKey()
  final String context;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'AiConversation(id: $id, messages: $messages, createdAt: $createdAt, updatedAt: $updatedAt, context: $context, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AiConversationImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.context, context) || other.context == context) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_messages),
      createdAt,
      updatedAt,
      context,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AiConversationImplCopyWith<_$AiConversationImpl> get copyWith =>
      __$$AiConversationImplCopyWithImpl<_$AiConversationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AiConversationImplToJson(
      this,
    );
  }
}

abstract class _AiConversation implements AiConversation {
  const factory _AiConversation(
      {required final String id,
      required final List<AiMessage> messages,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final String context,
      final Map<String, dynamic>? metadata}) = _$AiConversationImpl;

  factory _AiConversation.fromJson(Map<String, dynamic> json) =
      _$AiConversationImpl.fromJson;

  @override
  String get id;
  @override
  List<AiMessage> get messages;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String get context;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$AiConversationImplCopyWith<_$AiConversationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
