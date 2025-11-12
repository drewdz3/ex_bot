// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_complete_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OnboardingCompleteState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingCompleteState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingCompleteState()';
}


}

/// @nodoc
class $OnboardingCompleteStateCopyWith<$Res>  {
$OnboardingCompleteStateCopyWith(OnboardingCompleteState _, $Res Function(OnboardingCompleteState) __);
}


/// @nodoc


class OnboardingCompleteStateInitial implements OnboardingCompleteState {
  const OnboardingCompleteStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingCompleteStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingCompleteState.initial()';
}


}




/// @nodoc


class OnboardingCompleteStateLoaded implements OnboardingCompleteState {
  const OnboardingCompleteStateLoaded();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingCompleteStateLoaded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingCompleteState.loaded()';
}


}




/// @nodoc


class OnboardingCompleteStateCompleted implements OnboardingCompleteState {
  const OnboardingCompleteStateCompleted({required this.path});
  

 final  String path;

/// Create a copy of OnboardingCompleteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnboardingCompleteStateCompletedCopyWith<OnboardingCompleteStateCompleted> get copyWith => _$OnboardingCompleteStateCompletedCopyWithImpl<OnboardingCompleteStateCompleted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingCompleteStateCompleted&&(identical(other.path, path) || other.path == path));
}


@override
int get hashCode => Object.hash(runtimeType,path);

@override
String toString() {
  return 'OnboardingCompleteState.completed(path: $path)';
}


}

/// @nodoc
abstract mixin class $OnboardingCompleteStateCompletedCopyWith<$Res> implements $OnboardingCompleteStateCopyWith<$Res> {
  factory $OnboardingCompleteStateCompletedCopyWith(OnboardingCompleteStateCompleted value, $Res Function(OnboardingCompleteStateCompleted) _then) = _$OnboardingCompleteStateCompletedCopyWithImpl;
@useResult
$Res call({
 String path
});




}
/// @nodoc
class _$OnboardingCompleteStateCompletedCopyWithImpl<$Res>
    implements $OnboardingCompleteStateCompletedCopyWith<$Res> {
  _$OnboardingCompleteStateCompletedCopyWithImpl(this._self, this._then);

  final OnboardingCompleteStateCompleted _self;
  final $Res Function(OnboardingCompleteStateCompleted) _then;

/// Create a copy of OnboardingCompleteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? path = null,}) {
  return _then(OnboardingCompleteStateCompleted(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class OnboardingCompleteStateError implements OnboardingCompleteState {
  const OnboardingCompleteStateError(this.message);
  

 final  String message;

/// Create a copy of OnboardingCompleteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnboardingCompleteStateErrorCopyWith<OnboardingCompleteStateError> get copyWith => _$OnboardingCompleteStateErrorCopyWithImpl<OnboardingCompleteStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingCompleteStateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'OnboardingCompleteState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $OnboardingCompleteStateErrorCopyWith<$Res> implements $OnboardingCompleteStateCopyWith<$Res> {
  factory $OnboardingCompleteStateErrorCopyWith(OnboardingCompleteStateError value, $Res Function(OnboardingCompleteStateError) _then) = _$OnboardingCompleteStateErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$OnboardingCompleteStateErrorCopyWithImpl<$Res>
    implements $OnboardingCompleteStateErrorCopyWith<$Res> {
  _$OnboardingCompleteStateErrorCopyWithImpl(this._self, this._then);

  final OnboardingCompleteStateError _self;
  final $Res Function(OnboardingCompleteStateError) _then;

/// Create a copy of OnboardingCompleteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(OnboardingCompleteStateError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
