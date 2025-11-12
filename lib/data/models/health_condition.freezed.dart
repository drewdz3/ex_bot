// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_condition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HealthCondition {

 String get id; String get name;
/// Create a copy of HealthCondition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HealthConditionCopyWith<HealthCondition> get copyWith => _$HealthConditionCopyWithImpl<HealthCondition>(this as HealthCondition, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealthCondition&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'HealthCondition(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $HealthConditionCopyWith<$Res>  {
  factory $HealthConditionCopyWith(HealthCondition value, $Res Function(HealthCondition) _then) = _$HealthConditionCopyWithImpl;
@useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class _$HealthConditionCopyWithImpl<$Res>
    implements $HealthConditionCopyWith<$Res> {
  _$HealthConditionCopyWithImpl(this._self, this._then);

  final HealthCondition _self;
  final $Res Function(HealthCondition) _then;

/// Create a copy of HealthCondition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _HealthCondition implements HealthCondition {
  const _HealthCondition({required this.id, required this.name});
  

@override final  String id;
@override final  String name;

/// Create a copy of HealthCondition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HealthConditionCopyWith<_HealthCondition> get copyWith => __$HealthConditionCopyWithImpl<_HealthCondition>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HealthCondition&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'HealthCondition(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$HealthConditionCopyWith<$Res> implements $HealthConditionCopyWith<$Res> {
  factory _$HealthConditionCopyWith(_HealthCondition value, $Res Function(_HealthCondition) _then) = __$HealthConditionCopyWithImpl;
@override @useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class __$HealthConditionCopyWithImpl<$Res>
    implements _$HealthConditionCopyWith<$Res> {
  __$HealthConditionCopyWithImpl(this._self, this._then);

  final _HealthCondition _self;
  final $Res Function(_HealthCondition) _then;

/// Create a copy of HealthCondition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_HealthCondition(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
