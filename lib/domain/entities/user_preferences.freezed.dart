// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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

 String get userId; List<FitnessGoal> get fitnessGoals; List<Equipment> get availableEquipment; List<WorkoutType> get preferredWorkoutTypes; FitnessLevel? get fitnessLevel; int? get age; double? get heightCm; double? get weightKg; List<String> get dietaryRestrictions; List<String> get medicalConditions; int? get workoutsPerWeek; int? get workoutDurationMinutes; bool get hasCompletedInitialAssessment; DateTime? get lastUpdated; Map<String, dynamic> get additionalSettings;
/// Create a copy of UserPreferences
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserPreferencesCopyWith<UserPreferences> get copyWith => _$UserPreferencesCopyWithImpl<UserPreferences>(this as UserPreferences, _$identity);

  /// Serializes this UserPreferences to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPreferences&&(identical(other.userId, userId) || other.userId == userId)&&const DeepCollectionEquality().equals(other.fitnessGoals, fitnessGoals)&&const DeepCollectionEquality().equals(other.availableEquipment, availableEquipment)&&const DeepCollectionEquality().equals(other.preferredWorkoutTypes, preferredWorkoutTypes)&&(identical(other.fitnessLevel, fitnessLevel) || other.fitnessLevel == fitnessLevel)&&(identical(other.age, age) || other.age == age)&&(identical(other.heightCm, heightCm) || other.heightCm == heightCm)&&(identical(other.weightKg, weightKg) || other.weightKg == weightKg)&&const DeepCollectionEquality().equals(other.dietaryRestrictions, dietaryRestrictions)&&const DeepCollectionEquality().equals(other.medicalConditions, medicalConditions)&&(identical(other.workoutsPerWeek, workoutsPerWeek) || other.workoutsPerWeek == workoutsPerWeek)&&(identical(other.workoutDurationMinutes, workoutDurationMinutes) || other.workoutDurationMinutes == workoutDurationMinutes)&&(identical(other.hasCompletedInitialAssessment, hasCompletedInitialAssessment) || other.hasCompletedInitialAssessment == hasCompletedInitialAssessment)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&const DeepCollectionEquality().equals(other.additionalSettings, additionalSettings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,const DeepCollectionEquality().hash(fitnessGoals),const DeepCollectionEquality().hash(availableEquipment),const DeepCollectionEquality().hash(preferredWorkoutTypes),fitnessLevel,age,heightCm,weightKg,const DeepCollectionEquality().hash(dietaryRestrictions),const DeepCollectionEquality().hash(medicalConditions),workoutsPerWeek,workoutDurationMinutes,hasCompletedInitialAssessment,lastUpdated,const DeepCollectionEquality().hash(additionalSettings));

@override
String toString() {
  return 'UserPreferences(userId: $userId, fitnessGoals: $fitnessGoals, availableEquipment: $availableEquipment, preferredWorkoutTypes: $preferredWorkoutTypes, fitnessLevel: $fitnessLevel, age: $age, heightCm: $heightCm, weightKg: $weightKg, dietaryRestrictions: $dietaryRestrictions, medicalConditions: $medicalConditions, workoutsPerWeek: $workoutsPerWeek, workoutDurationMinutes: $workoutDurationMinutes, hasCompletedInitialAssessment: $hasCompletedInitialAssessment, lastUpdated: $lastUpdated, additionalSettings: $additionalSettings)';
}


}

