// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) {
  return _UserProfile.fromJson(json);
}

/// @nodoc
mixin _$UserProfile {
  String get userId => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get displayName =>
      throw _privateConstructorUsedError; // Personal Information
  int? get age => throw _privateConstructorUsedError;
  @JsonKey(name: 'height_cm')
  int? get heightCm => throw _privateConstructorUsedError;
  @JsonKey(name: 'weight_kg')
  double? get weightKg => throw _privateConstructorUsedError;
  Gender? get gender =>
      throw _privateConstructorUsedError; // Fitness Information
  @JsonKey(name: 'fitness_level')
  FitnessLevel? get fitnessLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'fitness_goals')
  List<FitnessGoal>? get fitnessGoals => throw _privateConstructorUsedError;
  @JsonKey(name: 'workout_preferences')
  List<WorkoutType>? get workoutPreferences =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'available_equipment')
  List<Equipment>? get availableEquipment =>
      throw _privateConstructorUsedError; // Health & Lifestyle
  @JsonKey(name: 'health_conditions')
  List<String>? get healthConditions => throw _privateConstructorUsedError;
  @JsonKey(name: 'dietary_restrictions')
  List<String>? get dietaryRestrictions => throw _privateConstructorUsedError;
  @JsonKey(name: 'workout_frequency')
  int? get workoutFrequencyPerWeek => throw _privateConstructorUsedError;
  @JsonKey(name: 'workout_duration')
  int? get preferredWorkoutDurationMinutes =>
      throw _privateConstructorUsedError; // Timestamps
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'onboarding_completed')
  bool get onboardingCompleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileCopyWith<UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
          UserProfile value, $Res Function(UserProfile) then) =
      _$UserProfileCopyWithImpl<$Res, UserProfile>;
  @useResult
  $Res call(
      {String userId,
      String email,
      String? firstName,
      String? lastName,
      String? displayName,
      int? age,
      @JsonKey(name: 'height_cm') int? heightCm,
      @JsonKey(name: 'weight_kg') double? weightKg,
      Gender? gender,
      @JsonKey(name: 'fitness_level') FitnessLevel? fitnessLevel,
      @JsonKey(name: 'fitness_goals') List<FitnessGoal>? fitnessGoals,
      @JsonKey(name: 'workout_preferences')
      List<WorkoutType>? workoutPreferences,
      @JsonKey(name: 'available_equipment') List<Equipment>? availableEquipment,
      @JsonKey(name: 'health_conditions') List<String>? healthConditions,
      @JsonKey(name: 'dietary_restrictions') List<String>? dietaryRestrictions,
      @JsonKey(name: 'workout_frequency') int? workoutFrequencyPerWeek,
      @JsonKey(name: 'workout_duration') int? preferredWorkoutDurationMinutes,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'onboarding_completed') bool onboardingCompleted});
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res, $Val extends UserProfile>
    implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? email = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? displayName = freezed,
    Object? age = freezed,
    Object? heightCm = freezed,
    Object? weightKg = freezed,
    Object? gender = freezed,
    Object? fitnessLevel = freezed,
    Object? fitnessGoals = freezed,
    Object? workoutPreferences = freezed,
    Object? availableEquipment = freezed,
    Object? healthConditions = freezed,
    Object? dietaryRestrictions = freezed,
    Object? workoutFrequencyPerWeek = freezed,
    Object? preferredWorkoutDurationMinutes = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? onboardingCompleted = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      heightCm: freezed == heightCm
          ? _value.heightCm
          : heightCm // ignore: cast_nullable_to_non_nullable
              as int?,
      weightKg: freezed == weightKg
          ? _value.weightKg
          : weightKg // ignore: cast_nullable_to_non_nullable
              as double?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      fitnessLevel: freezed == fitnessLevel
          ? _value.fitnessLevel
          : fitnessLevel // ignore: cast_nullable_to_non_nullable
              as FitnessLevel?,
      fitnessGoals: freezed == fitnessGoals
          ? _value.fitnessGoals
          : fitnessGoals // ignore: cast_nullable_to_non_nullable
              as List<FitnessGoal>?,
      workoutPreferences: freezed == workoutPreferences
          ? _value.workoutPreferences
          : workoutPreferences // ignore: cast_nullable_to_non_nullable
              as List<WorkoutType>?,
      availableEquipment: freezed == availableEquipment
          ? _value.availableEquipment
          : availableEquipment // ignore: cast_nullable_to_non_nullable
              as List<Equipment>?,
      healthConditions: freezed == healthConditions
          ? _value.healthConditions
          : healthConditions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      dietaryRestrictions: freezed == dietaryRestrictions
          ? _value.dietaryRestrictions
          : dietaryRestrictions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      workoutFrequencyPerWeek: freezed == workoutFrequencyPerWeek
          ? _value.workoutFrequencyPerWeek
          : workoutFrequencyPerWeek // ignore: cast_nullable_to_non_nullable
              as int?,
      preferredWorkoutDurationMinutes: freezed ==
              preferredWorkoutDurationMinutes
          ? _value.preferredWorkoutDurationMinutes
          : preferredWorkoutDurationMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      onboardingCompleted: null == onboardingCompleted
          ? _value.onboardingCompleted
          : onboardingCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserProfileImplCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$$UserProfileImplCopyWith(
          _$UserProfileImpl value, $Res Function(_$UserProfileImpl) then) =
      __$$UserProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String email,
      String? firstName,
      String? lastName,
      String? displayName,
      int? age,
      @JsonKey(name: 'height_cm') int? heightCm,
      @JsonKey(name: 'weight_kg') double? weightKg,
      Gender? gender,
      @JsonKey(name: 'fitness_level') FitnessLevel? fitnessLevel,
      @JsonKey(name: 'fitness_goals') List<FitnessGoal>? fitnessGoals,
      @JsonKey(name: 'workout_preferences')
      List<WorkoutType>? workoutPreferences,
      @JsonKey(name: 'available_equipment') List<Equipment>? availableEquipment,
      @JsonKey(name: 'health_conditions') List<String>? healthConditions,
      @JsonKey(name: 'dietary_restrictions') List<String>? dietaryRestrictions,
      @JsonKey(name: 'workout_frequency') int? workoutFrequencyPerWeek,
      @JsonKey(name: 'workout_duration') int? preferredWorkoutDurationMinutes,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'onboarding_completed') bool onboardingCompleted});
}

