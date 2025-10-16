// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chatgpt_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatGptMessage implements DiagnosticableTreeMixin {

 String get role; String get content; String? get name;
/// Create a copy of ChatGptMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatGptMessageCopyWith<ChatGptMessage> get copyWith => _$ChatGptMessageCopyWithImpl<ChatGptMessage>(this as ChatGptMessage, _$identity);

  /// Serializes this ChatGptMessage to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatGptMessage'))
    ..add(DiagnosticsProperty('role', role))..add(DiagnosticsProperty('content', content))..add(DiagnosticsProperty('name', name));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatGptMessage&&(identical(other.role, role) || other.role == role)&&(identical(other.content, content) || other.content == content)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,role,content,name);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatGptMessage(role: $role, content: $content, name: $name)';
}


}

/// @nodoc
abstract mixin class $ChatGptMessageCopyWith<$Res>  {
  factory $ChatGptMessageCopyWith(ChatGptMessage value, $Res Function(ChatGptMessage) _then) = _$ChatGptMessageCopyWithImpl;
@useResult
$Res call({
 String role, String content, String? name
});




}
/// @nodoc
class _$ChatGptMessageCopyWithImpl<$Res>
    implements $ChatGptMessageCopyWith<$Res> {
  _$ChatGptMessageCopyWithImpl(this._self, this._then);

  final ChatGptMessage _self;
  final $Res Function(ChatGptMessage) _then;

/// Create a copy of ChatGptMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? role = null,Object? content = null,Object? name = freezed,}) {
  return _then(_self.copyWith(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatGptMessage].
extension ChatGptMessagePatterns on ChatGptMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatGptMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatGptMessage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatGptMessage value)  $default,){
final _that = this;
switch (_that) {
case _ChatGptMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatGptMessage value)?  $default,){
final _that = this;
switch (_that) {
case _ChatGptMessage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String role,  String content,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatGptMessage() when $default != null:
return $default(_that.role,_that.content,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String role,  String content,  String? name)  $default,) {final _that = this;
switch (_that) {
case _ChatGptMessage():
return $default(_that.role,_that.content,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String role,  String content,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _ChatGptMessage() when $default != null:
return $default(_that.role,_that.content,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatGptMessage with DiagnosticableTreeMixin implements ChatGptMessage {
  const _ChatGptMessage({required this.role, required this.content, this.name});
  factory _ChatGptMessage.fromJson(Map<String, dynamic> json) => _$ChatGptMessageFromJson(json);

@override final  String role;
@override final  String content;
@override final  String? name;

/// Create a copy of ChatGptMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatGptMessageCopyWith<_ChatGptMessage> get copyWith => __$ChatGptMessageCopyWithImpl<_ChatGptMessage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatGptMessageToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatGptMessage'))
    ..add(DiagnosticsProperty('role', role))..add(DiagnosticsProperty('content', content))..add(DiagnosticsProperty('name', name));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatGptMessage&&(identical(other.role, role) || other.role == role)&&(identical(other.content, content) || other.content == content)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,role,content,name);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatGptMessage(role: $role, content: $content, name: $name)';
}


}

/// @nodoc
abstract mixin class _$ChatGptMessageCopyWith<$Res> implements $ChatGptMessageCopyWith<$Res> {
  factory _$ChatGptMessageCopyWith(_ChatGptMessage value, $Res Function(_ChatGptMessage) _then) = __$ChatGptMessageCopyWithImpl;
@override @useResult
$Res call({
 String role, String content, String? name
});




}
/// @nodoc
class __$ChatGptMessageCopyWithImpl<$Res>
    implements _$ChatGptMessageCopyWith<$Res> {
  __$ChatGptMessageCopyWithImpl(this._self, this._then);

  final _ChatGptMessage _self;
  final $Res Function(_ChatGptMessage) _then;

/// Create a copy of ChatGptMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? role = null,Object? content = null,Object? name = freezed,}) {
  return _then(_ChatGptMessage(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