/// @nodoc
abstract mixin class $UserPreferencesCopyWith<$Res>  {
  factory $UserPreferencesCopyWith(UserPreferences value, $Res Function(UserPreferences) _then) = _$UserPreferencesCopyWithImpl;
@useResult
$Res call({
 String userId, List<FitnessGoal> fitnessGoals, List<Equipment> availableEquipment, List<WorkoutType> preferredWorkoutTypes, FitnessLevel? fitnessLevel, int? age, double? heightCm, double? weightKg, List<String> dietaryRestrictions, List<String> medicalConditions, int? workoutsPerWeek, int? workoutDurationMinutes, bool hasCompletedInitialAssessment, DateTime? lastUpdated, Map<String, dynamic> additionalSettings
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
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? fitnessGoals = null,Object? availableEquipment = null,Object? preferredWorkoutTypes = null,Object? fitnessLevel = freezed,Object? age = freezed,Object? heightCm = freezed,Object? weightKg = freezed,Object? dietaryRestrictions = null,Object? medicalConditions = null,Object? workoutsPerWeek = freezed,Object? workoutDurationMinutes = freezed,Object? hasCompletedInitialAssessment = null,Object? lastUpdated = freezed,Object? additionalSettings = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,fitnessGoals: null == fitnessGoals ? _self.fitnessGoals : fitnessGoals // ignore: cast_nullable_to_non_nullable
as List<FitnessGoal>,availableEquipment: null == availableEquipment ? _self.availableEquipment : availableEquipment // ignore: cast_nullable_to_non_nullable
as List<Equipment>,preferredWorkoutTypes: null == preferredWorkoutTypes ? _self.preferredWorkoutTypes : preferredWorkoutTypes // ignore: cast_nullable_to_non_nullable
as List<WorkoutType>,fitnessLevel: freezed == fitnessLevel ? _self.fitnessLevel : fitnessLevel // ignore: cast_nullable_to_non_nullable
as FitnessLevel?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,heightCm: freezed == heightCm ? _self.heightCm : heightCm // ignore: cast_nullable_to_non_nullable
as double?,weightKg: freezed == weightKg ? _self.weightKg : weightKg // ignore: cast_nullable_to_non_nullable
as double?,dietaryRestrictions: null == dietaryRestrictions ? _self.dietaryRestrictions : dietaryRestrictions // ignore: cast_nullable_to_non_nullable
as List<String>,medicalConditions: null == medicalConditions ? _self.medicalConditions : medicalConditions // ignore: cast_nullable_to_non_nullable
as List<String>,workoutsPerWeek: freezed == workoutsPerWeek ? _self.workoutsPerWeek : workoutsPerWeek // ignore: cast_nullable_to_non_nullable
as int?,workoutDurationMinutes: freezed == workoutDurationMinutes ? _self.workoutDurationMinutes : workoutDurationMinutes // ignore: cast_nullable_to_non_nullable
as int?,hasCompletedInitialAssessment: null == hasCompletedInitialAssessment ? _self.hasCompletedInitialAssessment : hasCompletedInitialAssessment // ignore: cast_nullable_to_non_nullable
as bool,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime?,additionalSettings: null == additionalSettings ? _self.additionalSettings : additionalSettings // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [UserPreferences].
extension UserPreferencesPatterns on UserPreferences {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserPreferences value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserPreferences() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserPreferences value)  $default,){
final _that = this;
switch (_that) {
case _UserPreferences():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserPreferences value)?  $default,){
final _that = this;
switch (_that) {
case _UserPreferences() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  List<FitnessGoal> fitnessGoals,  List<Equipment> availableEquipment,  List<WorkoutType> preferredWorkoutTypes,  FitnessLevel? fitnessLevel,  int? age,  double? heightCm,  double? weightKg,  List<String> dietaryRestrictions,  List<String> medicalConditions,  int? workoutsPerWeek,  int? workoutDurationMinutes,  bool hasCompletedInitialAssessment,  DateTime? lastUpdated,  Map<String, dynamic> additionalSettings)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserPreferences() when $default != null:
return $default(_that.userId,_that.fitnessGoals,_that.availableEquipment,_that.preferredWorkoutTypes,_that.fitnessLevel,_that.age,_that.heightCm,_that.weightKg,_that.dietaryRestrictions,_that.medicalConditions,_that.workoutsPerWeek,_that.workoutDurationMinutes,_that.hasCompletedInitialAssessment,_that.lastUpdated,_that.additionalSettings);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  List<FitnessGoal> fitnessGoals,  List<Equipment> availableEquipment,  List<WorkoutType> preferredWorkoutTypes,  FitnessLevel? fitnessLevel,  int? age,  double? heightCm,  double? weightKg,  List<String> dietaryRestrictions,  List<String> medicalConditions,  int? workoutsPerWeek,  int? workoutDurationMinutes,  bool hasCompletedInitialAssessment,  DateTime? lastUpdated,  Map<String, dynamic> additionalSettings)  $default,) {final _that = this;
switch (_that) {
case _UserPreferences():
return $default(_that.userId,_that.fitnessGoals,_that.availableEquipment,_that.preferredWorkoutTypes,_that.fitnessLevel,_that.age,_that.heightCm,_that.weightKg,_that.dietaryRestrictions,_that.medicalConditions,_that.workoutsPerWeek,_that.workoutDurationMinutes,_that.hasCompletedInitialAssessment,_that.lastUpdated,_that.additionalSettings);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  List<FitnessGoal> fitnessGoals,  List<Equipment> availableEquipment,  List<WorkoutType> preferredWorkoutTypes,  FitnessLevel? fitnessLevel,  int? age,  double? heightCm,  double? weightKg,  List<String> dietaryRestrictions,  List<String> medicalConditions,  int? workoutsPerWeek,  int? workoutDurationMinutes,  bool hasCompletedInitialAssessment,  DateTime? lastUpdated,  Map<String, dynamic> additionalSettings)?  $default,) {final _that = this;
switch (_that) {
case _UserPreferences() when $default != null:
return $default(_that.userId,_that.fitnessGoals,_that.availableEquipment,_that.preferredWorkoutTypes,_that.fitnessLevel,_that.age,_that.heightCm,_that.weightKg,_that.dietaryRestrictions,_that.medicalConditions,_that.workoutsPerWeek,_that.workoutDurationMinutes,_that.hasCompletedInitialAssessment,_that.lastUpdated,_that.additionalSettings);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserPreferences implements UserPreferences {
  const _UserPreferences({required this.userId, final  List<FitnessGoal> fitnessGoals = const [], final  List<Equipment> availableEquipment = const [], final  List<WorkoutType> preferredWorkoutTypes = const [], this.fitnessLevel, this.age, this.heightCm, this.weightKg, final  List<String> dietaryRestrictions = const [], final  List<String> medicalConditions = const [], this.workoutsPerWeek, this.workoutDurationMinutes, this.hasCompletedInitialAssessment = false, this.lastUpdated, final  Map<String, dynamic> additionalSettings = const {}}): _fitnessGoals = fitnessGoals,_availableEquipment = availableEquipment,_preferredWorkoutTypes = preferredWorkoutTypes,_dietaryRestrictions = dietaryRestrictions,_medicalConditions = medicalConditions,_additionalSettings = additionalSettings;
  factory _UserPreferences.fromJson(Map<String, dynamic> json) => _$UserPreferencesFromJson(json);

@override final  String userId;
 final  List<FitnessGoal> _fitnessGoals;
@override@JsonKey() List<FitnessGoal> get fitnessGoals {
  if (_fitnessGoals is EqualUnmodifiableListView) return _fitnessGoals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fitnessGoals);
}

 final  List<Equipment> _availableEquipment;
@override@JsonKey() List<Equipment> get availableEquipment {
  if (_availableEquipment is EqualUnmodifiableListView) return _availableEquipment;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_availableEquipment);
}

 final  List<WorkoutType> _preferredWorkoutTypes;
@override@JsonKey() List<WorkoutType> get preferredWorkoutTypes {
  if (_preferredWorkoutTypes is EqualUnmodifiableListView) return _preferredWorkoutTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_preferredWorkoutTypes);
}

@override final  FitnessLevel? fitnessLevel;
@override final  int? age;
@override final  double? heightCm;
@override final  double? weightKg;
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

@override final  int? workoutsPerWeek;
@override final  int? workoutDurationMinutes;
@override@JsonKey() final  bool hasCompletedInitialAssessment;
@override final  DateTime? lastUpdated;
 final  Map<String, dynamic> _additionalSettings;
@override@JsonKey() Map<String, dynamic> get additionalSettings {
  if (_additionalSettings is EqualUnmodifiableMapView) return _additionalSettings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_additionalSettings);
}


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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserPreferences&&(identical(other.userId, userId) || other.userId == userId)&&const DeepCollectionEquality().equals(other._fitnessGoals, _fitnessGoals)&&const DeepCollectionEquality().equals(other._availableEquipment, _availableEquipment)&&const DeepCollectionEquality().equals(other._preferredWorkoutTypes, _preferredWorkoutTypes)&&(identical(other.fitnessLevel, fitnessLevel) || other.fitnessLevel == fitnessLevel)&&(identical(other.age, age) || other.age == age)&&(identical(other.heightCm, heightCm) || other.heightCm == heightCm)&&(identical(other.weightKg, weightKg) || other.weightKg == weightKg)&&const DeepCollectionEquality().equals(other._dietaryRestrictions, _dietaryRestrictions)&&const DeepCollectionEquality().equals(other._medicalConditions, _medicalConditions)&&(identical(other.workoutsPerWeek, workoutsPerWeek) || other.workoutsPerWeek == workoutsPerWeek)&&(identical(other.workoutDurationMinutes, workoutDurationMinutes) || other.workoutDurationMinutes == workoutDurationMinutes)&&(identical(other.hasCompletedInitialAssessment, hasCompletedInitialAssessment) || other.hasCompletedInitialAssessment == hasCompletedInitialAssessment)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&const DeepCollectionEquality().equals(other._additionalSettings, _additionalSettings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,const DeepCollectionEquality().hash(_fitnessGoals),const DeepCollectionEquality().hash(_availableEquipment),const DeepCollectionEquality().hash(_preferredWorkoutTypes),fitnessLevel,age,heightCm,weightKg,const DeepCollectionEquality().hash(_dietaryRestrictions),const DeepCollectionEquality().hash(_medicalConditions),workoutsPerWeek,workoutDurationMinutes,hasCompletedInitialAssessment,lastUpdated,const DeepCollectionEquality().hash(_additionalSettings));

