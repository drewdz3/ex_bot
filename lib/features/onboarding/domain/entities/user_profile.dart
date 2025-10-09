import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

/// User profile with fitness and personal information
@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile({
    required String userId,
    required String email,
    String? firstName,
    String? lastName,
    String? displayName,
    
    // Personal Information
    int? age,
    @JsonKey(name: 'height_cm') int? heightCm,
    @JsonKey(name: 'weight_kg') double? weightKg,
    Gender? gender,
    
    // Fitness Information
    @JsonKey(name: 'fitness_level') FitnessLevel? fitnessLevel,
    @JsonKey(name: 'fitness_goals') List<FitnessGoal>? fitnessGoals,
    @JsonKey(name: 'workout_preferences') List<WorkoutType>? workoutPreferences,
    @JsonKey(name: 'available_equipment') List<Equipment>? availableEquipment,
    
    // Health & Lifestyle
    @JsonKey(name: 'health_conditions') List<String>? healthConditions,
    @JsonKey(name: 'dietary_restrictions') List<String>? dietaryRestrictions,
    @JsonKey(name: 'workout_frequency') int? workoutFrequencyPerWeek,
    @JsonKey(name: 'workout_duration') int? preferredWorkoutDurationMinutes,
    
    // Timestamps
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'onboarding_completed') @Default(false) bool onboardingCompleted,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}

/// Gender enumeration - for health and fitness calculations (BMI, metabolic rate, etc.)
enum Gender {
  male,
  female;
}

/// Fitness level enumeration
enum FitnessLevel {
  beginner,
  intermediate,
  advanced,
  athlete;
}

/// Fitness goals enumeration
enum FitnessGoal {
  loseWeight,
  gainMuscle,
  improveEndurance,
  increaseStrength,
  improveFlexibility,
  generalHealth,
  stressRelief,
  athleticPerformance;
}

/// Workout types enumeration
enum WorkoutType {
  cardio,
  strength,
  hiit,
  yoga,
  pilates,
  running,
  cycling,
  swimming,
  crossfit,
  bodyweight;
}

/// Available equipment enumeration
enum Equipment {
  none,
  dumbbells,
  barbells,
  resistanceBands,
  pullupBar,
  kettlebells,
  treadmill,
  stationaryBike,
  yogaMat,
  fullGym;
}