// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chatgpt_choice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatGptChoice implements DiagnosticableTreeMixin {

 int get index; ChatGptMessage get message; String? get finishReason;
/// Create a copy of ChatGptChoice
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatGptChoiceCopyWith<ChatGptChoice> get copyWith => _$ChatGptChoiceCopyWithImpl<ChatGptChoice>(this as ChatGptChoice, _$identity);

  /// Serializes this ChatGptChoice to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatGptChoice'))
    ..add(DiagnosticsProperty('index', index))..add(DiagnosticsProperty('message', message))..add(DiagnosticsProperty('finishReason', finishReason));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatGptChoice&&(identical(other.index, index) || other.index == index)&&(identical(other.message, message) || other.message == message)&&(identical(other.finishReason, finishReason) || other.finishReason == finishReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,index,message,finishReason);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatGptChoice(index: $index, message: $message, finishReason: $finishReason)';
}


}

/// @nodoc
abstract mixin class $ChatGptChoiceCopyWith<$Res>  {
  factory $ChatGptChoiceCopyWith(ChatGptChoice value, $Res Function(ChatGptChoice) _then) = _$ChatGptChoiceCopyWithImpl;
@useResult
$Res call({
 int index, ChatGptMessage message, String? finishReason
});


$ChatGptMessageCopyWith<$Res> get message;

}
/// @nodoc
class _$ChatGptChoiceCopyWithImpl<$Res>
    implements $ChatGptChoiceCopyWith<$Res> {
  _$ChatGptChoiceCopyWithImpl(this._self, this._then);

  final ChatGptChoice _self;
  final $Res Function(ChatGptChoice) _then;

/// Create a copy of ChatGptChoice
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? index = null,Object? message = null,Object? finishReason = freezed,}) {
  return _then(_self.copyWith(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as ChatGptMessage,finishReason: freezed == finishReason ? _self.finishReason : finishReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ChatGptChoice
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatGptMessageCopyWith<$Res> get message {
  
  return $ChatGptMessageCopyWith<$Res>(_self.message, (value) {
    return _then(_self.copyWith(message: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChatGptChoice].
extension ChatGptChoicePatterns on ChatGptChoice {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatGptChoice value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatGptChoice() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatGptChoice value)  $default,){
final _that = this;
switch (_that) {
case _ChatGptChoice():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatGptChoice value)?  $default,){
final _that = this;
switch (_that) {
case _ChatGptChoice() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int index,  ChatGptMessage message,  String? finishReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatGptChoice() when $default != null:
return $default(_that.index,_that.message,_that.finishReason);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int index,  ChatGptMessage message,  String? finishReason)  $default,) {final _that = this;
switch (_that) {
case _ChatGptChoice():
return $default(_that.index,_that.message,_that.finishReason);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int index,  ChatGptMessage message,  String? finishReason)?  $default,) {final _that = this;
switch (_that) {
case _ChatGptChoice() when $default != null:
return $default(_that.index,_that.message,_that.finishReason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatGptChoice with DiagnosticableTreeMixin implements ChatGptChoice {
  const _ChatGptChoice({this.index = 0, required this.message, this.finishReason});
  factory _ChatGptChoice.fromJson(Map<String, dynamic> json) => _$ChatGptChoiceFromJson(json);

@override@JsonKey() final  int index;
@override final  ChatGptMessage message;
@override final  String? finishReason;

/// Create a copy of ChatGptChoice
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatGptChoiceCopyWith<_ChatGptChoice> get copyWith => __$ChatGptChoiceCopyWithImpl<_ChatGptChoice>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatGptChoiceToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatGptChoice'))
    ..add(DiagnosticsProperty('index', index))..add(DiagnosticsProperty('message', message))..add(DiagnosticsProperty('finishReason', finishReason));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatGptChoice&&(identical(other.index, index) || other.index == index)&&(identical(other.message, message) || other.message == message)&&(identical(other.finishReason, finishReason) || other.finishReason == finishReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,index,message,finishReason);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatGptChoice(index: $index, message: $message, finishReason: $finishReason)';
}


}

/// @nodoc
abstract mixin class _$ChatGptChoiceCopyWith<$Res> implements $ChatGptChoiceCopyWith<$Res> {
  factory _$ChatGptChoiceCopyWith(_ChatGptChoice value, $Res Function(_ChatGptChoice) _then) = __$ChatGptChoiceCopyWithImpl;
@override @useResult
$Res call({
 int index, ChatGptMessage message, String? finishReason
});


@override $ChatGptMessageCopyWith<$Res> get message;

}
/// @nodoc
class __$ChatGptChoiceCopyWithImpl<$Res>
    implements _$ChatGptChoiceCopyWith<$Res> {
  __$ChatGptChoiceCopyWithImpl(this._self, this._then);

  final _ChatGptChoice _self;
  final $Res Function(_ChatGptChoice) _then;

/// Create a copy of ChatGptChoice
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? index = null,Object? message = null,Object? finishReason = freezed,}) {
  return _then(_ChatGptChoice(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as ChatGptMessage,finishReason: freezed == finishReason ? _self.finishReason : finishReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ChatGptChoice
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatGptMessageCopyWith<$Res> get message {
  
  return $ChatGptMessageCopyWith<$Res>(_self.message, (value) {
    return _then(_self.copyWith(message: value));
  });
}
}

// dart format on
