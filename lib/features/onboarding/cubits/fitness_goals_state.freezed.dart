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


class _Initial implements FitnessGoalsState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FitnessGoalsState.initial()';
}


}




/// @nodoc


class Loaded implements FitnessGoalsState {
  const Loaded({required final  Set<String> selectedGoals}): _selectedGoals = selectedGoals;
  

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
$LoadedCopyWith<Loaded> get copyWith => _$LoadedCopyWithImpl<Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loaded&&const DeepCollectionEquality().equals(other._selectedGoals, _selectedGoals));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_selectedGoals));

@override
String toString() {
  return 'FitnessGoalsState.loaded(selectedGoals: $selectedGoals)';
}


}

/// @nodoc
abstract mixin class $LoadedCopyWith<$Res> implements $FitnessGoalsStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) _then) = _$LoadedCopyWithImpl;
@useResult
$Res call({
 Set<String> selectedGoals
});




}
/// @nodoc
class _$LoadedCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(this._self, this._then);

  final Loaded _self;
  final $Res Function(Loaded) _then;

/// Create a copy of FitnessGoalsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedGoals = null,}) {
  return _then(Loaded(
selectedGoals: null == selectedGoals ? _self._selectedGoals : selectedGoals // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}


}

// dart format on
