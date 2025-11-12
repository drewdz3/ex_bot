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


class DietaryPreferencesStateInitial implements DietaryPreferencesState {
  const DietaryPreferencesStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DietaryPreferencesStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DietaryPreferencesState.initial()';
}


}




/// @nodoc


class DietaryPreferencesStateLoaded implements DietaryPreferencesState {
  const DietaryPreferencesStateLoaded({required final  Set<String> selectedDietTypes, required final  Set<String> selectedAllergies}): _selectedDietTypes = selectedDietTypes,_selectedAllergies = selectedAllergies;
  

 final  Set<String> _selectedDietTypes;
 Set<String> get selectedDietTypes {
  if (_selectedDietTypes is EqualUnmodifiableSetView) return _selectedDietTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_selectedDietTypes);
}

 final  Set<String> _selectedAllergies;
 Set<String> get selectedAllergies {
  if (_selectedAllergies is EqualUnmodifiableSetView) return _selectedAllergies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_selectedAllergies);
}


/// Create a copy of DietaryPreferencesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DietaryPreferencesStateLoadedCopyWith<DietaryPreferencesStateLoaded> get copyWith => _$DietaryPreferencesStateLoadedCopyWithImpl<DietaryPreferencesStateLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DietaryPreferencesStateLoaded&&const DeepCollectionEquality().equals(other._selectedDietTypes, _selectedDietTypes)&&const DeepCollectionEquality().equals(other._selectedAllergies, _selectedAllergies));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_selectedDietTypes),const DeepCollectionEquality().hash(_selectedAllergies));

@override
String toString() {
  return 'DietaryPreferencesState.loaded(selectedDietTypes: $selectedDietTypes, selectedAllergies: $selectedAllergies)';
}


}

/// @nodoc
abstract mixin class $DietaryPreferencesStateLoadedCopyWith<$Res> implements $DietaryPreferencesStateCopyWith<$Res> {
  factory $DietaryPreferencesStateLoadedCopyWith(DietaryPreferencesStateLoaded value, $Res Function(DietaryPreferencesStateLoaded) _then) = _$DietaryPreferencesStateLoadedCopyWithImpl;
@useResult
$Res call({
 Set<String> selectedDietTypes, Set<String> selectedAllergies
});




}
/// @nodoc
class _$DietaryPreferencesStateLoadedCopyWithImpl<$Res>
    implements $DietaryPreferencesStateLoadedCopyWith<$Res> {
  _$DietaryPreferencesStateLoadedCopyWithImpl(this._self, this._then);

  final DietaryPreferencesStateLoaded _self;
  final $Res Function(DietaryPreferencesStateLoaded) _then;

/// Create a copy of DietaryPreferencesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedDietTypes = null,Object? selectedAllergies = null,}) {
  return _then(DietaryPreferencesStateLoaded(
selectedDietTypes: null == selectedDietTypes ? _self._selectedDietTypes : selectedDietTypes // ignore: cast_nullable_to_non_nullable
as Set<String>,selectedAllergies: null == selectedAllergies ? _self._selectedAllergies : selectedAllergies // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}


}

/// @nodoc


class DietaryPreferencesStateError implements DietaryPreferencesState {
  const DietaryPreferencesStateError({required this.message});
  

 final  String message;

/// Create a copy of DietaryPreferencesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DietaryPreferencesStateErrorCopyWith<DietaryPreferencesStateError> get copyWith => _$DietaryPreferencesStateErrorCopyWithImpl<DietaryPreferencesStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DietaryPreferencesStateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'DietaryPreferencesState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $DietaryPreferencesStateErrorCopyWith<$Res> implements $DietaryPreferencesStateCopyWith<$Res> {
  factory $DietaryPreferencesStateErrorCopyWith(DietaryPreferencesStateError value, $Res Function(DietaryPreferencesStateError) _then) = _$DietaryPreferencesStateErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$DietaryPreferencesStateErrorCopyWithImpl<$Res>
    implements $DietaryPreferencesStateErrorCopyWith<$Res> {
  _$DietaryPreferencesStateErrorCopyWithImpl(this._self, this._then);

  final DietaryPreferencesStateError _self;
  final $Res Function(DietaryPreferencesStateError) _then;

/// Create a copy of DietaryPreferencesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(DietaryPreferencesStateError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DietaryPreferencesStateNext implements DietaryPreferencesState {
  const DietaryPreferencesStateNext({required this.path});
  

 final  String path;

/// Create a copy of DietaryPreferencesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DietaryPreferencesStateNextCopyWith<DietaryPreferencesStateNext> get copyWith => _$DietaryPreferencesStateNextCopyWithImpl<DietaryPreferencesStateNext>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DietaryPreferencesStateNext&&(identical(other.path, path) || other.path == path));
}


@override
int get hashCode => Object.hash(runtimeType,path);

@override
String toString() {
  return 'DietaryPreferencesState.next(path: $path)';
}


}

/// @nodoc
abstract mixin class $DietaryPreferencesStateNextCopyWith<$Res> implements $DietaryPreferencesStateCopyWith<$Res> {
  factory $DietaryPreferencesStateNextCopyWith(DietaryPreferencesStateNext value, $Res Function(DietaryPreferencesStateNext) _then) = _$DietaryPreferencesStateNextCopyWithImpl;
@useResult
$Res call({
 String path
});




}
/// @nodoc
class _$DietaryPreferencesStateNextCopyWithImpl<$Res>
    implements $DietaryPreferencesStateNextCopyWith<$Res> {
  _$DietaryPreferencesStateNextCopyWithImpl(this._self, this._then);

  final DietaryPreferencesStateNext _self;
  final $Res Function(DietaryPreferencesStateNext) _then;

/// Create a copy of DietaryPreferencesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? path = null,}) {
  return _then(DietaryPreferencesStateNext(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DietaryPreferencesStateComplete implements DietaryPreferencesState {
  const DietaryPreferencesStateComplete();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DietaryPreferencesStateComplete);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DietaryPreferencesState.complete()';
}


}




// dart format on
