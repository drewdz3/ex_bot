// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_preferences_cubit.dart';

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


/// Adds pattern-matching-related methods to [WorkoutPreferencesState].
extension WorkoutPreferencesStatePatterns on WorkoutPreferencesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loaded value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loaded value)  loaded,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loaded():
return loaded(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loaded value)?  loaded,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( List<WorkoutType> workoutTypes,  List<Equipment> availableEquipment)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loaded() when loaded != null:
return loaded(_that.workoutTypes,_that.availableEquipment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( List<WorkoutType> workoutTypes,  List<Equipment> availableEquipment)  loaded,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loaded():
return loaded(_that.workoutTypes,_that.availableEquipment);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( List<WorkoutType> workoutTypes,  List<Equipment> availableEquipment)?  loaded,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loaded() when loaded != null:
return loaded(_that.workoutTypes,_that.availableEquipment);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements WorkoutPreferencesState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WorkoutPreferencesState.initial()';
}


}




/// @nodoc


class _Loaded implements WorkoutPreferencesState {
  const _Loaded({required final  List<WorkoutType> workoutTypes, required final  List<Equipment> availableEquipment}): _workoutTypes = workoutTypes,_availableEquipment = availableEquipment;
  

 final  List<WorkoutType> _workoutTypes;
 List<WorkoutType> get workoutTypes {
  if (_workoutTypes is EqualUnmodifiableListView) return _workoutTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_workoutTypes);
}

 final  List<Equipment> _availableEquipment;
 List<Equipment> get availableEquipment {
  if (_availableEquipment is EqualUnmodifiableListView) return _availableEquipment;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_availableEquipment);
}


/// Create a copy of WorkoutPreferencesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&const DeepCollectionEquality().equals(other._workoutTypes, _workoutTypes)&&const DeepCollectionEquality().equals(other._availableEquipment, _availableEquipment));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_workoutTypes),const DeepCollectionEquality().hash(_availableEquipment));

@override
String toString() {
  return 'WorkoutPreferencesState.loaded(workoutTypes: $workoutTypes, availableEquipment: $availableEquipment)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $WorkoutPreferencesStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 List<WorkoutType> workoutTypes, List<Equipment> availableEquipment
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of WorkoutPreferencesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? workoutTypes = null,Object? availableEquipment = null,}) {
  return _then(_Loaded(
workoutTypes: null == workoutTypes ? _self._workoutTypes : workoutTypes // ignore: cast_nullable_to_non_nullable
as List<WorkoutType>,availableEquipment: null == availableEquipment ? _self._availableEquipment : availableEquipment // ignore: cast_nullable_to_non_nullable
as List<Equipment>,
  ));
}


}

// dart format on
