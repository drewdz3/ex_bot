// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chatgpt_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatGptResponse implements DiagnosticableTreeMixin {

 String get id; String get object; int get created; String get model; ChatGptUsage? get usage; List<ChatGptChoice> get choices;
/// Create a copy of ChatGptResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatGptResponseCopyWith<ChatGptResponse> get copyWith => _$ChatGptResponseCopyWithImpl<ChatGptResponse>(this as ChatGptResponse, _$identity);

  /// Serializes this ChatGptResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatGptResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('object', object))..add(DiagnosticsProperty('created', created))..add(DiagnosticsProperty('model', model))..add(DiagnosticsProperty('usage', usage))..add(DiagnosticsProperty('choices', choices));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatGptResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.object, object) || other.object == object)&&(identical(other.created, created) || other.created == created)&&(identical(other.model, model) || other.model == model)&&(identical(other.usage, usage) || other.usage == usage)&&const DeepCollectionEquality().equals(other.choices, choices));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,object,created,model,usage,const DeepCollectionEquality().hash(choices));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatGptResponse(id: $id, object: $object, created: $created, model: $model, usage: $usage, choices: $choices)';
}


}

/// @nodoc
abstract mixin class $ChatGptResponseCopyWith<$Res>  {
  factory $ChatGptResponseCopyWith(ChatGptResponse value, $Res Function(ChatGptResponse) _then) = _$ChatGptResponseCopyWithImpl;
@useResult
$Res call({
 String id, String object, int created, String model, ChatGptUsage? usage, List<ChatGptChoice> choices
});


$ChatGptUsageCopyWith<$Res>? get usage;

}
/// @nodoc
class _$ChatGptResponseCopyWithImpl<$Res>
    implements $ChatGptResponseCopyWith<$Res> {
  _$ChatGptResponseCopyWithImpl(this._self, this._then);

  final ChatGptResponse _self;
  final $Res Function(ChatGptResponse) _then;

/// Create a copy of ChatGptResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? object = null,Object? created = null,Object? model = null,Object? usage = freezed,Object? choices = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,object: null == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as int,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,usage: freezed == usage ? _self.usage : usage // ignore: cast_nullable_to_non_nullable
as ChatGptUsage?,choices: null == choices ? _self.choices : choices // ignore: cast_nullable_to_non_nullable
as List<ChatGptChoice>,
  ));
}
/// Create a copy of ChatGptResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatGptUsageCopyWith<$Res>? get usage {
    if (_self.usage == null) {
    return null;
  }

  return $ChatGptUsageCopyWith<$Res>(_self.usage!, (value) {
    return _then(_self.copyWith(usage: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _ChatGptResponse with DiagnosticableTreeMixin implements ChatGptResponse {
  const _ChatGptResponse({required this.id, required this.object, this.created = 0, required this.model, this.usage, required final  List<ChatGptChoice> choices}): _choices = choices;
  factory _ChatGptResponse.fromJson(Map<String, dynamic> json) => _$ChatGptResponseFromJson(json);

@override final  String id;
@override final  String object;
@override@JsonKey() final  int created;
@override final  String model;
@override final  ChatGptUsage? usage;
 final  List<ChatGptChoice> _choices;
@override List<ChatGptChoice> get choices {
  if (_choices is EqualUnmodifiableListView) return _choices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_choices);
}


/// Create a copy of ChatGptResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatGptResponseCopyWith<_ChatGptResponse> get copyWith => __$ChatGptResponseCopyWithImpl<_ChatGptResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatGptResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatGptResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('object', object))..add(DiagnosticsProperty('created', created))..add(DiagnosticsProperty('model', model))..add(DiagnosticsProperty('usage', usage))..add(DiagnosticsProperty('choices', choices));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatGptResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.object, object) || other.object == object)&&(identical(other.created, created) || other.created == created)&&(identical(other.model, model) || other.model == model)&&(identical(other.usage, usage) || other.usage == usage)&&const DeepCollectionEquality().equals(other._choices, _choices));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,object,created,model,usage,const DeepCollectionEquality().hash(_choices));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatGptResponse(id: $id, object: $object, created: $created, model: $model, usage: $usage, choices: $choices)';
}


}

/// @nodoc
abstract mixin class _$ChatGptResponseCopyWith<$Res> implements $ChatGptResponseCopyWith<$Res> {
  factory _$ChatGptResponseCopyWith(_ChatGptResponse value, $Res Function(_ChatGptResponse) _then) = __$ChatGptResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, String object, int created, String model, ChatGptUsage? usage, List<ChatGptChoice> choices
});


@override $ChatGptUsageCopyWith<$Res>? get usage;

}
/// @nodoc
class __$ChatGptResponseCopyWithImpl<$Res>
    implements _$ChatGptResponseCopyWith<$Res> {
  __$ChatGptResponseCopyWithImpl(this._self, this._then);

  final _ChatGptResponse _self;
  final $Res Function(_ChatGptResponse) _then;

/// Create a copy of ChatGptResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? object = null,Object? created = null,Object? model = null,Object? usage = freezed,Object? choices = null,}) {
  return _then(_ChatGptResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,object: null == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as int,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,usage: freezed == usage ? _self.usage : usage // ignore: cast_nullable_to_non_nullable
as ChatGptUsage?,choices: null == choices ? _self._choices : choices // ignore: cast_nullable_to_non_nullable
as List<ChatGptChoice>,
  ));
}

/// Create a copy of ChatGptResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatGptUsageCopyWith<$Res>? get usage {
    if (_self.usage == null) {
    return null;
  }

  return $ChatGptUsageCopyWith<$Res>(_self.usage!, (value) {
    return _then(_self.copyWith(usage: value));
  });
}
}

// dart format on
