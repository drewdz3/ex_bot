// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fitness_goal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FitnessGoal {

 String get id; String get name; String get description; String get icon;
/// Create a copy of FitnessGoal
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FitnessGoalCopyWith<FitnessGoal> get copyWith => _$FitnessGoalCopyWithImpl<FitnessGoal>(this as FitnessGoal, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FitnessGoal&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,description,icon);

@override
String toString() {
  return 'FitnessGoal(id: $id, name: $name, description: $description, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $FitnessGoalCopyWith<$Res>  {
  factory $FitnessGoalCopyWith(FitnessGoal value, $Res Function(FitnessGoal) _then) = _$FitnessGoalCopyWithImpl;
@useResult
$Res call({
 String id, String name, String description, String icon
});




}
/// @nodoc
class _$FitnessGoalCopyWithImpl<$Res>
    implements $FitnessGoalCopyWith<$Res> {
  _$FitnessGoalCopyWithImpl(this._self, this._then);

  final FitnessGoal _self;
  final $Res Function(FitnessGoal) _then;

/// Create a copy of FitnessGoal
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? icon = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _FitnessGoal implements FitnessGoal {
  const _FitnessGoal({required this.id, required this.name, required this.description, required this.icon});
  

@override final  String id;
@override final  String name;
@override final  String description;
@override final  String icon;

/// Create a copy of FitnessGoal
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FitnessGoalCopyWith<_FitnessGoal> get copyWith => __$FitnessGoalCopyWithImpl<_FitnessGoal>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FitnessGoal&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,description,icon);

@override
String toString() {
  return 'FitnessGoal(id: $id, name: $name, description: $description, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$FitnessGoalCopyWith<$Res> implements $FitnessGoalCopyWith<$Res> {
  factory _$FitnessGoalCopyWith(_FitnessGoal value, $Res Function(_FitnessGoal) _then) = __$FitnessGoalCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String description, String icon
});




}
/// @nodoc
class __$FitnessGoalCopyWithImpl<$Res>
    implements _$FitnessGoalCopyWith<$Res> {
  __$FitnessGoalCopyWithImpl(this._self, this._then);

  final _FitnessGoal _self;
  final $Res Function(_FitnessGoal) _then;

/// Create a copy of FitnessGoal
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? icon = null,}) {
  return _then(_FitnessGoal(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
