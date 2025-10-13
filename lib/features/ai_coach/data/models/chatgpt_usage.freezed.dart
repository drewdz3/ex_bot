// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chatgpt_usage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatGptUsage implements DiagnosticableTreeMixin {

 int get promptTokens; int get completionTokens; int get totalTokens;
/// Create a copy of ChatGptUsage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatGptUsageCopyWith<ChatGptUsage> get copyWith => _$ChatGptUsageCopyWithImpl<ChatGptUsage>(this as ChatGptUsage, _$identity);

  /// Serializes this ChatGptUsage to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatGptUsage'))
    ..add(DiagnosticsProperty('promptTokens', promptTokens))..add(DiagnosticsProperty('completionTokens', completionTokens))..add(DiagnosticsProperty('totalTokens', totalTokens));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatGptUsage&&(identical(other.promptTokens, promptTokens) || other.promptTokens == promptTokens)&&(identical(other.completionTokens, completionTokens) || other.completionTokens == completionTokens)&&(identical(other.totalTokens, totalTokens) || other.totalTokens == totalTokens));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,promptTokens,completionTokens,totalTokens);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatGptUsage(promptTokens: $promptTokens, completionTokens: $completionTokens, totalTokens: $totalTokens)';
}


}

/// @nodoc
abstract mixin class $ChatGptUsageCopyWith<$Res>  {
  factory $ChatGptUsageCopyWith(ChatGptUsage value, $Res Function(ChatGptUsage) _then) = _$ChatGptUsageCopyWithImpl;
@useResult
$Res call({
 int promptTokens, int completionTokens, int totalTokens
});




}
/// @nodoc
class _$ChatGptUsageCopyWithImpl<$Res>
    implements $ChatGptUsageCopyWith<$Res> {
  _$ChatGptUsageCopyWithImpl(this._self, this._then);

  final ChatGptUsage _self;
  final $Res Function(ChatGptUsage) _then;

/// Create a copy of ChatGptUsage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? promptTokens = null,Object? completionTokens = null,Object? totalTokens = null,}) {
  return _then(_self.copyWith(
promptTokens: null == promptTokens ? _self.promptTokens : promptTokens // ignore: cast_nullable_to_non_nullable
as int,completionTokens: null == completionTokens ? _self.completionTokens : completionTokens // ignore: cast_nullable_to_non_nullable
as int,totalTokens: null == totalTokens ? _self.totalTokens : totalTokens // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatGptUsage].
extension ChatGptUsagePatterns on ChatGptUsage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatGptUsage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatGptUsage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatGptUsage value)  $default,){
final _that = this;
switch (_that) {
case _ChatGptUsage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatGptUsage value)?  $default,){
final _that = this;
switch (_that) {
case _ChatGptUsage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int promptTokens,  int completionTokens,  int totalTokens)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatGptUsage() when $default != null:
return $default(_that.promptTokens,_that.completionTokens,_that.totalTokens);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int promptTokens,  int completionTokens,  int totalTokens)  $default,) {final _that = this;
switch (_that) {
case _ChatGptUsage():
return $default(_that.promptTokens,_that.completionTokens,_that.totalTokens);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int promptTokens,  int completionTokens,  int totalTokens)?  $default,) {final _that = this;
switch (_that) {
case _ChatGptUsage() when $default != null:
return $default(_that.promptTokens,_that.completionTokens,_that.totalTokens);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatGptUsage with DiagnosticableTreeMixin implements ChatGptUsage {
  const _ChatGptUsage({required this.promptTokens, required this.completionTokens, required this.totalTokens});
  factory _ChatGptUsage.fromJson(Map<String, dynamic> json) => _$ChatGptUsageFromJson(json);

@override final  int promptTokens;
@override final  int completionTokens;
@override final  int totalTokens;

/// Create a copy of ChatGptUsage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatGptUsageCopyWith<_ChatGptUsage> get copyWith => __$ChatGptUsageCopyWithImpl<_ChatGptUsage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatGptUsageToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatGptUsage'))
    ..add(DiagnosticsProperty('promptTokens', promptTokens))..add(DiagnosticsProperty('completionTokens', completionTokens))..add(DiagnosticsProperty('totalTokens', totalTokens));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatGptUsage&&(identical(other.promptTokens, promptTokens) || other.promptTokens == promptTokens)&&(identical(other.completionTokens, completionTokens) || other.completionTokens == completionTokens)&&(identical(other.totalTokens, totalTokens) || other.totalTokens == totalTokens));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,promptTokens,completionTokens,totalTokens);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatGptUsage(promptTokens: $promptTokens, completionTokens: $completionTokens, totalTokens: $totalTokens)';
}


}

/// @nodoc
abstract mixin class _$ChatGptUsageCopyWith<$Res> implements $ChatGptUsageCopyWith<$Res> {
  factory _$ChatGptUsageCopyWith(_ChatGptUsage value, $Res Function(_ChatGptUsage) _then) = __$ChatGptUsageCopyWithImpl;
@override @useResult
$Res call({
 int promptTokens, int completionTokens, int totalTokens
});




}
/// @nodoc
class __$ChatGptUsageCopyWithImpl<$Res>
    implements _$ChatGptUsageCopyWith<$Res> {
  __$ChatGptUsageCopyWithImpl(this._self, this._then);

  final _ChatGptUsage _self;
  final $Res Function(_ChatGptUsage) _then;

/// Create a copy of ChatGptUsage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? promptTokens = null,Object? completionTokens = null,Object? totalTokens = null,}) {
  return _then(_ChatGptUsage(
promptTokens: null == promptTokens ? _self.promptTokens : promptTokens // ignore: cast_nullable_to_non_nullable
as int,completionTokens: null == completionTokens ? _self.completionTokens : completionTokens // ignore: cast_nullable_to_non_nullable
as int,totalTokens: null == totalTokens ? _self.totalTokens : totalTokens // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
