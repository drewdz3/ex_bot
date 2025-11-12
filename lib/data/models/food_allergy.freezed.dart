// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_allergy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FoodAllergy {

 String get id; String get name;
/// Create a copy of FoodAllergy
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodAllergyCopyWith<FoodAllergy> get copyWith => _$FoodAllergyCopyWithImpl<FoodAllergy>(this as FoodAllergy, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodAllergy&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'FoodAllergy(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $FoodAllergyCopyWith<$Res>  {
  factory $FoodAllergyCopyWith(FoodAllergy value, $Res Function(FoodAllergy) _then) = _$FoodAllergyCopyWithImpl;
@useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class _$FoodAllergyCopyWithImpl<$Res>
    implements $FoodAllergyCopyWith<$Res> {
  _$FoodAllergyCopyWithImpl(this._self, this._then);

  final FoodAllergy _self;
  final $Res Function(FoodAllergy) _then;

/// Create a copy of FoodAllergy
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


class _FoodAllergy implements FoodAllergy {
   _FoodAllergy({required this.id, required this.name});
  

@override final  String id;
@override final  String name;

/// Create a copy of FoodAllergy
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodAllergyCopyWith<_FoodAllergy> get copyWith => __$FoodAllergyCopyWithImpl<_FoodAllergy>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodAllergy&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'FoodAllergy(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$FoodAllergyCopyWith<$Res> implements $FoodAllergyCopyWith<$Res> {
  factory _$FoodAllergyCopyWith(_FoodAllergy value, $Res Function(_FoodAllergy) _then) = __$FoodAllergyCopyWithImpl;
@override @useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class __$FoodAllergyCopyWithImpl<$Res>
    implements _$FoodAllergyCopyWith<$Res> {
  __$FoodAllergyCopyWithImpl(this._self, this._then);

  final _FoodAllergy _self;
  final $Res Function(_FoodAllergy) _then;

/// Create a copy of FoodAllergy
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_FoodAllergy(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
