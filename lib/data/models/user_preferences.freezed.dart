// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_preferences.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserPreferences {

@JsonKey(name: 'id') String get id; String? get fitnessLevel; int? get age; int? get height; double? get weight; String? get gender; int? get workoutsPerWeek; int? get workoutDurationMinutes; String? get onboardingPath; bool get onboardingCompleted; List<String> get fitnessGoals; List<String> get availableEquipment; List<String> get preferredWorkoutTypes; List<String> get dietaryRestrictions; List<String> get medicalConditions; List<String> get injuries; List<String> get allergies; DateTime? get lastUpdated;
/// Create a copy of UserPreferences
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserPreferencesCopyWith<UserPreferences> get copyWith => _$UserPreferencesCopyWithImpl<UserPreferences>(this as UserPreferences, _$identity);

  /// Serializes this UserPreferences to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPreferences&&(identical(other.id, id) || other.id == id)&&(identical(other.fitnessLevel, fitnessLevel) || other.fitnessLevel == fitnessLevel)&&(identical(other.age, age) || other.age == age)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.workoutsPerWeek, workoutsPerWeek) || other.workoutsPerWeek == workoutsPerWeek)&&(identical(other.workoutDurationMinutes, workoutDurationMinutes) || other.workoutDurationMinutes == workoutDurationMinutes)&&(identical(other.onboardingPath, onboardingPath) || other.onboardingPath == onboardingPath)&&(identical(other.onboardingCompleted, onboardingCompleted) || other.onboardingCompleted == onboardingCompleted)&&const DeepCollectionEquality().equals(other.fitnessGoals, fitnessGoals)&&const DeepCollectionEquality().equals(other.availableEquipment, availableEquipment)&&const DeepCollectionEquality().equals(other.preferredWorkoutTypes, preferredWorkoutTypes)&&const DeepCollectionEquality().equals(other.dietaryRestrictions, dietaryRestrictions)&&const DeepCollectionEquality().equals(other.medicalConditions, medicalConditions)&&const DeepCollectionEquality().equals(other.injuries, injuries)&&const DeepCollectionEquality().equals(other.allergies, allergies)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fitnessLevel,age,height,weight,gender,workoutsPerWeek,workoutDurationMinutes,onboardingPath,onboardingCompleted,const DeepCollectionEquality().hash(fitnessGoals),const DeepCollectionEquality().hash(availableEquipment),const DeepCollectionEquality().hash(preferredWorkoutTypes),const DeepCollectionEquality().hash(dietaryRestrictions),const DeepCollectionEquality().hash(medicalConditions),const DeepCollectionEquality().hash(injuries),const DeepCollectionEquality().hash(allergies),lastUpdated);

@override
String toString() {
  return 'UserPreferences(id: $id, fitnessLevel: $fitnessLevel, age: $age, height: $height, weight: $weight, gender: $gender, workoutsPerWeek: $workoutsPerWeek, workoutDurationMinutes: $workoutDurationMinutes, onboardingPath: $onboardingPath, onboardingCompleted: $onboardingCompleted, fitnessGoals: $fitnessGoals, availableEquipment: $availableEquipment, preferredWorkoutTypes: $preferredWorkoutTypes, dietaryRestrictions: $dietaryRestrictions, medicalConditions: $medicalConditions, injuries: $injuries, allergies: $allergies, lastUpdated: $lastUpdated)';
}


}