@override
String toString() {
  return 'UserPreferences(userId: $userId, fitnessGoals: $fitnessGoals, availableEquipment: $availableEquipment, preferredWorkoutTypes: $preferredWorkoutTypes, fitnessLevel: $fitnessLevel, age: $age, heightCm: $heightCm, weightKg: $weightKg, dietaryRestrictions: $dietaryRestrictions, medicalConditions: $medicalConditions, workoutsPerWeek: $workoutsPerWeek, workoutDurationMinutes: $workoutDurationMinutes, hasCompletedInitialAssessment: $hasCompletedInitialAssessment, lastUpdated: $lastUpdated, additionalSettings: $additionalSettings)';
}


}

/// @nodoc
abstract mixin class _$UserPreferencesCopyWith<$Res> implements $UserPreferencesCopyWith<$Res> {
  factory _$UserPreferencesCopyWith(_UserPreferences value, $Res Function(_UserPreferences) _then) = __$UserPreferencesCopyWithImpl;
@override @useResult
$Res call({
 String userId, List<FitnessGoal> fitnessGoals, List<Equipment> availableEquipment, List<WorkoutType> preferredWorkoutTypes, FitnessLevel? fitnessLevel, int? age, double? heightCm, double? weightKg, List<String> dietaryRestrictions, List<String> medicalConditions, int? workoutsPerWeek, int? workoutDurationMinutes, bool hasCompletedInitialAssessment, DateTime? lastUpdated, Map<String, dynamic> additionalSettings
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
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? fitnessGoals = null,Object? availableEquipment = null,Object? preferredWorkoutTypes = null,Object? fitnessLevel = freezed,Object? age = freezed,Object? heightCm = freezed,Object? weightKg = freezed,Object? dietaryRestrictions = null,Object? medicalConditions = null,Object? workoutsPerWeek = freezed,Object? workoutDurationMinutes = freezed,Object? hasCompletedInitialAssessment = null,Object? lastUpdated = freezed,Object? additionalSettings = null,}) {
  return _then(_UserPreferences(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,fitnessGoals: null == fitnessGoals ? _self._fitnessGoals : fitnessGoals // ignore: cast_nullable_to_non_nullable
as List<FitnessGoal>,availableEquipment: null == availableEquipment ? _self._availableEquipment : availableEquipment // ignore: cast_nullable_to_non_nullable
as List<Equipment>,preferredWorkoutTypes: null == preferredWorkoutTypes ? _self._preferredWorkoutTypes : preferredWorkoutTypes // ignore: cast_nullable_to_non_nullable
as List<WorkoutType>,fitnessLevel: freezed == fitnessLevel ? _self.fitnessLevel : fitnessLevel // ignore: cast_nullable_to_non_nullable
as FitnessLevel?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,heightCm: freezed == heightCm ? _self.heightCm : heightCm // ignore: cast_nullable_to_non_nullable
as double?,weightKg: freezed == weightKg ? _self.weightKg : weightKg // ignore: cast_nullable_to_non_nullable
as double?,dietaryRestrictions: null == dietaryRestrictions ? _self._dietaryRestrictions : dietaryRestrictions // ignore: cast_nullable_to_non_nullable
as List<String>,medicalConditions: null == medicalConditions ? _self._medicalConditions : medicalConditions // ignore: cast_nullable_to_non_nullable
as List<String>,workoutsPerWeek: freezed == workoutsPerWeek ? _self.workoutsPerWeek : workoutsPerWeek // ignore: cast_nullable_to_non_nullable
as int?,workoutDurationMinutes: freezed == workoutDurationMinutes ? _self.workoutDurationMinutes : workoutDurationMinutes // ignore: cast_nullable_to_non_nullable
as int?,hasCompletedInitialAssessment: null == hasCompletedInitialAssessment ? _self.hasCompletedInitialAssessment : hasCompletedInitialAssessment // ignore: cast_nullable_to_non_nullable
as bool,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime?,additionalSettings: null == additionalSettings ? _self._additionalSettings : additionalSettings // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
