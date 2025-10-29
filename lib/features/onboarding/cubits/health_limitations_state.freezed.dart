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


class _Initial implements HealthLimitationsState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HealthLimitationsState.initial()';
}


}




/// @nodoc


class Loaded implements HealthLimitationsState {
  const Loaded({required final  List<String> healthConditions, required final  List<String> injuriesOrLimitations}): _healthConditions = healthConditions,_injuriesOrLimitations = injuriesOrLimitations;
  

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
$LoadedCopyWith<Loaded> get copyWith => _$LoadedCopyWithImpl<Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loaded&&const DeepCollectionEquality().equals(other._healthConditions, _healthConditions)&&const DeepCollectionEquality().equals(other._injuriesOrLimitations, _injuriesOrLimitations));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_healthConditions),const DeepCollectionEquality().hash(_injuriesOrLimitations));

@override
String toString() {
  return 'HealthLimitationsState.loaded(healthConditions: $healthConditions, injuriesOrLimitations: $injuriesOrLimitations)';
}


}

/// @nodoc
abstract mixin class $LoadedCopyWith<$Res> implements $HealthLimitationsStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) _then) = _$LoadedCopyWithImpl;
@useResult
$Res call({
 List<String> healthConditions, List<String> injuriesOrLimitations
});




}
/// @nodoc
class _$LoadedCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(this._self, this._then);

  final Loaded _self;
  final $Res Function(Loaded) _then;

/// Create a copy of HealthLimitationsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? healthConditions = null,Object? injuriesOrLimitations = null,}) {
  return _then(Loaded(
healthConditions: null == healthConditions ? _self._healthConditions : healthConditions // ignore: cast_nullable_to_non_nullable
as List<String>,injuriesOrLimitations: null == injuriesOrLimitations ? _self._injuriesOrLimitations : injuriesOrLimitations // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
