// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'welcome_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WelcomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WelcomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WelcomeState()';
}


}

/// @nodoc
class $WelcomeStateCopyWith<$Res>  {
$WelcomeStateCopyWith(WelcomeState _, $Res Function(WelcomeState) __);
}


/// @nodoc


class _Initial implements WelcomeState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WelcomeState.initial()';
}


}




/// @nodoc


class _Ready implements WelcomeState {
  const _Ready({required this.givenName});
  

 final  String givenName;

/// Create a copy of WelcomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReadyCopyWith<_Ready> get copyWith => __$ReadyCopyWithImpl<_Ready>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Ready&&(identical(other.givenName, givenName) || other.givenName == givenName));
}


@override
int get hashCode => Object.hash(runtimeType,givenName);

@override
String toString() {
  return 'WelcomeState.ready(givenName: $givenName)';
}


}

/// @nodoc
abstract mixin class _$ReadyCopyWith<$Res> implements $WelcomeStateCopyWith<$Res> {
  factory _$ReadyCopyWith(_Ready value, $Res Function(_Ready) _then) = __$ReadyCopyWithImpl;
@useResult
$Res call({
 String givenName
});




}
/// @nodoc
class __$ReadyCopyWithImpl<$Res>
    implements _$ReadyCopyWith<$Res> {
  __$ReadyCopyWithImpl(this._self, this._then);

  final _Ready _self;
  final $Res Function(_Ready) _then;

/// Create a copy of WelcomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? givenName = null,}) {
  return _then(_Ready(
givenName: null == givenName ? _self.givenName : givenName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
