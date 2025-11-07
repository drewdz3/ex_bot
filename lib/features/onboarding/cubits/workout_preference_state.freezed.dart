// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_preference_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WorkoutPreferencesState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutPreferencesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WorkoutPreferencesState()';
}


}

/// @nodoc
class $WorkoutPreferencesStateCopyWith<$Res>  {
$WorkoutPreferencesStateCopyWith(WorkoutPreferencesState _, $Res Function(WorkoutPreferencesState) __);
}


/// @nodoc


class WorkoutPreferencesStateInitial implements WorkoutPreferencesState {
  const WorkoutPreferencesStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutPreferencesStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WorkoutPreferencesState.initial()';
}


}




/// @nodoc


class WorkoutPreferencesStateLoaded implements WorkoutPreferencesState {
  const WorkoutPreferencesStateLoaded({required final  Set<String> workoutTypes, required final  Set<String> availableEquipment}): _workoutTypes = workoutTypes,_availableEquipment = availableEquipment;
  

 final  Set<String> _workoutTypes;
 Set<String> get workoutTypes {
  if (_workoutTypes is EqualUnmodifiableSetView) return _workoutTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_workoutTypes);
}

 final  Set<String> _availableEquipment;
 Set<String> get availableEquipment {
  if (_availableEquipment is EqualUnmodifiableSetView) return _availableEquipment;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_availableEquipment);
}


/// Create a copy of WorkoutPreferencesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkoutPreferencesStateLoadedCopyWith<WorkoutPreferencesStateLoaded> get copyWith => _$WorkoutPreferencesStateLoadedCopyWithImpl<WorkoutPreferencesStateLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutPreferencesStateLoaded&&const DeepCollectionEquality().equals(other._workoutTypes, _workoutTypes)&&const DeepCollectionEquality().equals(other._availableEquipment, _availableEquipment));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_workoutTypes),const DeepCollectionEquality().hash(_availableEquipment));

@override
String toString() {
  return 'WorkoutPreferencesState.loaded(workoutTypes: $workoutTypes, availableEquipment: $availableEquipment)';
}


}

/// @nodoc
abstract mixin class $WorkoutPreferencesStateLoadedCopyWith<$Res> implements $WorkoutPreferencesStateCopyWith<$Res> {
  factory $WorkoutPreferencesStateLoadedCopyWith(WorkoutPreferencesStateLoaded value, $Res Function(WorkoutPreferencesStateLoaded) _then) = _$WorkoutPreferencesStateLoadedCopyWithImpl;
@useResult
$Res call({
 Set<String> workoutTypes, Set<String> availableEquipment
});




}
/// @nodoc
class _$WorkoutPreferencesStateLoadedCopyWithImpl<$Res>
    implements $WorkoutPreferencesStateLoadedCopyWith<$Res> {
  _$WorkoutPreferencesStateLoadedCopyWithImpl(this._self, this._then);

  final WorkoutPreferencesStateLoaded _self;
  final $Res Function(WorkoutPreferencesStateLoaded) _then;

/// Create a copy of WorkoutPreferencesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? workoutTypes = null,Object? availableEquipment = null,}) {
  return _then(WorkoutPreferencesStateLoaded(
workoutTypes: null == workoutTypes ? _self._workoutTypes : workoutTypes // ignore: cast_nullable_to_non_nullable
as Set<String>,availableEquipment: null == availableEquipment ? _self._availableEquipment : availableEquipment // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}


}

/// @nodoc


class WorkoutPreferencesStateError implements WorkoutPreferencesState {
  const WorkoutPreferencesStateError({required this.message});
  

 final  String message;

/// Create a copy of WorkoutPreferencesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkoutPreferencesStateErrorCopyWith<WorkoutPreferencesStateError> get copyWith => _$WorkoutPreferencesStateErrorCopyWithImpl<WorkoutPreferencesStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutPreferencesStateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'WorkoutPreferencesState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $WorkoutPreferencesStateErrorCopyWith<$Res> implements $WorkoutPreferencesStateCopyWith<$Res> {
  factory $WorkoutPreferencesStateErrorCopyWith(WorkoutPreferencesStateError value, $Res Function(WorkoutPreferencesStateError) _then) = _$WorkoutPreferencesStateErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$WorkoutPreferencesStateErrorCopyWithImpl<$Res>
    implements $WorkoutPreferencesStateErrorCopyWith<$Res> {
  _$WorkoutPreferencesStateErrorCopyWithImpl(this._self, this._then);

  final WorkoutPreferencesStateError _self;
  final $Res Function(WorkoutPreferencesStateError) _then;

/// Create a copy of WorkoutPreferencesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(WorkoutPreferencesStateError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class WorkoutPreferencesStateNext implements WorkoutPreferencesState {
  const WorkoutPreferencesStateNext({required this.path});
  

 final  String path;

/// Create a copy of WorkoutPreferencesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkoutPreferencesStateNextCopyWith<WorkoutPreferencesStateNext> get copyWith => _$WorkoutPreferencesStateNextCopyWithImpl<WorkoutPreferencesStateNext>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutPreferencesStateNext&&(identical(other.path, path) || other.path == path));
}


@override
int get hashCode => Object.hash(runtimeType,path);

@override
String toString() {
  return 'WorkoutPreferencesState.next(path: $path)';
}


}

/// @nodoc
abstract mixin class $WorkoutPreferencesStateNextCopyWith<$Res> implements $WorkoutPreferencesStateCopyWith<$Res> {
  factory $WorkoutPreferencesStateNextCopyWith(WorkoutPreferencesStateNext value, $Res Function(WorkoutPreferencesStateNext) _then) = _$WorkoutPreferencesStateNextCopyWithImpl;
@useResult
$Res call({
 String path
});




}
/// @nodoc
class _$WorkoutPreferencesStateNextCopyWithImpl<$Res>
    implements $WorkoutPreferencesStateNextCopyWith<$Res> {
  _$WorkoutPreferencesStateNextCopyWithImpl(this._self, this._then);

  final WorkoutPreferencesStateNext _self;
  final $Res Function(WorkoutPreferencesStateNext) _then;

/// Create a copy of WorkoutPreferencesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? path = null,}) {
  return _then(WorkoutPreferencesStateNext(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class WorkoutPreferencesStateComplete implements WorkoutPreferencesState {
  const WorkoutPreferencesStateComplete();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutPreferencesStateComplete);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WorkoutPreferencesState.complete()';
}


}




// dart format on
