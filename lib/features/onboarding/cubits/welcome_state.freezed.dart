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


class WelcomeStateInitial implements WelcomeState {
  const WelcomeStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WelcomeStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WelcomeState.initial()';
}


}




/// @nodoc


class WelcomeStateReady implements WelcomeState {
  const WelcomeStateReady({required this.givenName});
  

 final  String givenName;

/// Create a copy of WelcomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WelcomeStateReadyCopyWith<WelcomeStateReady> get copyWith => _$WelcomeStateReadyCopyWithImpl<WelcomeStateReady>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WelcomeStateReady&&(identical(other.givenName, givenName) || other.givenName == givenName));
}


@override
int get hashCode => Object.hash(runtimeType,givenName);

@override
String toString() {
  return 'WelcomeState.ready(givenName: $givenName)';
}


}

/// @nodoc
abstract mixin class $WelcomeStateReadyCopyWith<$Res> implements $WelcomeStateCopyWith<$Res> {
  factory $WelcomeStateReadyCopyWith(WelcomeStateReady value, $Res Function(WelcomeStateReady) _then) = _$WelcomeStateReadyCopyWithImpl;
@useResult
$Res call({
 String givenName
});




}
/// @nodoc
class _$WelcomeStateReadyCopyWithImpl<$Res>
    implements $WelcomeStateReadyCopyWith<$Res> {
  _$WelcomeStateReadyCopyWithImpl(this._self, this._then);

  final WelcomeStateReady _self;
  final $Res Function(WelcomeStateReady) _then;

/// Create a copy of WelcomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? givenName = null,}) {
  return _then(WelcomeStateReady(
givenName: null == givenName ? _self.givenName : givenName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class WelcomeStateNext implements WelcomeState {
  const WelcomeStateNext({required this.path});
  

 final  String path;

/// Create a copy of WelcomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WelcomeStateNextCopyWith<WelcomeStateNext> get copyWith => _$WelcomeStateNextCopyWithImpl<WelcomeStateNext>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WelcomeStateNext&&(identical(other.path, path) || other.path == path));
}


@override
int get hashCode => Object.hash(runtimeType,path);

@override
String toString() {
  return 'WelcomeState.next(path: $path)';
}


}

/// @nodoc
abstract mixin class $WelcomeStateNextCopyWith<$Res> implements $WelcomeStateCopyWith<$Res> {
  factory $WelcomeStateNextCopyWith(WelcomeStateNext value, $Res Function(WelcomeStateNext) _then) = _$WelcomeStateNextCopyWithImpl;
@useResult
$Res call({
 String path
});




}
/// @nodoc
class _$WelcomeStateNextCopyWithImpl<$Res>
    implements $WelcomeStateNextCopyWith<$Res> {
  _$WelcomeStateNextCopyWithImpl(this._self, this._then);

  final WelcomeStateNext _self;
  final $Res Function(WelcomeStateNext) _then;

/// Create a copy of WelcomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? path = null,}) {
  return _then(WelcomeStateNext(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class WelcomeStateComplete implements WelcomeState {
  const WelcomeStateComplete();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WelcomeStateComplete);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WelcomeState.complete()';
}


}




// dart format on
