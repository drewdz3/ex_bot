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


class Initial implements WorkoutPreferencesState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WorkoutPreferencesState.initial()';
}


}




/// @nodoc


class Loaded implements WorkoutPreferencesState {
  const Loaded({required final  Set<String> workoutTypes, required final  Set<String> availableEquipment}): _workoutTypes = workoutTypes,_availableEquipment = availableEquipment;
  

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
$LoadedCopyWith<Loaded> get copyWith => _$LoadedCopyWithImpl<Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loaded&&const DeepCollectionEquality().equals(other._workoutTypes, _workoutTypes)&&const DeepCollectionEquality().equals(other._availableEquipment, _availableEquipment));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_workoutTypes),const DeepCollectionEquality().hash(_availableEquipment));

@override
String toString() {
  return 'WorkoutPreferencesState.loaded(workoutTypes: $workoutTypes, availableEquipment: $availableEquipment)';
}


}

/// @nodoc
abstract mixin class $LoadedCopyWith<$Res> implements $WorkoutPreferencesStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) _then) = _$LoadedCopyWithImpl;
@useResult
$Res call({
 Set<String> workoutTypes, Set<String> availableEquipment
});




}
/// @nodoc
class _$LoadedCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(this._self, this._then);

  final Loaded _self;
  final $Res Function(Loaded) _then;

/// Create a copy of WorkoutPreferencesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? workoutTypes = null,Object? availableEquipment = null,}) {
  return _then(Loaded(
workoutTypes: null == workoutTypes ? _self._workoutTypes : workoutTypes // ignore: cast_nullable_to_non_nullable
as Set<String>,availableEquipment: null == availableEquipment ? _self._availableEquipment : availableEquipment // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}


}

// dart format on
