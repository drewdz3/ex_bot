// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_schedule_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WorkoutScheduleState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutScheduleState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WorkoutScheduleState()';
}


}

/// @nodoc
class $WorkoutScheduleStateCopyWith<$Res>  {
$WorkoutScheduleStateCopyWith(WorkoutScheduleState _, $Res Function(WorkoutScheduleState) __);
}


/// @nodoc


class WorkoutScheduleStateInitial implements WorkoutScheduleState {
  const WorkoutScheduleStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutScheduleStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WorkoutScheduleState.initial()';
}


}




/// @nodoc


class WorkoutScheduleStateLoaded implements WorkoutScheduleState {
  const WorkoutScheduleStateLoaded({this.frequency, this.duration});
  

 final  int? frequency;
 final  int? duration;

/// Create a copy of WorkoutScheduleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkoutScheduleStateLoadedCopyWith<WorkoutScheduleStateLoaded> get copyWith => _$WorkoutScheduleStateLoadedCopyWithImpl<WorkoutScheduleStateLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutScheduleStateLoaded&&(identical(other.frequency, frequency) || other.frequency == frequency)&&(identical(other.duration, duration) || other.duration == duration));
}


@override
int get hashCode => Object.hash(runtimeType,frequency,duration);

@override
String toString() {
  return 'WorkoutScheduleState.loaded(frequency: $frequency, duration: $duration)';
}


}

/// @nodoc
abstract mixin class $WorkoutScheduleStateLoadedCopyWith<$Res> implements $WorkoutScheduleStateCopyWith<$Res> {
  factory $WorkoutScheduleStateLoadedCopyWith(WorkoutScheduleStateLoaded value, $Res Function(WorkoutScheduleStateLoaded) _then) = _$WorkoutScheduleStateLoadedCopyWithImpl;
@useResult
$Res call({
 int? frequency, int? duration
});




}
/// @nodoc
class _$WorkoutScheduleStateLoadedCopyWithImpl<$Res>
    implements $WorkoutScheduleStateLoadedCopyWith<$Res> {
  _$WorkoutScheduleStateLoadedCopyWithImpl(this._self, this._then);

  final WorkoutScheduleStateLoaded _self;
  final $Res Function(WorkoutScheduleStateLoaded) _then;

/// Create a copy of WorkoutScheduleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? frequency = freezed,Object? duration = freezed,}) {
  return _then(WorkoutScheduleStateLoaded(
frequency: freezed == frequency ? _self.frequency : frequency // ignore: cast_nullable_to_non_nullable
as int?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class WorkoutScheduleStateError implements WorkoutScheduleState {
  const WorkoutScheduleStateError({required this.message});
  

 final  String message;

/// Create a copy of WorkoutScheduleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkoutScheduleStateErrorCopyWith<WorkoutScheduleStateError> get copyWith => _$WorkoutScheduleStateErrorCopyWithImpl<WorkoutScheduleStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutScheduleStateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'WorkoutScheduleState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $WorkoutScheduleStateErrorCopyWith<$Res> implements $WorkoutScheduleStateCopyWith<$Res> {
  factory $WorkoutScheduleStateErrorCopyWith(WorkoutScheduleStateError value, $Res Function(WorkoutScheduleStateError) _then) = _$WorkoutScheduleStateErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$WorkoutScheduleStateErrorCopyWithImpl<$Res>
    implements $WorkoutScheduleStateErrorCopyWith<$Res> {
  _$WorkoutScheduleStateErrorCopyWithImpl(this._self, this._then);

  final WorkoutScheduleStateError _self;
  final $Res Function(WorkoutScheduleStateError) _then;

/// Create a copy of WorkoutScheduleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(WorkoutScheduleStateError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class WorkoutScheduleStateNext implements WorkoutScheduleState {
  const WorkoutScheduleStateNext({required this.path});
  

 final  String path;

/// Create a copy of WorkoutScheduleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkoutScheduleStateNextCopyWith<WorkoutScheduleStateNext> get copyWith => _$WorkoutScheduleStateNextCopyWithImpl<WorkoutScheduleStateNext>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutScheduleStateNext&&(identical(other.path, path) || other.path == path));
}


@override
int get hashCode => Object.hash(runtimeType,path);

@override
String toString() {
  return 'WorkoutScheduleState.next(path: $path)';
}


}

/// @nodoc
abstract mixin class $WorkoutScheduleStateNextCopyWith<$Res> implements $WorkoutScheduleStateCopyWith<$Res> {
  factory $WorkoutScheduleStateNextCopyWith(WorkoutScheduleStateNext value, $Res Function(WorkoutScheduleStateNext) _then) = _$WorkoutScheduleStateNextCopyWithImpl;
@useResult
$Res call({
 String path
});




}
/// @nodoc
class _$WorkoutScheduleStateNextCopyWithImpl<$Res>
    implements $WorkoutScheduleStateNextCopyWith<$Res> {
  _$WorkoutScheduleStateNextCopyWithImpl(this._self, this._then);

  final WorkoutScheduleStateNext _self;
  final $Res Function(WorkoutScheduleStateNext) _then;

/// Create a copy of WorkoutScheduleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? path = null,}) {
  return _then(WorkoutScheduleStateNext(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class WorkoutScheduleStateComplete implements WorkoutScheduleState {
  const WorkoutScheduleStateComplete();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutScheduleStateComplete);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WorkoutScheduleState.complete()';
}


}




// dart format on
