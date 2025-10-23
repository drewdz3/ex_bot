// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_complete_cubit.dart';

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


/// Adds pattern-matching-related methods to [OnboardingCompleteState].
extension OnboardingCompleteStatePatterns on OnboardingCompleteState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _BasicInfoSaved value)?  basicInfoSaved,TResult Function( _FitnessGoalsSaved value)?  fitnessGoalsSaved,TResult Function( _WorkoutPreferencesSaved value)?  workoutPreferencesSaved,TResult Function( _PhysicalLimitationsSaved value)?  physicalLimitationsSaved,TResult Function( _Saving value)?  saving,TResult Function( _Completed value)?  completed,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _BasicInfoSaved() when basicInfoSaved != null:
return basicInfoSaved(_that);case _FitnessGoalsSaved() when fitnessGoalsSaved != null:
return fitnessGoalsSaved(_that);case _WorkoutPreferencesSaved() when workoutPreferencesSaved != null:
return workoutPreferencesSaved(_that);case _PhysicalLimitationsSaved() when physicalLimitationsSaved != null:
return physicalLimitationsSaved(_that);case _Saving() when saving != null:
return saving(_that);case _Completed() when completed != null:
return completed(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _BasicInfoSaved value)  basicInfoSaved,required TResult Function( _FitnessGoalsSaved value)  fitnessGoalsSaved,required TResult Function( _WorkoutPreferencesSaved value)  workoutPreferencesSaved,required TResult Function( _PhysicalLimitationsSaved value)  physicalLimitationsSaved,required TResult Function( _Saving value)  saving,required TResult Function( _Completed value)  completed,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _BasicInfoSaved():
return basicInfoSaved(_that);case _FitnessGoalsSaved():
return fitnessGoalsSaved(_that);case _WorkoutPreferencesSaved():
return workoutPreferencesSaved(_that);case _PhysicalLimitationsSaved():
return physicalLimitationsSaved(_that);case _Saving():
return saving(_that);case _Completed():
return completed(_that);case _Error():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _BasicInfoSaved value)?  basicInfoSaved,TResult? Function( _FitnessGoalsSaved value)?  fitnessGoalsSaved,TResult? Function( _WorkoutPreferencesSaved value)?  workoutPreferencesSaved,TResult? Function( _PhysicalLimitationsSaved value)?  physicalLimitationsSaved,TResult? Function( _Saving value)?  saving,TResult? Function( _Completed value)?  completed,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _BasicInfoSaved() when basicInfoSaved != null:
return basicInfoSaved(_that);case _FitnessGoalsSaved() when fitnessGoalsSaved != null:
return fitnessGoalsSaved(_that);case _WorkoutPreferencesSaved() when workoutPreferencesSaved != null:
return workoutPreferencesSaved(_that);case _PhysicalLimitationsSaved() when physicalLimitationsSaved != null:
return physicalLimitationsSaved(_that);case _Saving() when saving != null:
return saving(_that);case _Completed() when completed != null:
return completed(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  basicInfoSaved,TResult Function()?  fitnessGoalsSaved,TResult Function()?  workoutPreferencesSaved,TResult Function()?  physicalLimitationsSaved,TResult Function()?  saving,TResult Function( UserPreferences preferences)?  completed,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _BasicInfoSaved() when basicInfoSaved != null:
return basicInfoSaved();case _FitnessGoalsSaved() when fitnessGoalsSaved != null:
return fitnessGoalsSaved();case _WorkoutPreferencesSaved() when workoutPreferencesSaved != null:
return workoutPreferencesSaved();case _PhysicalLimitationsSaved() when physicalLimitationsSaved != null:
return physicalLimitationsSaved();case _Saving() when saving != null:
return saving();case _Completed() when completed != null:
return completed(_that.preferences);case _Error() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  basicInfoSaved,required TResult Function()  fitnessGoalsSaved,required TResult Function()  workoutPreferencesSaved,required TResult Function()  physicalLimitationsSaved,required TResult Function()  saving,required TResult Function( UserPreferences preferences)  completed,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _BasicInfoSaved():
return basicInfoSaved();case _FitnessGoalsSaved():
return fitnessGoalsSaved();case _WorkoutPreferencesSaved():
return workoutPreferencesSaved();case _PhysicalLimitationsSaved():
return physicalLimitationsSaved();case _Saving():
return saving();case _Completed():
return completed(_that.preferences);case _Error():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  basicInfoSaved,TResult? Function()?  fitnessGoalsSaved,TResult? Function()?  workoutPreferencesSaved,TResult? Function()?  physicalLimitationsSaved,TResult? Function()?  saving,TResult? Function( UserPreferences preferences)?  completed,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _BasicInfoSaved() when basicInfoSaved != null:
return basicInfoSaved();case _FitnessGoalsSaved() when fitnessGoalsSaved != null:
return fitnessGoalsSaved();case _WorkoutPreferencesSaved() when workoutPreferencesSaved != null:
return workoutPreferencesSaved();case _PhysicalLimitationsSaved() when physicalLimitationsSaved != null:
return physicalLimitationsSaved();case _Saving() when saving != null:
return saving();case _Completed() when completed != null:
return completed(_that.preferences);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements OnboardingCompleteState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingCompleteState.initial()';
}


}




