// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dietary_preferences_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DietaryPreferencesState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DietaryPreferencesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DietaryPreferencesState()';
}


}

/// @nodoc
class $DietaryPreferencesStateCopyWith<$Res>  {
$DietaryPreferencesStateCopyWith(DietaryPreferencesState _, $Res Function(DietaryPreferencesState) __);
}


/// @nodoc


class Initial implements DietaryPreferencesState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DietaryPreferencesState.initial()';
}


}




/// @nodoc


class Loaded implements DietaryPreferencesState {
  const Loaded({required final  List<String> dietaryRestrictions, required final  List<String> allergies}): _dietaryRestrictions = dietaryRestrictions,_allergies = allergies;
  

 final  List<String> _dietaryRestrictions;
 List<String> get dietaryRestrictions {
  if (_dietaryRestrictions is EqualUnmodifiableListView) return _dietaryRestrictions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dietaryRestrictions);
}

 final  List<String> _allergies;
 List<String> get allergies {
  if (_allergies is EqualUnmodifiableListView) return _allergies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allergies);
}


/// Create a copy of DietaryPreferencesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedCopyWith<Loaded> get copyWith => _$LoadedCopyWithImpl<Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loaded&&const DeepCollectionEquality().equals(other._dietaryRestrictions, _dietaryRestrictions)&&const DeepCollectionEquality().equals(other._allergies, _allergies));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_dietaryRestrictions),const DeepCollectionEquality().hash(_allergies));

@override
String toString() {
  return 'DietaryPreferencesState.loaded(dietaryRestrictions: $dietaryRestrictions, allergies: $allergies)';
}


}

/// @nodoc
abstract mixin class $LoadedCopyWith<$Res> implements $DietaryPreferencesStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) _then) = _$LoadedCopyWithImpl;
@useResult
$Res call({
 List<String> dietaryRestrictions, List<String> allergies
});




}
/// @nodoc
class _$LoadedCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(this._self, this._then);

  final Loaded _self;
  final $Res Function(Loaded) _then;

/// Create a copy of DietaryPreferencesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? dietaryRestrictions = null,Object? allergies = null,}) {
  return _then(Loaded(
dietaryRestrictions: null == dietaryRestrictions ? _self._dietaryRestrictions : dietaryRestrictions // ignore: cast_nullable_to_non_nullable
as List<String>,allergies: null == allergies ? _self._allergies : allergies // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
