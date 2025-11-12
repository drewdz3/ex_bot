// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserPreferences _$UserPreferencesFromJson(
  Map<String, dynamic> json,
) => _UserPreferences(
  id: json['id'] as String,
  fitnessLevel: json['fitnessLevel'] as String?,
  age: (json['age'] as num?)?.toInt(),
  height: (json['height'] as num?)?.toInt(),
  weight: (json['weight'] as num?)?.toDouble(),
  gender: json['gender'] as String?,
  workoutsPerWeek: (json['workoutsPerWeek'] as num?)?.toInt(),
  workoutDurationMinutes: (json['workoutDurationMinutes'] as num?)?.toInt(),
  onboardingPath: json['onboardingPath'] as String?,
  onboardingCompleted: json['onboardingCompleted'] as bool? ?? false,
  fitnessGoals:
      (json['fitnessGoals'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  availableEquipment:
      (json['availableEquipment'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  preferredWorkoutTypes:
      (json['preferredWorkoutTypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
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
  injuries:
      (json['injuries'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  allergies:
      (json['allergies'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  lastUpdated: json['lastUpdated'] == null
      ? null
      : DateTime.parse(json['lastUpdated'] as String),
);

Map<String, dynamic> _$UserPreferencesToJson(_UserPreferences instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fitnessLevel': instance.fitnessLevel,
      'age': instance.age,
      'height': instance.height,
      'weight': instance.weight,
      'gender': instance.gender,
      'workoutsPerWeek': instance.workoutsPerWeek,
      'workoutDurationMinutes': instance.workoutDurationMinutes,
      'onboardingPath': instance.onboardingPath,
      'onboardingCompleted': instance.onboardingCompleted,
      'fitnessGoals': instance.fitnessGoals,
      'availableEquipment': instance.availableEquipment,
      'preferredWorkoutTypes': instance.preferredWorkoutTypes,
      'dietaryRestrictions': instance.dietaryRestrictions,
      'medicalConditions': instance.medicalConditions,
      'injuries': instance.injuries,
      'allergies': instance.allergies,
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
    };
