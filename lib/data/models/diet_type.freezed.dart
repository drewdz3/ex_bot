// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diet_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DietType {

 String get id; String get name;
/// Create a copy of DietType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DietTypeCopyWith<DietType> get copyWith => _$DietTypeCopyWithImpl<DietType>(this as DietType, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DietType&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'DietType(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $DietTypeCopyWith<$Res>  {
  factory $DietTypeCopyWith(DietType value, $Res Function(DietType) _then) = _$DietTypeCopyWithImpl;
@useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class _$DietTypeCopyWithImpl<$Res>
    implements $DietTypeCopyWith<$Res> {
  _$DietTypeCopyWithImpl(this._self, this._then);

  final DietType _self;
  final $Res Function(DietType) _then;

/// Create a copy of DietType
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


class _DietType implements DietType {
  const _DietType({required this.id, required this.name});
  

@override final  String id;
@override final  String name;

/// Create a copy of DietType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DietTypeCopyWith<_DietType> get copyWith => __$DietTypeCopyWithImpl<_DietType>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DietType&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'DietType(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$DietTypeCopyWith<$Res> implements $DietTypeCopyWith<$Res> {
  factory _$DietTypeCopyWith(_DietType value, $Res Function(_DietType) _then) = __$DietTypeCopyWithImpl;
@override @useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class __$DietTypeCopyWithImpl<$Res>
    implements _$DietTypeCopyWith<$Res> {
  __$DietTypeCopyWithImpl(this._self, this._then);

  final _DietType _self;
  final $Res Function(_DietType) _then;

/// Create a copy of DietType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_DietType(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
