// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fitness_goals_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FitnessGoalsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FitnessGoalsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FitnessGoalsState()';
}


}

/// @nodoc
class $FitnessGoalsStateCopyWith<$Res>  {
$FitnessGoalsStateCopyWith(FitnessGoalsState _, $Res Function(FitnessGoalsState) __);
}


/// @nodoc


class FitnessGoalsStateInitial implements FitnessGoalsState {
  const FitnessGoalsStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FitnessGoalsStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FitnessGoalsState.initial()';
}


}




/// @nodoc


class FitnessGoalsStateLoaded implements FitnessGoalsState {
  const FitnessGoalsStateLoaded({required final  Set<String> selectedGoals}): _selectedGoals = selectedGoals;
  

 final  Set<String> _selectedGoals;
 Set<String> get selectedGoals {
  if (_selectedGoals is EqualUnmodifiableSetView) return _selectedGoals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_selectedGoals);
}


/// Create a copy of FitnessGoalsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FitnessGoalsStateLoadedCopyWith<FitnessGoalsStateLoaded> get copyWith => _$FitnessGoalsStateLoadedCopyWithImpl<FitnessGoalsStateLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FitnessGoalsStateLoaded&&const DeepCollectionEquality().equals(other._selectedGoals, _selectedGoals));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_selectedGoals));

@override
String toString() {
  return 'FitnessGoalsState.loaded(selectedGoals: $selectedGoals)';
}


}

/// @nodoc
abstract mixin class $FitnessGoalsStateLoadedCopyWith<$Res> implements $FitnessGoalsStateCopyWith<$Res> {
  factory $FitnessGoalsStateLoadedCopyWith(FitnessGoalsStateLoaded value, $Res Function(FitnessGoalsStateLoaded) _then) = _$FitnessGoalsStateLoadedCopyWithImpl;
@useResult
$Res call({
 Set<String> selectedGoals
});




}
/// @nodoc
class _$FitnessGoalsStateLoadedCopyWithImpl<$Res>
    implements $FitnessGoalsStateLoadedCopyWith<$Res> {
  _$FitnessGoalsStateLoadedCopyWithImpl(this._self, this._then);

  final FitnessGoalsStateLoaded _self;
  final $Res Function(FitnessGoalsStateLoaded) _then;

/// Create a copy of FitnessGoalsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedGoals = null,}) {
  return _then(FitnessGoalsStateLoaded(
selectedGoals: null == selectedGoals ? _self._selectedGoals : selectedGoals // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}


}

/// @nodoc


class FitnessGoalsStateError implements FitnessGoalsState {
  const FitnessGoalsStateError({required this.message});
  

 final  String message;

/// Create a copy of FitnessGoalsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FitnessGoalsStateErrorCopyWith<FitnessGoalsStateError> get copyWith => _$FitnessGoalsStateErrorCopyWithImpl<FitnessGoalsStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FitnessGoalsStateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'FitnessGoalsState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $FitnessGoalsStateErrorCopyWith<$Res> implements $FitnessGoalsStateCopyWith<$Res> {
  factory $FitnessGoalsStateErrorCopyWith(FitnessGoalsStateError value, $Res Function(FitnessGoalsStateError) _then) = _$FitnessGoalsStateErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$FitnessGoalsStateErrorCopyWithImpl<$Res>
    implements $FitnessGoalsStateErrorCopyWith<$Res> {
  _$FitnessGoalsStateErrorCopyWithImpl(this._self, this._then);

  final FitnessGoalsStateError _self;
  final $Res Function(FitnessGoalsStateError) _then;

/// Create a copy of FitnessGoalsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(FitnessGoalsStateError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class FitnessGoalsStateNext implements FitnessGoalsState {
  const FitnessGoalsStateNext({required this.path});
  

 final  String path;

/// Create a copy of FitnessGoalsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FitnessGoalsStateNextCopyWith<FitnessGoalsStateNext> get copyWith => _$FitnessGoalsStateNextCopyWithImpl<FitnessGoalsStateNext>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FitnessGoalsStateNext&&(identical(other.path, path) || other.path == path));
}


@override
int get hashCode => Object.hash(runtimeType,path);

@override
String toString() {
  return 'FitnessGoalsState.next(path: $path)';
}


}

/// @nodoc
abstract mixin class $FitnessGoalsStateNextCopyWith<$Res> implements $FitnessGoalsStateCopyWith<$Res> {
  factory $FitnessGoalsStateNextCopyWith(FitnessGoalsStateNext value, $Res Function(FitnessGoalsStateNext) _then) = _$FitnessGoalsStateNextCopyWithImpl;
@useResult
$Res call({
 String path
});




}
/// @nodoc
class _$FitnessGoalsStateNextCopyWithImpl<$Res>
    implements $FitnessGoalsStateNextCopyWith<$Res> {
  _$FitnessGoalsStateNextCopyWithImpl(this._self, this._then);

  final FitnessGoalsStateNext _self;
  final $Res Function(FitnessGoalsStateNext) _then;

/// Create a copy of FitnessGoalsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? path = null,}) {
  return _then(FitnessGoalsStateNext(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class FitnessGoalsStateComplete implements FitnessGoalsState {
  const FitnessGoalsStateComplete();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FitnessGoalsStateComplete);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FitnessGoalsState.complete()';
}


}




// dart format on