/// @nodoc
class __$$UserProfileImplCopyWithImpl<$Res>
    extends _$UserProfileCopyWithImpl<$Res, _$UserProfileImpl>
    implements _$$UserProfileImplCopyWith<$Res> {
  __$$UserProfileImplCopyWithImpl(
      _$UserProfileImpl _value, $Res Function(_$UserProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? email = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? displayName = freezed,
    Object? age = freezed,
    Object? heightCm = freezed,
    Object? weightKg = freezed,
    Object? gender = freezed,
    Object? fitnessLevel = freezed,
    Object? fitnessGoals = freezed,
    Object? workoutPreferences = freezed,
    Object? availableEquipment = freezed,
    Object? healthConditions = freezed,
    Object? dietaryRestrictions = freezed,
    Object? workoutFrequencyPerWeek = freezed,
    Object? preferredWorkoutDurationMinutes = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? onboardingCompleted = null,
  }) {
    return _then(_$UserProfileImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      heightCm: freezed == heightCm
          ? _value.heightCm
          : heightCm // ignore: cast_nullable_to_non_nullable
              as int?,
      weightKg: freezed == weightKg
          ? _value.weightKg
          : weightKg // ignore: cast_nullable_to_non_nullable
              as double?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      fitnessLevel: freezed == fitnessLevel
          ? _value.fitnessLevel
          : fitnessLevel // ignore: cast_nullable_to_non_nullable
              as FitnessLevel?,
      fitnessGoals: freezed == fitnessGoals
          ? _value._fitnessGoals
          : fitnessGoals // ignore: cast_nullable_to_non_nullable
              as List<FitnessGoal>?,
      workoutPreferences: freezed == workoutPreferences
          ? _value._workoutPreferences
          : workoutPreferences // ignore: cast_nullable_to_non_nullable
              as List<WorkoutType>?,
      availableEquipment: freezed == availableEquipment
          ? _value._availableEquipment
          : availableEquipment // ignore: cast_nullable_to_non_nullable
              as List<Equipment>?,
      healthConditions: freezed == healthConditions
          ? _value._healthConditions
          : healthConditions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      dietaryRestrictions: freezed == dietaryRestrictions
          ? _value._dietaryRestrictions
          : dietaryRestrictions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      workoutFrequencyPerWeek: freezed == workoutFrequencyPerWeek
          ? _value.workoutFrequencyPerWeek
          : workoutFrequencyPerWeek // ignore: cast_nullable_to_non_nullable
              as int?,
      preferredWorkoutDurationMinutes: freezed ==
              preferredWorkoutDurationMinutes
          ? _value.preferredWorkoutDurationMinutes
          : preferredWorkoutDurationMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      onboardingCompleted: null == onboardingCompleted
          ? _value.onboardingCompleted
          : onboardingCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileImpl implements _UserProfile {
  const _$UserProfileImpl(
      {required this.userId,
      required this.email,
      this.firstName,
      this.lastName,
      this.displayName,
      this.age,
      @JsonKey(name: 'height_cm') this.heightCm,
      @JsonKey(name: 'weight_kg') this.weightKg,
      this.gender,
      @JsonKey(name: 'fitness_level') this.fitnessLevel,
      @JsonKey(name: 'fitness_goals') final List<FitnessGoal>? fitnessGoals,
      @JsonKey(name: 'workout_preferences')
      final List<WorkoutType>? workoutPreferences,
      @JsonKey(name: 'available_equipment')
      final List<Equipment>? availableEquipment,
      @JsonKey(name: 'health_conditions') final List<String>? healthConditions,
      @JsonKey(name: 'dietary_restrictions')
      final List<String>? dietaryRestrictions,
      @JsonKey(name: 'workout_frequency') this.workoutFrequencyPerWeek,
      @JsonKey(name: 'workout_duration') this.preferredWorkoutDurationMinutes,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'onboarding_completed') this.onboardingCompleted = false})
      : _fitnessGoals = fitnessGoals,
        _workoutPreferences = workoutPreferences,
        _availableEquipment = availableEquipment,
        _healthConditions = healthConditions,
        _dietaryRestrictions = dietaryRestrictions;

  factory _$UserProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileImplFromJson(json);

  @override
  final String userId;
  @override
  final String email;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? displayName;
// Personal Information
  @override
  final int? age;
  @override
  @JsonKey(name: 'height_cm')
  final int? heightCm;
  @override
  @JsonKey(name: 'weight_kg')
  final double? weightKg;
  @override
  final Gender? gender;
// Fitness Information
  @override
  @JsonKey(name: 'fitness_level')
  final FitnessLevel? fitnessLevel;
  final List<FitnessGoal>? _fitnessGoals;
  @override
  @JsonKey(name: 'fitness_goals')
  List<FitnessGoal>? get fitnessGoals {
    final value = _fitnessGoals;
    if (value == null) return null;
    if (_fitnessGoals is EqualUnmodifiableListView) return _fitnessGoals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<WorkoutType>? _workoutPreferences;
  @override
  @JsonKey(name: 'workout_preferences')
  List<WorkoutType>? get workoutPreferences {
    final value = _workoutPreferences;
    if (value == null) return null;
    if (_workoutPreferences is EqualUnmodifiableListView)
      return _workoutPreferences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Equipment>? _availableEquipment;
  @override
  @JsonKey(name: 'available_equipment')
  List<Equipment>? get availableEquipment {
    final value = _availableEquipment;
    if (value == null) return null;
    if (_availableEquipment is EqualUnmodifiableListView)
      return _availableEquipment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// Health & Lifestyle
  final List<String>? _healthConditions;
// Health & Lifestyle
  @override
  @JsonKey(name: 'health_conditions')
  List<String>? get healthConditions {
    final value = _healthConditions;
    if (value == null) return null;
    if (_healthConditions is EqualUnmodifiableListView)
      return _healthConditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _dietaryRestrictions;
  @override
  @JsonKey(name: 'dietary_restrictions')
  List<String>? get dietaryRestrictions {
    final value = _dietaryRestrictions;
    if (value == null) return null;
    if (_dietaryRestrictions is EqualUnmodifiableListView)
      return _dietaryRestrictions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'workout_frequency')
  final int? workoutFrequencyPerWeek;
  @override
  @JsonKey(name: 'workout_duration')
  final int? preferredWorkoutDurationMinutes;
// Timestamps
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'onboarding_completed')
  final bool onboardingCompleted;

  @override
  String toString() {
    return 'UserProfile(userId: $userId, email: $email, firstName: $firstName, lastName: $lastName, displayName: $displayName, age: $age, heightCm: $heightCm, weightKg: $weightKg, gender: $gender, fitnessLevel: $fitnessLevel, fitnessGoals: $fitnessGoals, workoutPreferences: $workoutPreferences, availableEquipment: $availableEquipment, healthConditions: $healthConditions, dietaryRestrictions: $dietaryRestrictions, workoutFrequencyPerWeek: $workoutFrequencyPerWeek, preferredWorkoutDurationMinutes: $preferredWorkoutDurationMinutes, createdAt: $createdAt, updatedAt: $updatedAt, onboardingCompleted: $onboardingCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.heightCm, heightCm) ||
                other.heightCm == heightCm) &&
            (identical(other.weightKg, weightKg) ||
                other.weightKg == weightKg) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.fitnessLevel, fitnessLevel) ||
                other.fitnessLevel == fitnessLevel) &&
            const DeepCollectionEquality()
                .equals(other._fitnessGoals, _fitnessGoals) &&
            const DeepCollectionEquality()
                .equals(other._workoutPreferences, _workoutPreferences) &&
            const DeepCollectionEquality()
                .equals(other._availableEquipment, _availableEquipment) &&
            const DeepCollectionEquality()
                .equals(other._healthConditions, _healthConditions) &&
            const DeepCollectionEquality()
                .equals(other._dietaryRestrictions, _dietaryRestrictions) &&
            (identical(
                    other.workoutFrequencyPerWeek, workoutFrequencyPerWeek) ||
                other.workoutFrequencyPerWeek == workoutFrequencyPerWeek) &&
            (identical(other.preferredWorkoutDurationMinutes,
                    preferredWorkoutDurationMinutes) ||
                other.preferredWorkoutDurationMinutes ==
                    preferredWorkoutDurationMinutes) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.onboardingCompleted, onboardingCompleted) ||
                other.onboardingCompleted == onboardingCompleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        userId,
        email,
        firstName,
        lastName,
        displayName,
        age,
        heightCm,
        weightKg,
        gender,
        fitnessLevel,
        const DeepCollectionEquality().hash(_fitnessGoals),
        const DeepCollectionEquality().hash(_workoutPreferences),
        const DeepCollectionEquality().hash(_availableEquipment),
        const DeepCollectionEquality().hash(_healthConditions),
        const DeepCollectionEquality().hash(_dietaryRestrictions),
        workoutFrequencyPerWeek,
        preferredWorkoutDurationMinutes,
        createdAt,
        updatedAt,
        onboardingCompleted
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      __$$UserProfileImplCopyWithImpl<_$UserProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileImplToJson(
      this,
    );
  }
}

abstract class _UserProfile implements UserProfile {
  const factory _UserProfile(
      {required final String userId,
      required final String email,
      final String? firstName,
      final String? lastName,
      final String? displayName,
      final int? age,
      @JsonKey(name: 'height_cm') final int? heightCm,
      @JsonKey(name: 'weight_kg') final double? weightKg,
      final Gender? gender,
      @JsonKey(name: 'fitness_level') final FitnessLevel? fitnessLevel,
      @JsonKey(name: 'fitness_goals') final List<FitnessGoal>? fitnessGoals,
      @JsonKey(name: 'workout_preferences')
      final List<WorkoutType>? workoutPreferences,
      @JsonKey(name: 'available_equipment')
      final List<Equipment>? availableEquipment,
      @JsonKey(name: 'health_conditions') final List<String>? healthConditions,
      @JsonKey(name: 'dietary_restrictions')
      final List<String>? dietaryRestrictions,
      @JsonKey(name: 'workout_frequency') final int? workoutFrequencyPerWeek,
      @JsonKey(name: 'workout_duration')
      final int? preferredWorkoutDurationMinutes,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'onboarding_completed')
      final bool onboardingCompleted}) = _$UserProfileImpl;

  factory _UserProfile.fromJson(Map<String, dynamic> json) =
      _$UserProfileImpl.fromJson;

  @override
  String get userId;
  @override
  String get email;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get displayName;
  @override // Personal Information
  int? get age;
  @override
  @JsonKey(name: 'height_cm')
  int? get heightCm;
  @override
  @JsonKey(name: 'weight_kg')
  double? get weightKg;
  @override
  Gender? get gender;
  @override // Fitness Information
  @JsonKey(name: 'fitness_level')
  FitnessLevel? get fitnessLevel;
  @override
  @JsonKey(name: 'fitness_goals')
  List<FitnessGoal>? get fitnessGoals;
  @override
  @JsonKey(name: 'workout_preferences')
  List<WorkoutType>? get workoutPreferences;
  @override
  @JsonKey(name: 'available_equipment')
  List<Equipment>? get availableEquipment;
  @override // Health & Lifestyle
  @JsonKey(name: 'health_conditions')
  List<String>? get healthConditions;
  @override
  @JsonKey(name: 'dietary_restrictions')
  List<String>? get dietaryRestrictions;
  @override
  @JsonKey(name: 'workout_frequency')
  int? get workoutFrequencyPerWeek;
  @override
  @JsonKey(name: 'workout_duration')
  int? get preferredWorkoutDurationMinutes;
  @override // Timestamps
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'onboarding_completed')
  bool get onboardingCompleted;
  @override
  @JsonKey(ignore: true)
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
