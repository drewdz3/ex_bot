// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fitness_level.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FitnessLevel {

 String get id; String get name;
/// Create a copy of FitnessLevel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FitnessLevelCopyWith<FitnessLevel> get copyWith => _$FitnessLevelCopyWithImpl<FitnessLevel>(this as FitnessLevel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FitnessLevel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'FitnessLevel(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $FitnessLevelCopyWith<$Res>  {
  factory $FitnessLevelCopyWith(FitnessLevel value, $Res Function(FitnessLevel) _then) = _$FitnessLevelCopyWithImpl;
@useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class _$FitnessLevelCopyWithImpl<$Res>
    implements $FitnessLevelCopyWith<$Res> {
  _$FitnessLevelCopyWithImpl(this._self, this._then);

  final FitnessLevel _self;
  final $Res Function(FitnessLevel) _then;

/// Create a copy of FitnessLevel
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


class _FitnessLevel implements FitnessLevel {
  const _FitnessLevel({required this.id, required this.name});
  

@override final  String id;
@override final  String name;

/// Create a copy of FitnessLevel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FitnessLevelCopyWith<_FitnessLevel> get copyWith => __$FitnessLevelCopyWithImpl<_FitnessLevel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FitnessLevel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'FitnessLevel(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$FitnessLevelCopyWith<$Res> implements $FitnessLevelCopyWith<$Res> {
  factory _$FitnessLevelCopyWith(_FitnessLevel value, $Res Function(_FitnessLevel) _then) = __$FitnessLevelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class __$FitnessLevelCopyWithImpl<$Res>
    implements _$FitnessLevelCopyWith<$Res> {
  __$FitnessLevelCopyWithImpl(this._self, this._then);

  final _FitnessLevel _self;
  final $Res Function(_FitnessLevel) _then;

/// Create a copy of FitnessLevel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_FitnessLevel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
