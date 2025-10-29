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


class Initial implements OnboardingCompleteState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingCompleteState.initial()';
}


}




/// @nodoc


class BasicInfoSaved implements OnboardingCompleteState {
  const BasicInfoSaved();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BasicInfoSaved);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingCompleteState.basicInfoSaved()';
}


}




/// @nodoc


class FitnessGoalsSaved implements OnboardingCompleteState {
  const FitnessGoalsSaved();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FitnessGoalsSaved);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingCompleteState.fitnessGoalsSaved()';
}


}




/// @nodoc


class WorkoutPreferencesSaved implements OnboardingCompleteState {
  const WorkoutPreferencesSaved();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutPreferencesSaved);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingCompleteState.workoutPreferencesSaved()';
}


}




/// @nodoc


class PhysicalLimitationsSaved implements OnboardingCompleteState {
  const PhysicalLimitationsSaved();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PhysicalLimitationsSaved);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingCompleteState.physicalLimitationsSaved()';
}


}




/// @nodoc


class Saving implements OnboardingCompleteState {
  const Saving();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Saving);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingCompleteState.saving()';
}


}




/// @nodoc


class Completed implements OnboardingCompleteState {
  const Completed(this.preferences);
  

 final  UserProfile preferences;

/// Create a copy of OnboardingCompleteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompletedCopyWith<Completed> get copyWith => _$CompletedCopyWithImpl<Completed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Completed&&(identical(other.preferences, preferences) || other.preferences == preferences));
}


@override
int get hashCode => Object.hash(runtimeType,preferences);

@override
String toString() {
  return 'OnboardingCompleteState.completed(preferences: $preferences)';
}


}

/// @nodoc
abstract mixin class $CompletedCopyWith<$Res> implements $OnboardingCompleteStateCopyWith<$Res> {
  factory $CompletedCopyWith(Completed value, $Res Function(Completed) _then) = _$CompletedCopyWithImpl;
@useResult
$Res call({
 UserProfile preferences
});




}
/// @nodoc
class _$CompletedCopyWithImpl<$Res>
    implements $CompletedCopyWith<$Res> {
  _$CompletedCopyWithImpl(this._self, this._then);

  final Completed _self;
  final $Res Function(Completed) _then;

/// Create a copy of OnboardingCompleteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? preferences = null,}) {
  return _then(Completed(
null == preferences ? _self.preferences : preferences // ignore: cast_nullable_to_non_nullable
as UserProfile,
  ));
}


}

/// @nodoc


class Error implements OnboardingCompleteState {
  const Error(this.message);
  

 final  String message;

/// Create a copy of OnboardingCompleteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorCopyWith<Error> get copyWith => _$ErrorCopyWithImpl<Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'OnboardingCompleteState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ErrorCopyWith<$Res> implements $OnboardingCompleteStateCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) _then) = _$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ErrorCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(this._self, this._then);

  final Error _self;
  final $Res Function(Error) _then;

/// Create a copy of OnboardingCompleteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
