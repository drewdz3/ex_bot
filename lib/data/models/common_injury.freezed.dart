// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_injury.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CommonInjury implements DiagnosticableTreeMixin {

 String get id; String get name;
/// Create a copy of CommonInjury
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommonInjuryCopyWith<CommonInjury> get copyWith => _$CommonInjuryCopyWithImpl<CommonInjury>(this as CommonInjury, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CommonInjury'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommonInjury&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CommonInjury(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $CommonInjuryCopyWith<$Res>  {
  factory $CommonInjuryCopyWith(CommonInjury value, $Res Function(CommonInjury) _then) = _$CommonInjuryCopyWithImpl;
@useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class _$CommonInjuryCopyWithImpl<$Res>
    implements $CommonInjuryCopyWith<$Res> {
  _$CommonInjuryCopyWithImpl(this._self, this._then);

  final CommonInjury _self;
  final $Res Function(CommonInjury) _then;

/// Create a copy of CommonInjury
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


class _CommonInjury with DiagnosticableTreeMixin implements CommonInjury {
  const _CommonInjury({required this.id, required this.name});
  

@override final  String id;
@override final  String name;

/// Create a copy of CommonInjury
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommonInjuryCopyWith<_CommonInjury> get copyWith => __$CommonInjuryCopyWithImpl<_CommonInjury>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CommonInjury'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommonInjury&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CommonInjury(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$CommonInjuryCopyWith<$Res> implements $CommonInjuryCopyWith<$Res> {
  factory _$CommonInjuryCopyWith(_CommonInjury value, $Res Function(_CommonInjury) _then) = __$CommonInjuryCopyWithImpl;
@override @useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class __$CommonInjuryCopyWithImpl<$Res>
    implements _$CommonInjuryCopyWith<$Res> {
  __$CommonInjuryCopyWithImpl(this._self, this._then);

  final _CommonInjury _self;
  final $Res Function(_CommonInjury) _then;

/// Create a copy of CommonInjury
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_CommonInjury(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