/// @nodoc
abstract mixin class $UserPreferencesCopyWith<$Res>  {
  factory $UserPreferencesCopyWith(UserPreferences value, $Res Function(UserPreferences) _then) = _$UserPreferencesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id, String? fitnessLevel, int? age, int? height, double? weight, String? gender, int? workoutsPerWeek, int? workoutDurationMinutes, String? onboardingPath, bool onboardingCompleted, List<String> fitnessGoals, List<String> availableEquipment, List<String> preferredWorkoutTypes, List<String> dietaryRestrictions, List<String> medicalConditions, List<String> injuries, List<String> allergies, DateTime? lastUpdated
});




}
/// @nodoc
class _$UserPreferencesCopyWithImpl<$Res>
    implements $UserPreferencesCopyWith<$Res> {
  _$UserPreferencesCopyWithImpl(this._self, this._then);

  final UserPreferences _self;
  final $Res Function(UserPreferences) _then;

/// Create a copy of UserPreferences
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fitnessLevel = freezed,Object? age = freezed,Object? height = freezed,Object? weight = freezed,Object? gender = freezed,Object? workoutsPerWeek = freezed,Object? workoutDurationMinutes = freezed,Object? onboardingPath = freezed,Object? onboardingCompleted = null,Object? fitnessGoals = null,Object? availableEquipment = null,Object? preferredWorkoutTypes = null,Object? dietaryRestrictions = null,Object? medicalConditions = null,Object? injuries = null,Object? allergies = null,Object? lastUpdated = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fitnessLevel: freezed == fitnessLevel ? _self.fitnessLevel : fitnessLevel // ignore: cast_nullable_to_non_nullable
as String?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,workoutsPerWeek: freezed == workoutsPerWeek ? _self.workoutsPerWeek : workoutsPerWeek // ignore: cast_nullable_to_non_nullable
as int?,workoutDurationMinutes: freezed == workoutDurationMinutes ? _self.workoutDurationMinutes : workoutDurationMinutes // ignore: cast_nullable_to_non_nullable
as int?,onboardingPath: freezed == onboardingPath ? _self.onboardingPath : onboardingPath // ignore: cast_nullable_to_non_nullable
as String?,onboardingCompleted: null == onboardingCompleted ? _self.onboardingCompleted : onboardingCompleted // ignore: cast_nullable_to_non_nullable
as bool,fitnessGoals: null == fitnessGoals ? _self.fitnessGoals : fitnessGoals // ignore: cast_nullable_to_non_nullable
as List<String>,availableEquipment: null == availableEquipment ? _self.availableEquipment : availableEquipment // ignore: cast_nullable_to_non_nullable
as List<String>,preferredWorkoutTypes: null == preferredWorkoutTypes ? _self.preferredWorkoutTypes : preferredWorkoutTypes // ignore: cast_nullable_to_non_nullable
as List<String>,dietaryRestrictions: null == dietaryRestrictions ? _self.dietaryRestrictions : dietaryRestrictions // ignore: cast_nullable_to_non_nullable
as List<String>,medicalConditions: null == medicalConditions ? _self.medicalConditions : medicalConditions // ignore: cast_nullable_to_non_nullable
as List<String>,injuries: null == injuries ? _self.injuries : injuries // ignore: cast_nullable_to_non_nullable
as List<String>,allergies: null == allergies ? _self.allergies : allergies // ignore: cast_nullable_to_non_nullable
as List<String>,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _UserPreferences implements UserPreferences {
  const _UserPreferences({@JsonKey(name: 'id') required this.id, this.fitnessLevel, this.age, this.height, this.weight, this.gender, this.workoutsPerWeek, this.workoutDurationMinutes, this.onboardingPath, this.onboardingCompleted = false, final  List<String> fitnessGoals = const [], final  List<String> availableEquipment = const [], final  List<String> preferredWorkoutTypes = const [], final  List<String> dietaryRestrictions = const [], final  List<String> medicalConditions = const [], final  List<String> injuries = const [], final  List<String> allergies = const [], this.lastUpdated}): _fitnessGoals = fitnessGoals,_availableEquipment = availableEquipment,_preferredWorkoutTypes = preferredWorkoutTypes,_dietaryRestrictions = dietaryRestrictions,_medicalConditions = medicalConditions,_injuries = injuries,_allergies = allergies;
  factory _UserPreferences.fromJson(Map<String, dynamic> json) => _$UserPreferencesFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override final  String? fitnessLevel;
@override final  int? age;
@override final  int? height;
@override final  double? weight;
@override final  String? gender;
@override final  int? workoutsPerWeek;
@override final  int? workoutDurationMinutes;
@override final  String? onboardingPath;
@override@JsonKey() final  bool onboardingCompleted;
 final  List<String> _fitnessGoals;
@override@JsonKey() List<String> get fitnessGoals {
  if (_fitnessGoals is EqualUnmodifiableListView) return _fitnessGoals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fitnessGoals);
}

 final  List<String> _availableEquipment;
@override@JsonKey() List<String> get availableEquipment {
  if (_availableEquipment is EqualUnmodifiableListView) return _availableEquipment;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_availableEquipment);
}

 final  List<String> _preferredWorkoutTypes;
