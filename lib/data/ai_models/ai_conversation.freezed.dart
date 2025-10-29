// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_conversation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AiConversation implements DiagnosticableTreeMixin {

 String get id; List<AiMessage> get messages; DateTime get createdAt; DateTime get updatedAt; String get context; Map<String, dynamic>? get metadata;
/// Create a copy of AiConversation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiConversationCopyWith<AiConversation> get copyWith => _$AiConversationCopyWithImpl<AiConversation>(this as AiConversation, _$identity);

  /// Serializes this AiConversation to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AiConversation'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('messages', messages))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('context', context))..add(DiagnosticsProperty('metadata', metadata));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiConversation&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.messages, messages)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.context, context) || other.context == context)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(messages),createdAt,updatedAt,context,const DeepCollectionEquality().hash(metadata));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AiConversation(id: $id, messages: $messages, createdAt: $createdAt, updatedAt: $updatedAt, context: $context, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $AiConversationCopyWith<$Res>  {
  factory $AiConversationCopyWith(AiConversation value, $Res Function(AiConversation) _then) = _$AiConversationCopyWithImpl;
@useResult
$Res call({
 String id, List<AiMessage> messages, DateTime createdAt, DateTime updatedAt, String context, Map<String, dynamic>? metadata
});




}
/// @nodoc
class _$AiConversationCopyWithImpl<$Res>
    implements $AiConversationCopyWith<$Res> {
  _$AiConversationCopyWithImpl(this._self, this._then);

  final AiConversation _self;
  final $Res Function(AiConversation) _then;

/// Create a copy of AiConversation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? messages = null,Object? createdAt = null,Object? updatedAt = null,Object? context = null,Object? metadata = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<AiMessage>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AiConversation with DiagnosticableTreeMixin implements AiConversation {
  const _AiConversation({required this.id, required final  List<AiMessage> messages, required this.createdAt, required this.updatedAt, this.context = 'general', final  Map<String, dynamic>? metadata}): _messages = messages,_metadata = metadata;
  factory _AiConversation.fromJson(Map<String, dynamic> json) => _$AiConversationFromJson(json);

@override final  String id;
 final  List<AiMessage> _messages;
@override List<AiMessage> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}

@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override@JsonKey() final  String context;
 final  Map<String, dynamic>? _metadata;
@override Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of AiConversation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AiConversationCopyWith<_AiConversation> get copyWith => __$AiConversationCopyWithImpl<_AiConversation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AiConversationToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AiConversation'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('messages', messages))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('context', context))..add(DiagnosticsProperty('metadata', metadata));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AiConversation&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._messages, _messages)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.context, context) || other.context == context)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_messages),createdAt,updatedAt,context,const DeepCollectionEquality().hash(_metadata));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AiConversation(id: $id, messages: $messages, createdAt: $createdAt, updatedAt: $updatedAt, context: $context, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$AiConversationCopyWith<$Res> implements $AiConversationCopyWith<$Res> {
  factory _$AiConversationCopyWith(_AiConversation value, $Res Function(_AiConversation) _then) = __$AiConversationCopyWithImpl;
@override @useResult
$Res call({
 String id, List<AiMessage> messages, DateTime createdAt, DateTime updatedAt, String context, Map<String, dynamic>? metadata
});




}
/// @nodoc
class __$AiConversationCopyWithImpl<$Res>
    implements _$AiConversationCopyWith<$Res> {
  __$AiConversationCopyWithImpl(this._self, this._then);

  final _AiConversation _self;
  final $Res Function(_AiConversation) _then;

/// Create a copy of AiConversation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? messages = null,Object? createdAt = null,Object? updatedAt = null,Object? context = null,Object? metadata = freezed,}) {
  return _then(_AiConversation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<AiMessage>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
