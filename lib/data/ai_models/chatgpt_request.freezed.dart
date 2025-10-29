// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chatgpt_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatGptRequest implements DiagnosticableTreeMixin {

 String get model; List<ChatGptMessage> get messages; double get temperature; int get maxTokens; double get topP; double get frequencyPenalty; double get presencePenalty; List<String>? get stop; String? get user;
/// Create a copy of ChatGptRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatGptRequestCopyWith<ChatGptRequest> get copyWith => _$ChatGptRequestCopyWithImpl<ChatGptRequest>(this as ChatGptRequest, _$identity);

  /// Serializes this ChatGptRequest to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatGptRequest'))
    ..add(DiagnosticsProperty('model', model))..add(DiagnosticsProperty('messages', messages))..add(DiagnosticsProperty('temperature', temperature))..add(DiagnosticsProperty('maxTokens', maxTokens))..add(DiagnosticsProperty('topP', topP))..add(DiagnosticsProperty('frequencyPenalty', frequencyPenalty))..add(DiagnosticsProperty('presencePenalty', presencePenalty))..add(DiagnosticsProperty('stop', stop))..add(DiagnosticsProperty('user', user));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatGptRequest&&(identical(other.model, model) || other.model == model)&&const DeepCollectionEquality().equals(other.messages, messages)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.maxTokens, maxTokens) || other.maxTokens == maxTokens)&&(identical(other.topP, topP) || other.topP == topP)&&(identical(other.frequencyPenalty, frequencyPenalty) || other.frequencyPenalty == frequencyPenalty)&&(identical(other.presencePenalty, presencePenalty) || other.presencePenalty == presencePenalty)&&const DeepCollectionEquality().equals(other.stop, stop)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,model,const DeepCollectionEquality().hash(messages),temperature,maxTokens,topP,frequencyPenalty,presencePenalty,const DeepCollectionEquality().hash(stop),user);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatGptRequest(model: $model, messages: $messages, temperature: $temperature, maxTokens: $maxTokens, topP: $topP, frequencyPenalty: $frequencyPenalty, presencePenalty: $presencePenalty, stop: $stop, user: $user)';
}


}