@override@JsonKey() List<String> get preferredWorkoutTypes {
  if (_preferredWorkoutTypes is EqualUnmodifiableListView) return _preferredWorkoutTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_preferredWorkoutTypes);
}

 final  List<String> _dietaryRestrictions;
@override@JsonKey() List<String> get dietaryRestrictions {
  if (_dietaryRestrictions is EqualUnmodifiableListView) return _dietaryRestrictions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dietaryRestrictions);
}

 final  List<String> _medicalConditions;
@override@JsonKey() List<String> get medicalConditions {
  if (_medicalConditions is EqualUnmodifiableListView) return _medicalConditions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_medicalConditions);
}

 final  List<String> _injuries;
@override@JsonKey() List<String> get injuries {
  if (_injuries is EqualUnmodifiableListView) return _injuries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_injuries);
}

 final  List<String> _allergies;
@override@JsonKey() List<String> get allergies {
  if (_allergies is EqualUnmodifiableListView) return _allergies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allergies);
}

@override final  DateTime? lastUpdated;

/// Create a copy of UserPreferences
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserPreferencesCopyWith<_UserPreferences> get copyWith => __$UserPreferencesCopyWithImpl<_UserPreferences>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserPreferencesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserPreferences&&(identical(other.id, id) || other.id == id)&&(identical(other.fitnessLevel, fitnessLevel) || other.fitnessLevel == fitnessLevel)&&(identical(other.age, age) || other.age == age)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.workoutsPerWeek, workoutsPerWeek) || other.workoutsPerWeek == workoutsPerWeek)&&(identical(other.workoutDurationMinutes, workoutDurationMinutes) || other.workoutDurationMinutes == workoutDurationMinutes)&&(identical(other.onboardingPath, onboardingPath) || other.onboardingPath == onboardingPath)&&(identical(other.onboardingCompleted, onboardingCompleted) || other.onboardingCompleted == onboardingCompleted)&&const DeepCollectionEquality().equals(other._fitnessGoals, _fitnessGoals)&&const DeepCollectionEquality().equals(other._availableEquipment, _availableEquipment)&&const DeepCollectionEquality().equals(other._preferredWorkoutTypes, _preferredWorkoutTypes)&&const DeepCollectionEquality().equals(other._dietaryRestrictions, _dietaryRestrictions)&&const DeepCollectionEquality().equals(other._medicalConditions, _medicalConditions)&&const DeepCollectionEquality().equals(other._injuries, _injuries)&&const DeepCollectionEquality().equals(other._allergies, _allergies)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fitnessLevel,age,height,weight,gender,workoutsPerWeek,workoutDurationMinutes,onboardingPath,onboardingCompleted,const DeepCollectionEquality().hash(_fitnessGoals),const DeepCollectionEquality().hash(_availableEquipment),const DeepCollectionEquality().hash(_preferredWorkoutTypes),const DeepCollectionEquality().hash(_dietaryRestrictions),const DeepCollectionEquality().hash(_medicalConditions),const DeepCollectionEquality().hash(_injuries),const DeepCollectionEquality().hash(_allergies),lastUpdated);

