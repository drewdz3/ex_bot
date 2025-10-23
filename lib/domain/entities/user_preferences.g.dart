// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserPreferences _$UserPreferencesFromJson(Map<String, dynamic> json) =>
    _UserPreferences(
      userId: json['userId'] as String,
      fitnessGoals:
          (json['fitnessGoals'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$FitnessGoalEnumMap, e))
              .toList() ??
          const [],
      availableEquipment:
          (json['availableEquipment'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$EquipmentEnumMap, e))
              .toList() ??
          const [],
      preferredWorkoutTypes:
          (json['preferredWorkoutTypes'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$WorkoutTypeEnumMap, e))
              .toList() ??
          const [],
      fitnessLevel: $enumDecodeNullable(
        _$FitnessLevelEnumMap,
        json['fitnessLevel'],
      ),
      age: (json['age'] as num?)?.toInt(),
      heightCm: (json['heightCm'] as num?)?.toDouble(),
      weightKg: (json['weightKg'] as num?)?.toDouble(),
      dietaryRestrictions:
          (json['dietaryRestrictions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      medicalConditions:
          (json['medicalConditions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      workoutsPerWeek: (json['workoutsPerWeek'] as num?)?.toInt(),
      workoutDurationMinutes: (json['workoutDurationMinutes'] as num?)?.toInt(),
      hasCompletedInitialAssessment:
          json['hasCompletedInitialAssessment'] as bool? ?? false,
      lastUpdated: json['lastUpdated'] == null
          ? null
          : DateTime.parse(json['lastUpdated'] as String),
      additionalSettings:
          json['additionalSettings'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$UserPreferencesToJson(_UserPreferences instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'fitnessGoals': instance.fitnessGoals
          .map((e) => _$FitnessGoalEnumMap[e]!)
          .toList(),
      'availableEquipment': instance.availableEquipment
          .map((e) => _$EquipmentEnumMap[e]!)
          .toList(),
      'preferredWorkoutTypes': instance.preferredWorkoutTypes
          .map((e) => _$WorkoutTypeEnumMap[e]!)
          .toList(),
      'fitnessLevel': _$FitnessLevelEnumMap[instance.fitnessLevel],
      'age': instance.age,
      'heightCm': instance.heightCm,
      'weightKg': instance.weightKg,
      'dietaryRestrictions': instance.dietaryRestrictions,
      'medicalConditions': instance.medicalConditions,
      'workoutsPerWeek': instance.workoutsPerWeek,
      'workoutDurationMinutes': instance.workoutDurationMinutes,
      'hasCompletedInitialAssessment': instance.hasCompletedInitialAssessment,
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
      'additionalSettings': instance.additionalSettings,
    };

const _$FitnessGoalEnumMap = {
  FitnessGoal.loseWeight: 'loseWeight',
  FitnessGoal.buildMuscle: 'buildMuscle',
  FitnessGoal.improveEndurance: 'improveEndurance',
  FitnessGoal.increaseStrength: 'increaseStrength',
  FitnessGoal.improveFlexibility: 'improveFlexibility',
  FitnessGoal.stayActive: 'stayActive',
  FitnessGoal.rehabRecovery: 'rehabRecovery',
  FitnessGoal.sportSpecific: 'sportSpecific',
};

const _$EquipmentEnumMap = {
  Equipment.dumbbells: 'dumbbells',
  Equipment.barbells: 'barbells',
  Equipment.kettlebells: 'kettlebells',
  Equipment.resistanceBands: 'resistanceBands',
  Equipment.pullupBar: 'pullupBar',
  Equipment.benchPress: 'benchPress',
  Equipment.treadmill: 'treadmill',
  Equipment.bike: 'bike',
  Equipment.rowingMachine: 'rowingMachine',
  Equipment.yogaMat: 'yogaMat',
  Equipment.noEquipment: 'noEquipment',
};

const _$WorkoutTypeEnumMap = {
  WorkoutType.strength: 'strength',
  WorkoutType.cardio: 'cardio',
  WorkoutType.pilates: 'pilates',
  WorkoutType.crossfit: 'crossfit',
  WorkoutType.bodyweight: 'bodyweight',
  WorkoutType.stretching: 'stretching',
  WorkoutType.dance: 'dance',
  WorkoutType.martialArts: 'martialArts',
  WorkoutType.running: 'running',
  WorkoutType.cycling: 'cycling',
  WorkoutType.mountainBiking: 'mountainBiking',
  WorkoutType.surfing: 'surfing',
  WorkoutType.skiing: 'skiing',
  WorkoutType.swimming: 'swimming',
  WorkoutType.hiking: 'hiking',
  WorkoutType.rockClimbing: 'rockClimbing',
};

const _$FitnessLevelEnumMap = {
  FitnessLevel.beginner: 'beginner',
  FitnessLevel.intermediate: 'intermediate',
  FitnessLevel.advanced: 'advanced',
  FitnessLevel.expert: 'expert',
};