/// @nodoc
abstract mixin class $ChatGptRequestCopyWith<$Res>  {
  factory $ChatGptRequestCopyWith(ChatGptRequest value, $Res Function(ChatGptRequest) _then) = _$ChatGptRequestCopyWithImpl;
@useResult
$Res call({
 String model, List<ChatGptMessage> messages, double temperature, int maxTokens, double topP, double frequencyPenalty, double presencePenalty, List<String>? stop, String? user
});




}
/// @nodoc
class _$ChatGptRequestCopyWithImpl<$Res>
    implements $ChatGptRequestCopyWith<$Res> {
  _$ChatGptRequestCopyWithImpl(this._self, this._then);

  final ChatGptRequest _self;
  final $Res Function(ChatGptRequest) _then;

/// Create a copy of ChatGptRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? model = null,Object? messages = null,Object? temperature = null,Object? maxTokens = null,Object? topP = null,Object? frequencyPenalty = null,Object? presencePenalty = null,Object? stop = freezed,Object? user = freezed,}) {
  return _then(_self.copyWith(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatGptMessage>,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,maxTokens: null == maxTokens ? _self.maxTokens : maxTokens // ignore: cast_nullable_to_non_nullable
as int,topP: null == topP ? _self.topP : topP // ignore: cast_nullable_to_non_nullable
as double,frequencyPenalty: null == frequencyPenalty ? _self.frequencyPenalty : frequencyPenalty // ignore: cast_nullable_to_non_nullable
as double,presencePenalty: null == presencePenalty ? _self.presencePenalty : presencePenalty // ignore: cast_nullable_to_non_nullable
as double,stop: freezed == stop ? _self.stop : stop // ignore: cast_nullable_to_non_nullable
as List<String>?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ChatGptRequest with DiagnosticableTreeMixin implements ChatGptRequest {
  const _ChatGptRequest({required this.model, required final  List<ChatGptMessage> messages, this.temperature = 1.0, this.maxTokens = 2000, this.topP = 1.0, this.frequencyPenalty = 0.0, this.presencePenalty = 0.0, final  List<String>? stop, this.user}): _messages = messages,_stop = stop;
  factory _ChatGptRequest.fromJson(Map<String, dynamic> json) => _$ChatGptRequestFromJson(json);

@override final  String model;
 final  List<ChatGptMessage> _messages;
@override List<ChatGptMessage> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}

@override@JsonKey() final  double temperature;
@override@JsonKey() final  int maxTokens;
@override@JsonKey() final  double topP;
@override@JsonKey() final  double frequencyPenalty;
@override@JsonKey() final  double presencePenalty;
 final  List<String>? _stop;
@override List<String>? get stop {
  final value = _stop;
  if (value == null) return null;
  if (_stop is EqualUnmodifiableListView) return _stop;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? user;

/// Create a copy of ChatGptRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatGptRequestCopyWith<_ChatGptRequest> get copyWith => __$ChatGptRequestCopyWithImpl<_ChatGptRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatGptRequestToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatGptRequest'))
    ..add(DiagnosticsProperty('model', model))..add(DiagnosticsProperty('messages', messages))..add(DiagnosticsProperty('temperature', temperature))..add(DiagnosticsProperty('maxTokens', maxTokens))..add(DiagnosticsProperty('topP', topP))..add(DiagnosticsProperty('frequencyPenalty', frequencyPenalty))..add(DiagnosticsProperty('presencePenalty', presencePenalty))..add(DiagnosticsProperty('stop', stop))..add(DiagnosticsProperty('user', user));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatGptRequest&&(identical(other.model, model) || other.model == model)&&const DeepCollectionEquality().equals(other._messages, _messages)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.maxTokens, maxTokens) || other.maxTokens == maxTokens)&&(identical(other.topP, topP) || other.topP == topP)&&(identical(other.frequencyPenalty, frequencyPenalty) || other.frequencyPenalty == frequencyPenalty)&&(identical(other.presencePenalty, presencePenalty) || other.presencePenalty == presencePenalty)&&const DeepCollectionEquality().equals(other._stop, _stop)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,model,const DeepCollectionEquality().hash(_messages),temperature,maxTokens,topP,frequencyPenalty,presencePenalty,const DeepCollectionEquality().hash(_stop),user);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatGptRequest(model: $model, messages: $messages, temperature: $temperature, maxTokens: $maxTokens, topP: $topP, frequencyPenalty: $frequencyPenalty, presencePenalty: $presencePenalty, stop: $stop, user: $user)';
}


}

/// @nodoc
abstract mixin class _$ChatGptRequestCopyWith<$Res> implements $ChatGptRequestCopyWith<$Res> {
  factory _$ChatGptRequestCopyWith(_ChatGptRequest value, $Res Function(_ChatGptRequest) _then) = __$ChatGptRequestCopyWithImpl;
@override @useResult
$Res call({
 String model, List<ChatGptMessage> messages, double temperature, int maxTokens, double topP, double frequencyPenalty, double presencePenalty, List<String>? stop, String? user
});




}
/// @nodoc
class __$ChatGptRequestCopyWithImpl<$Res>
    implements _$ChatGptRequestCopyWith<$Res> {
  __$ChatGptRequestCopyWithImpl(this._self, this._then);

  final _ChatGptRequest _self;
  final $Res Function(_ChatGptRequest) _then;

/// Create a copy of ChatGptRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? model = null,Object? messages = null,Object? temperature = null,Object? maxTokens = null,Object? topP = null,Object? frequencyPenalty = null,Object? presencePenalty = null,Object? stop = freezed,Object? user = freezed,}) {
  return _then(_ChatGptRequest(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatGptMessage>,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,maxTokens: null == maxTokens ? _self.maxTokens : maxTokens // ignore: cast_nullable_to_non_nullable
as int,topP: null == topP ? _self.topP : topP // ignore: cast_nullable_to_non_nullable
as double,frequencyPenalty: null == frequencyPenalty ? _self.frequencyPenalty : frequencyPenalty // ignore: cast_nullable_to_non_nullable
as double,presencePenalty: null == presencePenalty ? _self.presencePenalty : presencePenalty // ignore: cast_nullable_to_non_nullable
as double,stop: freezed == stop ? _self._stop : stop // ignore: cast_nullable_to_non_nullable
as List<String>?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
