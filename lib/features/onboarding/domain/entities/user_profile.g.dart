// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileImpl _$$UserProfileImplFromJson(Map<String, dynamic> json) =>
    _$UserProfileImpl(
      userId: json['userId'] as String,
      email: json['email'] as String,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      displayName: json['displayName'] as String?,
      age: (json['age'] as num?)?.toInt(),
      heightCm: (json['height_cm'] as num?)?.toInt(),
      weightKg: (json['weight_kg'] as num?)?.toDouble(),
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      fitnessLevel:
          $enumDecodeNullable(_$FitnessLevelEnumMap, json['fitness_level']),
      fitnessGoals: (json['fitness_goals'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$FitnessGoalEnumMap, e))
          .toList(),
      workoutPreferences: (json['workout_preferences'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$WorkoutTypeEnumMap, e))
          .toList(),
      availableEquipment: (json['available_equipment'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$EquipmentEnumMap, e))
          .toList(),
      healthConditions: (json['health_conditions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      dietaryRestrictions: (json['dietary_restrictions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      workoutFrequencyPerWeek: (json['workout_frequency'] as num?)?.toInt(),
      preferredWorkoutDurationMinutes:
          (json['workout_duration'] as num?)?.toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      onboardingCompleted: json['onboarding_completed'] as bool? ?? false,
    );

Map<String, dynamic> _$$UserProfileImplToJson(_$UserProfileImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'displayName': instance.displayName,
      'age': instance.age,
      'height_cm': instance.heightCm,
      'weight_kg': instance.weightKg,
      'gender': _$GenderEnumMap[instance.gender],
      'fitness_level': _$FitnessLevelEnumMap[instance.fitnessLevel],
      'fitness_goals':
          instance.fitnessGoals?.map((e) => _$FitnessGoalEnumMap[e]!).toList(),
      'workout_preferences': instance.workoutPreferences
          ?.map((e) => _$WorkoutTypeEnumMap[e]!)
          .toList(),
      'available_equipment': instance.availableEquipment
          ?.map((e) => _$EquipmentEnumMap[e]!)
          .toList(),
      'health_conditions': instance.healthConditions,
      'dietary_restrictions': instance.dietaryRestrictions,
      'workout_frequency': instance.workoutFrequencyPerWeek,
      'workout_duration': instance.preferredWorkoutDurationMinutes,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'onboarding_completed': instance.onboardingCompleted,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
};

const _$FitnessLevelEnumMap = {
  FitnessLevel.beginner: 'beginner',
  FitnessLevel.intermediate: 'intermediate',
  FitnessLevel.advanced: 'advanced',
  FitnessLevel.athlete: 'athlete',
};

const _$FitnessGoalEnumMap = {
  FitnessGoal.loseWeight: 'loseWeight',
  FitnessGoal.gainMuscle: 'gainMuscle',
  FitnessGoal.improveEndurance: 'improveEndurance',
  FitnessGoal.increaseStrength: 'increaseStrength',
  FitnessGoal.improveFlexibility: 'improveFlexibility',
  FitnessGoal.generalHealth: 'generalHealth',
  FitnessGoal.stressRelief: 'stressRelief',
  FitnessGoal.athleticPerformance: 'athleticPerformance',
};

const _$WorkoutTypeEnumMap = {
  WorkoutType.cardio: 'cardio',
  WorkoutType.strength: 'strength',
  WorkoutType.hiit: 'hiit',
  WorkoutType.yoga: 'yoga',
  WorkoutType.pilates: 'pilates',
  WorkoutType.running: 'running',
  WorkoutType.cycling: 'cycling',
  WorkoutType.swimming: 'swimming',
  WorkoutType.crossfit: 'crossfit',
  WorkoutType.bodyweight: 'bodyweight',
};

const _$EquipmentEnumMap = {
  Equipment.none: 'none',
  Equipment.dumbbells: 'dumbbells',
  Equipment.barbells: 'barbells',
  Equipment.resistanceBands: 'resistanceBands',
  Equipment.pullupBar: 'pullupBar',
  Equipment.kettlebells: 'kettlebells',
  Equipment.treadmill: 'treadmill',
  Equipment.stationaryBike: 'stationaryBike',
  Equipment.yogaMat: 'yogaMat',
  Equipment.fullGym: 'fullGym',
};
