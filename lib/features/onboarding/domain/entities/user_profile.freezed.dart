// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserProfile implements DiagnosticableTreeMixin {

 String get userId; String get email; String? get firstName; String? get lastName; String? get displayName;// Personal Information
 int? get age;@JsonKey(name: 'height_cm') int? get heightCm;@JsonKey(name: 'weight_kg') double? get weightKg; Gender? get gender;// Fitness Information
@JsonKey(name: 'fitness_level') FitnessLevel? get fitnessLevel;@JsonKey(name: 'fitness_goals') List<FitnessGoal>? get fitnessGoals;@JsonKey(name: 'workout_preferences') List<WorkoutType>? get workoutPreferences;@JsonKey(name: 'available_equipment') List<Equipment>? get availableEquipment;// Health & Lifestyle
@JsonKey(name: 'health_conditions') List<String>? get healthConditions;@JsonKey(name: 'dietary_restrictions') List<String>? get dietaryRestrictions;@JsonKey(name: 'workout_frequency') int? get workoutFrequencyPerWeek;@JsonKey(name: 'workout_duration') int? get preferredWorkoutDurationMinutes;// Timestamps
@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;@JsonKey(name: 'onboarding_completed') bool get onboardingCompleted;
/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserProfileCopyWith<UserProfile> get copyWith => _$UserProfileCopyWithImpl<UserProfile>(this as UserProfile, _$identity);

  /// Serializes this UserProfile to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserProfile'))
    ..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('email', email))..add(DiagnosticsProperty('firstName', firstName))..add(DiagnosticsProperty('lastName', lastName))..add(DiagnosticsProperty('displayName', displayName))..add(DiagnosticsProperty('age', age))..add(DiagnosticsProperty('heightCm', heightCm))..add(DiagnosticsProperty('weightKg', weightKg))..add(DiagnosticsProperty('gender', gender))..add(DiagnosticsProperty('fitnessLevel', fitnessLevel))..add(DiagnosticsProperty('fitnessGoals', fitnessGoals))..add(DiagnosticsProperty('workoutPreferences', workoutPreferences))..add(DiagnosticsProperty('availableEquipment', availableEquipment))..add(DiagnosticsProperty('healthConditions', healthConditions))..add(DiagnosticsProperty('dietaryRestrictions', dietaryRestrictions))..add(DiagnosticsProperty('workoutFrequencyPerWeek', workoutFrequencyPerWeek))..add(DiagnosticsProperty('preferredWorkoutDurationMinutes', preferredWorkoutDurationMinutes))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('onboardingCompleted', onboardingCompleted));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfile&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.email, email) || other.email == email)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.age, age) || other.age == age)&&(identical(other.heightCm, heightCm) || other.heightCm == heightCm)&&(identical(other.weightKg, weightKg) || other.weightKg == weightKg)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.fitnessLevel, fitnessLevel) || other.fitnessLevel == fitnessLevel)&&const DeepCollectionEquality().equals(other.fitnessGoals, fitnessGoals)&&const DeepCollectionEquality().equals(other.workoutPreferences, workoutPreferences)&&const DeepCollectionEquality().equals(other.availableEquipment, availableEquipment)&&const DeepCollectionEquality().equals(other.healthConditions, healthConditions)&&const DeepCollectionEquality().equals(other.dietaryRestrictions, dietaryRestrictions)&&(identical(other.workoutFrequencyPerWeek, workoutFrequencyPerWeek) || other.workoutFrequencyPerWeek == workoutFrequencyPerWeek)&&(identical(other.preferredWorkoutDurationMinutes, preferredWorkoutDurationMinutes) || other.preferredWorkoutDurationMinutes == preferredWorkoutDurationMinutes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.onboardingCompleted, onboardingCompleted) || other.onboardingCompleted == onboardingCompleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,userId,email,firstName,lastName,displayName,age,heightCm,weightKg,gender,fitnessLevel,const DeepCollectionEquality().hash(fitnessGoals),const DeepCollectionEquality().hash(workoutPreferences),const DeepCollectionEquality().hash(availableEquipment),const DeepCollectionEquality().hash(healthConditions),const DeepCollectionEquality().hash(dietaryRestrictions),workoutFrequencyPerWeek,preferredWorkoutDurationMinutes,createdAt,updatedAt,onboardingCompleted]);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserProfile(userId: $userId, email: $email, firstName: $firstName, lastName: $lastName, displayName: $displayName, age: $age, heightCm: $heightCm, weightKg: $weightKg, gender: $gender, fitnessLevel: $fitnessLevel, fitnessGoals: $fitnessGoals, workoutPreferences: $workoutPreferences, availableEquipment: $availableEquipment, healthConditions: $healthConditions, dietaryRestrictions: $dietaryRestrictions, workoutFrequencyPerWeek: $workoutFrequencyPerWeek, preferredWorkoutDurationMinutes: $preferredWorkoutDurationMinutes, createdAt: $createdAt, updatedAt: $updatedAt, onboardingCompleted: $onboardingCompleted)';
}


}