@override
String toString() {
  return 'UserPreferences(id: $id, fitnessLevel: $fitnessLevel, age: $age, height: $height, weight: $weight, gender: $gender, workoutsPerWeek: $workoutsPerWeek, workoutDurationMinutes: $workoutDurationMinutes, onboardingPath: $onboardingPath, onboardingCompleted: $onboardingCompleted, fitnessGoals: $fitnessGoals, availableEquipment: $availableEquipment, preferredWorkoutTypes: $preferredWorkoutTypes, dietaryRestrictions: $dietaryRestrictions, medicalConditions: $medicalConditions, injuries: $injuries, allergies: $allergies, lastUpdated: $lastUpdated)';
}


}

/// @nodoc
abstract mixin class _$UserPreferencesCopyWith<$Res> implements $UserPreferencesCopyWith<$Res> {
  factory _$UserPreferencesCopyWith(_UserPreferences value, $Res Function(_UserPreferences) _then) = __$UserPreferencesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id, String? fitnessLevel, int? age, int? height, double? weight, String? gender, int? workoutsPerWeek, int? workoutDurationMinutes, String? onboardingPath, bool onboardingCompleted, List<String> fitnessGoals, List<String> availableEquipment, List<String> preferredWorkoutTypes, List<String> dietaryRestrictions, List<String> medicalConditions, List<String> injuries, List<String> allergies, DateTime? lastUpdated
});




}
/// @nodoc
class __$UserPreferencesCopyWithImpl<$Res>
    implements _$UserPreferencesCopyWith<$Res> {
  __$UserPreferencesCopyWithImpl(this._self, this._then);

  final _UserPreferences _self;
  final $Res Function(_UserPreferences) _then;

/// Create a copy of UserPreferences
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fitnessLevel = freezed,Object? age = freezed,Object? height = freezed,Object? weight = freezed,Object? gender = freezed,Object? workoutsPerWeek = freezed,Object? workoutDurationMinutes = freezed,Object? onboardingPath = freezed,Object? onboardingCompleted = null,Object? fitnessGoals = null,Object? availableEquipment = null,Object? preferredWorkoutTypes = null,Object? dietaryRestrictions = null,Object? medicalConditions = null,Object? injuries = null,Object? allergies = null,Object? lastUpdated = freezed,}) {
  return _then(_UserPreferences(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fitnessLevel: freezed == fitnessLevel ? _self.fitnessLevel : fitnessLevel // ignore: cast_nullable_to_non_nullable
as String?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,workoutsPerWeek: freezed == workoutsPerWeek ? _self.workoutsPerWeek : workoutsPerWeek // ignore: cast_nullable_to_non_nullable
as int?,workoutDurationMinutes: freezed == workoutDurationMinutes ? _self.workoutDurationMinutes : workoutDurationMinutes // ignore: cast_nullable_to_non_nullable
as int?,onboardingPath: freezed == onboardingPath ? _self.onboardingPath : onboardingPath // ignore: cast_nullable_to_non_nullable
as String?,onboardingCompleted: null == onboardingCompleted ? _self.onboardingCompleted : onboardingCompleted // ignore: cast_nullable_to_non_nullable
as bool,fitnessGoals: null == fitnessGoals ? _self._fitnessGoals : fitnessGoals // ignore: cast_nullable_to_non_nullable
as List<String>,availableEquipment: null == availableEquipment ? _self._availableEquipment : availableEquipment // ignore: cast_nullable_to_non_nullable
as List<String>,preferredWorkoutTypes: null == preferredWorkoutTypes ? _self._preferredWorkoutTypes : preferredWorkoutTypes // ignore: cast_nullable_to_non_nullable
as List<String>,dietaryRestrictions: null == dietaryRestrictions ? _self._dietaryRestrictions : dietaryRestrictions // ignore: cast_nullable_to_non_nullable
as List<String>,medicalConditions: null == medicalConditions ? _self._medicalConditions : medicalConditions // ignore: cast_nullable_to_non_nullable
as List<String>,injuries: null == injuries ? _self._injuries : injuries // ignore: cast_nullable_to_non_nullable
as List<String>,allergies: null == allergies ? _self._allergies : allergies // ignore: cast_nullable_to_non_nullable
as List<String>,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