/// @nodoc


class _BasicInfoSaved implements OnboardingCompleteState {
  const _BasicInfoSaved();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BasicInfoSaved);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingCompleteState.basicInfoSaved()';
}


}




/// @nodoc


class _FitnessGoalsSaved implements OnboardingCompleteState {
  const _FitnessGoalsSaved();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FitnessGoalsSaved);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingCompleteState.fitnessGoalsSaved()';
}


}




/// @nodoc


class _WorkoutPreferencesSaved implements OnboardingCompleteState {
  const _WorkoutPreferencesSaved();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkoutPreferencesSaved);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingCompleteState.workoutPreferencesSaved()';
}


}




/// @nodoc


class _PhysicalLimitationsSaved implements OnboardingCompleteState {
  const _PhysicalLimitationsSaved();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PhysicalLimitationsSaved);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingCompleteState.physicalLimitationsSaved()';
}


}




/// @nodoc


class _Saving implements OnboardingCompleteState {
  const _Saving();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Saving);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingCompleteState.saving()';
}


}




/// @nodoc


class _Completed implements OnboardingCompleteState {
  const _Completed(this.preferences);
  

 final  UserPreferences preferences;

/// Create a copy of OnboardingCompleteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompletedCopyWith<_Completed> get copyWith => __$CompletedCopyWithImpl<_Completed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Completed&&(identical(other.preferences, preferences) || other.preferences == preferences));
}


@override
int get hashCode => Object.hash(runtimeType,preferences);

@override
String toString() {
  return 'OnboardingCompleteState.completed(preferences: $preferences)';
}


}

/// @nodoc
abstract mixin class _$CompletedCopyWith<$Res> implements $OnboardingCompleteStateCopyWith<$Res> {
  factory _$CompletedCopyWith(_Completed value, $Res Function(_Completed) _then) = __$CompletedCopyWithImpl;
@useResult
$Res call({
 UserPreferences preferences
});


$UserPreferencesCopyWith<$Res> get preferences;

}
/// @nodoc
class __$CompletedCopyWithImpl<$Res>
    implements _$CompletedCopyWith<$Res> {
  __$CompletedCopyWithImpl(this._self, this._then);

  final _Completed _self;
  final $Res Function(_Completed) _then;

/// Create a copy of OnboardingCompleteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? preferences = null,}) {
  return _then(_Completed(
null == preferences ? _self.preferences : preferences // ignore: cast_nullable_to_non_nullable
as UserPreferences,
  ));
}

/// Create a copy of OnboardingCompleteState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserPreferencesCopyWith<$Res> get preferences {
  
  return $UserPreferencesCopyWith<$Res>(_self.preferences, (value) {
    return _then(_self.copyWith(preferences: value));
  });
}
}

/// @nodoc


class _Error implements OnboardingCompleteState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of OnboardingCompleteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'OnboardingCompleteState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $OnboardingCompleteStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of OnboardingCompleteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