/// @nodoc
abstract mixin class $UserProfileCopyWith<$Res>  {
  factory $UserProfileCopyWith(UserProfile value, $Res Function(UserProfile) _then) = _$UserProfileCopyWithImpl;
@useResult
$Res call({
 String userId, String email, String? firstName, String? lastName, String? displayName, int? age,@JsonKey(name: 'height_cm') int? heightCm,@JsonKey(name: 'weight_kg') double? weightKg, Gender? gender,@JsonKey(name: 'fitness_level') FitnessLevel? fitnessLevel,@JsonKey(name: 'fitness_goals') List<FitnessGoal>? fitnessGoals,@JsonKey(name: 'workout_preferences') List<WorkoutType>? workoutPreferences,@JsonKey(name: 'available_equipment') List<Equipment>? availableEquipment,@JsonKey(name: 'health_conditions') List<String>? healthConditions,@JsonKey(name: 'dietary_restrictions') List<String>? dietaryRestrictions,@JsonKey(name: 'workout_frequency') int? workoutFrequencyPerWeek,@JsonKey(name: 'workout_duration') int? preferredWorkoutDurationMinutes,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt,@JsonKey(name: 'onboarding_completed') bool onboardingCompleted
});




}
/// @nodoc
class _$UserProfileCopyWithImpl<$Res>
    implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._self, this._then);

  final UserProfile _self;
  final $Res Function(UserProfile) _then;

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? email = null,Object? firstName = freezed,Object? lastName = freezed,Object? displayName = freezed,Object? age = freezed,Object? heightCm = freezed,Object? weightKg = freezed,Object? gender = freezed,Object? fitnessLevel = freezed,Object? fitnessGoals = freezed,Object? workoutPreferences = freezed,Object? availableEquipment = freezed,Object? healthConditions = freezed,Object? dietaryRestrictions = freezed,Object? workoutFrequencyPerWeek = freezed,Object? preferredWorkoutDurationMinutes = freezed,Object? createdAt = null,Object? updatedAt = freezed,Object? onboardingCompleted = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,heightCm: freezed == heightCm ? _self.heightCm : heightCm // ignore: cast_nullable_to_non_nullable
as int?,weightKg: freezed == weightKg ? _self.weightKg : weightKg // ignore: cast_nullable_to_non_nullable
as double?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender?,fitnessLevel: freezed == fitnessLevel ? _self.fitnessLevel : fitnessLevel // ignore: cast_nullable_to_non_nullable
as FitnessLevel?,fitnessGoals: freezed == fitnessGoals ? _self.fitnessGoals : fitnessGoals // ignore: cast_nullable_to_non_nullable
as List<FitnessGoal>?,workoutPreferences: freezed == workoutPreferences ? _self.workoutPreferences : workoutPreferences // ignore: cast_nullable_to_non_nullable
as List<WorkoutType>?,availableEquipment: freezed == availableEquipment ? _self.availableEquipment : availableEquipment // ignore: cast_nullable_to_non_nullable
as List<Equipment>?,healthConditions: freezed == healthConditions ? _self.healthConditions : healthConditions // ignore: cast_nullable_to_non_nullable
as List<String>?,dietaryRestrictions: freezed == dietaryRestrictions ? _self.dietaryRestrictions : dietaryRestrictions // ignore: cast_nullable_to_non_nullable
as List<String>?,workoutFrequencyPerWeek: freezed == workoutFrequencyPerWeek ? _self.workoutFrequencyPerWeek : workoutFrequencyPerWeek // ignore: cast_nullable_to_non_nullable
as int?,preferredWorkoutDurationMinutes: freezed == preferredWorkoutDurationMinutes ? _self.preferredWorkoutDurationMinutes : preferredWorkoutDurationMinutes // ignore: cast_nullable_to_non_nullable
as int?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,onboardingCompleted: null == onboardingCompleted ? _self.onboardingCompleted : onboardingCompleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [UserProfile].
extension UserProfilePatterns on UserProfile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserProfile value)  $default,){
final _that = this;
switch (_that) {
case _UserProfile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserProfile value)?  $default,){
final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String email,  String? firstName,  String? lastName,  String? displayName,  int? age, @JsonKey(name: 'height_cm')  int? heightCm, @JsonKey(name: 'weight_kg')  double? weightKg,  Gender? gender, @JsonKey(name: 'fitness_level')  FitnessLevel? fitnessLevel, @JsonKey(name: 'fitness_goals')  List<FitnessGoal>? fitnessGoals, @JsonKey(name: 'workout_preferences')  List<WorkoutType>? workoutPreferences, @JsonKey(name: 'available_equipment')  List<Equipment>? availableEquipment, @JsonKey(name: 'health_conditions')  List<String>? healthConditions, @JsonKey(name: 'dietary_restrictions')  List<String>? dietaryRestrictions, @JsonKey(name: 'workout_frequency')  int? workoutFrequencyPerWeek, @JsonKey(name: 'workout_duration')  int? preferredWorkoutDurationMinutes, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'onboarding_completed')  bool onboardingCompleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
return $default(_that.userId,_that.email,_that.firstName,_that.lastName,_that.displayName,_that.age,_that.heightCm,_that.weightKg,_that.gender,_that.fitnessLevel,_that.fitnessGoals,_that.workoutPreferences,_that.availableEquipment,_that.healthConditions,_that.dietaryRestrictions,_that.workoutFrequencyPerWeek,_that.preferredWorkoutDurationMinutes,_that.createdAt,_that.updatedAt,_that.onboardingCompleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String email,  String? firstName,  String? lastName,  String? displayName,  int? age, @JsonKey(name: 'height_cm')  int? heightCm, @JsonKey(name: 'weight_kg')  double? weightKg,  Gender? gender, @JsonKey(name: 'fitness_level')  FitnessLevel? fitnessLevel, @JsonKey(name: 'fitness_goals')  List<FitnessGoal>? fitnessGoals, @JsonKey(name: 'workout_preferences')  List<WorkoutType>? workoutPreferences, @JsonKey(name: 'available_equipment')  List<Equipment>? availableEquipment, @JsonKey(name: 'health_conditions')  List<String>? healthConditions, @JsonKey(name: 'dietary_restrictions')  List<String>? dietaryRestrictions, @JsonKey(name: 'workout_frequency')  int? workoutFrequencyPerWeek, @JsonKey(name: 'workout_duration')  int? preferredWorkoutDurationMinutes, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'onboarding_completed')  bool onboardingCompleted)  $default,) {final _that = this;
switch (_that) {
case _UserProfile():
return $default(_that.userId,_that.email,_that.firstName,_that.lastName,_that.displayName,_that.age,_that.heightCm,_that.weightKg,_that.gender,_that.fitnessLevel,_that.fitnessGoals,_that.workoutPreferences,_that.availableEquipment,_that.healthConditions,_that.dietaryRestrictions,_that.workoutFrequencyPerWeek,_that.preferredWorkoutDurationMinutes,_that.createdAt,_that.updatedAt,_that.onboardingCompleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String email,  String? firstName,  String? lastName,  String? displayName,  int? age, @JsonKey(name: 'height_cm')  int? heightCm, @JsonKey(name: 'weight_kg')  double? weightKg,  Gender? gender, @JsonKey(name: 'fitness_level')  FitnessLevel? fitnessLevel, @JsonKey(name: 'fitness_goals')  List<FitnessGoal>? fitnessGoals, @JsonKey(name: 'workout_preferences')  List<WorkoutType>? workoutPreferences, @JsonKey(name: 'available_equipment')  List<Equipment>? availableEquipment, @JsonKey(name: 'health_conditions')  List<String>? healthConditions, @JsonKey(name: 'dietary_restrictions')  List<String>? dietaryRestrictions, @JsonKey(name: 'workout_frequency')  int? workoutFrequencyPerWeek, @JsonKey(name: 'workout_duration')  int? preferredWorkoutDurationMinutes, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'onboarding_completed')  bool onboardingCompleted)?  $default,) {final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
return $default(_that.userId,_that.email,_that.firstName,_that.lastName,_that.displayName,_that.age,_that.heightCm,_that.weightKg,_that.gender,_that.fitnessLevel,_that.fitnessGoals,_that.workoutPreferences,_that.availableEquipment,_that.healthConditions,_that.dietaryRestrictions,_that.workoutFrequencyPerWeek,_that.preferredWorkoutDurationMinutes,_that.createdAt,_that.updatedAt,_that.onboardingCompleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserProfile with DiagnosticableTreeMixin implements UserProfile {
  const _UserProfile({required this.userId, required this.email, this.firstName, this.lastName, this.displayName, this.age, @JsonKey(name: 'height_cm') this.heightCm, @JsonKey(name: 'weight_kg') this.weightKg, this.gender, @JsonKey(name: 'fitness_level') this.fitnessLevel, @JsonKey(name: 'fitness_goals') final  List<FitnessGoal>? fitnessGoals, @JsonKey(name: 'workout_preferences') final  List<WorkoutType>? workoutPreferences, @JsonKey(name: 'available_equipment') final  List<Equipment>? availableEquipment, @JsonKey(name: 'health_conditions') final  List<String>? healthConditions, @JsonKey(name: 'dietary_restrictions') final  List<String>? dietaryRestrictions, @JsonKey(name: 'workout_frequency') this.workoutFrequencyPerWeek, @JsonKey(name: 'workout_duration') this.preferredWorkoutDurationMinutes, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'onboarding_completed') this.onboardingCompleted = false}): _fitnessGoals = fitnessGoals,_workoutPreferences = workoutPreferences,_availableEquipment = availableEquipment,_healthConditions = healthConditions,_dietaryRestrictions = dietaryRestrictions;
  factory _UserProfile.fromJson(Map<String, dynamic> json) => _$UserProfileFromJson(json);

@override final  String userId;
@override final  String email;
@override final  String? firstName;
@override final  String? lastName;
@override final  String? displayName;
// Personal Information
@override final  int? age;
@override@JsonKey(name: 'height_cm') final  int? heightCm;
@override@JsonKey(name: 'weight_kg') final  double? weightKg;
@override final  Gender? gender;
// Fitness Information
@override@JsonKey(name: 'fitness_level') final  FitnessLevel? fitnessLevel;
 final  List<FitnessGoal>? _fitnessGoals;
@override@JsonKey(name: 'fitness_goals') List<FitnessGoal>? get fitnessGoals {
  final value = _fitnessGoals;
  if (value == null) return null;
  if (_fitnessGoals is EqualUnmodifiableListView) return _fitnessGoals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<WorkoutType>? _workoutPreferences;
@override@JsonKey(name: 'workout_preferences') List<WorkoutType>? get workoutPreferences {
  final value = _workoutPreferences;
  if (value == null) return null;
  if (_workoutPreferences is EqualUnmodifiableListView) return _workoutPreferences;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Equipment>? _availableEquipment;
@override@JsonKey(name: 'available_equipment') List<Equipment>? get availableEquipment {
  final value = _availableEquipment;
  if (value == null) return null;
  if (_availableEquipment is EqualUnmodifiableListView) return _availableEquipment;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

// Health & Lifestyle
 final  List<String>? _healthConditions;
// Health & Lifestyle
@override@JsonKey(name: 'health_conditions') List<String>? get healthConditions {
  final value = _healthConditions;
  if (value == null) return null;
  if (_healthConditions is EqualUnmodifiableListView) return _healthConditions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _dietaryRestrictions;
@override@JsonKey(name: 'dietary_restrictions') List<String>? get dietaryRestrictions {
  final value = _dietaryRestrictions;
  if (value == null) return null;
  if (_dietaryRestrictions is EqualUnmodifiableListView) return _dietaryRestrictions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'workout_frequency') final  int? workoutFrequencyPerWeek;
@override@JsonKey(name: 'workout_duration') final  int? preferredWorkoutDurationMinutes;
// Timestamps
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;
@override@JsonKey(name: 'onboarding_completed') final  bool onboardingCompleted;

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserProfileCopyWith<_UserProfile> get copyWith => __$UserProfileCopyWithImpl<_UserProfile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserProfileToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserProfile'))
    ..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('email', email))..add(DiagnosticsProperty('firstName', firstName))..add(DiagnosticsProperty('lastName', lastName))..add(DiagnosticsProperty('displayName', displayName))..add(DiagnosticsProperty('age', age))..add(DiagnosticsProperty('heightCm', heightCm))..add(DiagnosticsProperty('weightKg', weightKg))..add(DiagnosticsProperty('gender', gender))..add(DiagnosticsProperty('fitnessLevel', fitnessLevel))..add(DiagnosticsProperty('fitnessGoals', fitnessGoals))..add(DiagnosticsProperty('workoutPreferences', workoutPreferences))..add(DiagnosticsProperty('availableEquipment', availableEquipment))..add(DiagnosticsProperty('healthConditions', healthConditions))..add(DiagnosticsProperty('dietaryRestrictions', dietaryRestrictions))..add(DiagnosticsProperty('workoutFrequencyPerWeek', workoutFrequencyPerWeek))..add(DiagnosticsProperty('preferredWorkoutDurationMinutes', preferredWorkoutDurationMinutes))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('onboardingCompleted', onboardingCompleted));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserProfile&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.email, email) || other.email == email)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.age, age) || other.age == age)&&(identical(other.heightCm, heightCm) || other.heightCm == heightCm)&&(identical(other.weightKg, weightKg) || other.weightKg == weightKg)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.fitnessLevel, fitnessLevel) || other.fitnessLevel == fitnessLevel)&&const DeepCollectionEquality().equals(other._fitnessGoals, _fitnessGoals)&&const DeepCollectionEquality().equals(other._workoutPreferences, _workoutPreferences)&&const DeepCollectionEquality().equals(other._availableEquipment, _availableEquipment)&&const DeepCollectionEquality().equals(other._healthConditions, _healthConditions)&&const DeepCollectionEquality().equals(other._dietaryRestrictions, _dietaryRestrictions)&&(identical(other.workoutFrequencyPerWeek, workoutFrequencyPerWeek) || other.workoutFrequencyPerWeek == workoutFrequencyPerWeek)&&(identical(other.preferredWorkoutDurationMinutes, preferredWorkoutDurationMinutes) || other.preferredWorkoutDurationMinutes == preferredWorkoutDurationMinutes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.onboardingCompleted, onboardingCompleted) || other.onboardingCompleted == onboardingCompleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,userId,email,firstName,lastName,displayName,age,heightCm,weightKg,gender,fitnessLevel,const DeepCollectionEquality().hash(_fitnessGoals),const DeepCollectionEquality().hash(_workoutPreferences),const DeepCollectionEquality().hash(_availableEquipment),const DeepCollectionEquality().hash(_healthConditions),const DeepCollectionEquality().hash(_dietaryRestrictions),workoutFrequencyPerWeek,preferredWorkoutDurationMinutes,createdAt,updatedAt,onboardingCompleted]);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserProfile(userId: $userId, email: $email, firstName: $firstName, lastName: $lastName, displayName: $displayName, age: $age, heightCm: $heightCm, weightKg: $weightKg, gender: $gender, fitnessLevel: $fitnessLevel, fitnessGoals: $fitnessGoals, workoutPreferences: $workoutPreferences, availableEquipment: $availableEquipment, healthConditions: $healthConditions, dietaryRestrictions: $dietaryRestrictions, workoutFrequencyPerWeek: $workoutFrequencyPerWeek, preferredWorkoutDurationMinutes: $preferredWorkoutDurationMinutes, createdAt: $createdAt, updatedAt: $updatedAt, onboardingCompleted: $onboardingCompleted)';
}


}

