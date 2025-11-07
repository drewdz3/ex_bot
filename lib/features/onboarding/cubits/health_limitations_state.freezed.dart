// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_limitations_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HealthLimitationsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealthLimitationsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HealthLimitationsState()';
}


}

/// @nodoc
class $HealthLimitationsStateCopyWith<$Res>  {
$HealthLimitationsStateCopyWith(HealthLimitationsState _, $Res Function(HealthLimitationsState) __);
}


/// @nodoc


class HealthLimitationsStateInitial implements HealthLimitationsState {
  const HealthLimitationsStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealthLimitationsStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HealthLimitationsState.initial()';
}


}




/// @nodoc


class HealthLimitationsStateLoaded implements HealthLimitationsState {
  const HealthLimitationsStateLoaded({required final  List<String> healthConditions, required final  List<String> injuriesOrLimitations}): _healthConditions = healthConditions,_injuriesOrLimitations = injuriesOrLimitations;
  

 final  List<String> _healthConditions;
 List<String> get healthConditions {
  if (_healthConditions is EqualUnmodifiableListView) return _healthConditions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_healthConditions);
}

 final  List<String> _injuriesOrLimitations;
 List<String> get injuriesOrLimitations {
  if (_injuriesOrLimitations is EqualUnmodifiableListView) return _injuriesOrLimitations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_injuriesOrLimitations);
}


/// Create a copy of HealthLimitationsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HealthLimitationsStateLoadedCopyWith<HealthLimitationsStateLoaded> get copyWith => _$HealthLimitationsStateLoadedCopyWithImpl<HealthLimitationsStateLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealthLimitationsStateLoaded&&const DeepCollectionEquality().equals(other._healthConditions, _healthConditions)&&const DeepCollectionEquality().equals(other._injuriesOrLimitations, _injuriesOrLimitations));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_healthConditions),const DeepCollectionEquality().hash(_injuriesOrLimitations));

@override
String toString() {
  return 'HealthLimitationsState.loaded(healthConditions: $healthConditions, injuriesOrLimitations: $injuriesOrLimitations)';
}


}

/// @nodoc
abstract mixin class $HealthLimitationsStateLoadedCopyWith<$Res> implements $HealthLimitationsStateCopyWith<$Res> {
  factory $HealthLimitationsStateLoadedCopyWith(HealthLimitationsStateLoaded value, $Res Function(HealthLimitationsStateLoaded) _then) = _$HealthLimitationsStateLoadedCopyWithImpl;
@useResult
$Res call({
 List<String> healthConditions, List<String> injuriesOrLimitations
});




}
/// @nodoc
class _$HealthLimitationsStateLoadedCopyWithImpl<$Res>
    implements $HealthLimitationsStateLoadedCopyWith<$Res> {
  _$HealthLimitationsStateLoadedCopyWithImpl(this._self, this._then);

  final HealthLimitationsStateLoaded _self;
  final $Res Function(HealthLimitationsStateLoaded) _then;

/// Create a copy of HealthLimitationsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? healthConditions = null,Object? injuriesOrLimitations = null,}) {
  return _then(HealthLimitationsStateLoaded(
healthConditions: null == healthConditions ? _self._healthConditions : healthConditions // ignore: cast_nullable_to_non_nullable
as List<String>,injuriesOrLimitations: null == injuriesOrLimitations ? _self._injuriesOrLimitations : injuriesOrLimitations // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class HealthLimitationsStateError implements HealthLimitationsState {
  const HealthLimitationsStateError({required this.message});
  

 final  String message;

/// Create a copy of HealthLimitationsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HealthLimitationsStateErrorCopyWith<HealthLimitationsStateError> get copyWith => _$HealthLimitationsStateErrorCopyWithImpl<HealthLimitationsStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealthLimitationsStateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'HealthLimitationsState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $HealthLimitationsStateErrorCopyWith<$Res> implements $HealthLimitationsStateCopyWith<$Res> {
  factory $HealthLimitationsStateErrorCopyWith(HealthLimitationsStateError value, $Res Function(HealthLimitationsStateError) _then) = _$HealthLimitationsStateErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$HealthLimitationsStateErrorCopyWithImpl<$Res>
    implements $HealthLimitationsStateErrorCopyWith<$Res> {
  _$HealthLimitationsStateErrorCopyWithImpl(this._self, this._then);

  final HealthLimitationsStateError _self;
  final $Res Function(HealthLimitationsStateError) _then;

/// Create a copy of HealthLimitationsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(HealthLimitationsStateError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class HealthLimitationsStateNext implements HealthLimitationsState {
  const HealthLimitationsStateNext({required this.path});
  

 final  String path;

/// Create a copy of HealthLimitationsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HealthLimitationsStateNextCopyWith<HealthLimitationsStateNext> get copyWith => _$HealthLimitationsStateNextCopyWithImpl<HealthLimitationsStateNext>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealthLimitationsStateNext&&(identical(other.path, path) || other.path == path));
}


@override
int get hashCode => Object.hash(runtimeType,path);

@override
String toString() {
  return 'HealthLimitationsState.next(path: $path)';
}


}

/// @nodoc
abstract mixin class $HealthLimitationsStateNextCopyWith<$Res> implements $HealthLimitationsStateCopyWith<$Res> {
  factory $HealthLimitationsStateNextCopyWith(HealthLimitationsStateNext value, $Res Function(HealthLimitationsStateNext) _then) = _$HealthLimitationsStateNextCopyWithImpl;
@useResult
$Res call({
 String path
});




}
/// @nodoc
class _$HealthLimitationsStateNextCopyWithImpl<$Res>
    implements $HealthLimitationsStateNextCopyWith<$Res> {
  _$HealthLimitationsStateNextCopyWithImpl(this._self, this._then);

  final HealthLimitationsStateNext _self;
  final $Res Function(HealthLimitationsStateNext) _then;

/// Create a copy of HealthLimitationsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? path = null,}) {
  return _then(HealthLimitationsStateNext(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class HealthLimitationsStateComplete implements HealthLimitationsState {
  const HealthLimitationsStateComplete();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealthLimitationsStateComplete);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HealthLimitationsState.complete()';
}


}




// dart format on