/// @nodoc
abstract mixin class _$UserProfileCopyWith<$Res> implements $UserProfileCopyWith<$Res> {
  factory _$UserProfileCopyWith(_UserProfile value, $Res Function(_UserProfile) _then) = __$UserProfileCopyWithImpl;
@override @useResult
$Res call({
 String userId, String email, String? firstName, String? lastName, String? displayName, int? age,@JsonKey(name: 'height_cm') int? heightCm,@JsonKey(name: 'weight_kg') double? weightKg, Gender? gender,@JsonKey(name: 'fitness_level') FitnessLevel? fitnessLevel,@JsonKey(name: 'fitness_goals') List<FitnessGoal>? fitnessGoals,@JsonKey(name: 'workout_preferences') List<WorkoutType>? workoutPreferences,@JsonKey(name: 'available_equipment') List<Equipment>? availableEquipment,@JsonKey(name: 'health_conditions') List<String>? healthConditions,@JsonKey(name: 'dietary_restrictions') List<String>? dietaryRestrictions,@JsonKey(name: 'workout_frequency') int? workoutFrequencyPerWeek,@JsonKey(name: 'workout_duration') int? preferredWorkoutDurationMinutes,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt,@JsonKey(name: 'onboarding_completed') bool onboardingCompleted
});




}
/// @nodoc
class __$UserProfileCopyWithImpl<$Res>
    implements _$UserProfileCopyWith<$Res> {
  __$UserProfileCopyWithImpl(this._self, this._then);

  final _UserProfile _self;
  final $Res Function(_UserProfile) _then;

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? email = null,Object? firstName = freezed,Object? lastName = freezed,Object? displayName = freezed,Object? age = freezed,Object? heightCm = freezed,Object? weightKg = freezed,Object? gender = freezed,Object? fitnessLevel = freezed,Object? fitnessGoals = freezed,Object? workoutPreferences = freezed,Object? availableEquipment = freezed,Object? healthConditions = freezed,Object? dietaryRestrictions = freezed,Object? workoutFrequencyPerWeek = freezed,Object? preferredWorkoutDurationMinutes = freezed,Object? createdAt = null,Object? updatedAt = freezed,Object? onboardingCompleted = null,}) {
  return _then(_UserProfile(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,heightCm: freezed == heightCm ? _self.heightCm : heightCm // ignore: cast_nullable_to_non_nullable
as int?,weightKg: freezed == weightKg ? _self.weightKg : weightKg // ignore: cast_nullable_to_non_nullable
as double?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender?,fitnessLevel: freezed == fitnessLevel ? _self.fitnessLevel : fitnessLevel // ignore: cast_nullable_to_non_nullable
as FitnessLevel?,fitnessGoals: freezed == fitnessGoals ? _self._fitnessGoals : fitnessGoals // ignore: cast_nullable_to_non_nullable
as List<FitnessGoal>?,workoutPreferences: freezed == workoutPreferences ? _self._workoutPreferences : workoutPreferences // ignore: cast_nullable_to_non_nullable
as List<WorkoutType>?,availableEquipment: freezed == availableEquipment ? _self._availableEquipment : availableEquipment // ignore: cast_nullable_to_non_nullable
as List<Equipment>?,healthConditions: freezed == healthConditions ? _self._healthConditions : healthConditions // ignore: cast_nullable_to_non_nullable
as List<String>?,dietaryRestrictions: freezed == dietaryRestrictions ? _self._dietaryRestrictions : dietaryRestrictions // ignore: cast_nullable_to_non_nullable
as List<String>?,workoutFrequencyPerWeek: freezed == workoutFrequencyPerWeek ? _self.workoutFrequencyPerWeek : workoutFrequencyPerWeek // ignore: cast_nullable_to_non_nullable
as int?,preferredWorkoutDurationMinutes: freezed == preferredWorkoutDurationMinutes ? _self.preferredWorkoutDurationMinutes : preferredWorkoutDurationMinutes // ignore: cast_nullable_to_non_nullable
as int?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,onboardingCompleted: null == onboardingCompleted ? _self.onboardingCompleted : onboardingCompleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
