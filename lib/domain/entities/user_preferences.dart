import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_preferences.freezed.dart';
part 'user_preferences.g.dart';

/// User's preferences and onboarding state that evolves over time
@freezed
abstract class UserPreferences with _$UserPreferences {
  const factory UserPreferences({
    required String userId,
    @Default([]) List<FitnessGoal> fitnessGoals,
    @Default([]) List<Equipment> availableEquipment,
    @Default([]) List<WorkoutType> preferredWorkoutTypes,
    FitnessLevel? fitnessLevel,
    int? age,
    double? heightCm,
    double? weightKg,
    @Default([]) List<String> dietaryRestrictions,
    @Default([]) List<String> medicalConditions,
    int? workoutsPerWeek,
    int? workoutDurationMinutes,
    @Default(false) bool hasCompletedInitialAssessment,
    DateTime? lastUpdated,
    @Default({}) Map<String, dynamic> additionalSettings,
  }) = _UserPreferences;

  factory UserPreferences.fromJson(Map<String, dynamic> json) => _$UserPreferencesFromJson(json);

  /// Create a new UserPreferences for a user
  factory UserPreferences.newUser(String userId) {
    return UserPreferences(userId: userId, lastUpdated: DateTime.now());
  }
}

/// Fitness goals the user wants to achieve
enum FitnessGoal {
  loseWeight,
  buildMuscle,
  improveEndurance,
  increaseStrength,
  improveFlexibility,
  stayActive,
  rehabRecovery,
  sportSpecific,
}

/// Available equipment for workouts
enum Equipment {
  dumbbells,
  barbells,
  kettlebells,
  resistanceBands,
  pullupBar,
  benchPress,
  treadmill,
  bike,
  rowingMachine,
  yogaMat,
  noEquipment,
}

/// Preferred workout types
enum WorkoutType {
  strength,
  cardio,
  pilates,
  crossfit,
  bodyweight,
  stretching,
  dance,
  martialArts,
  // Activities
  running,
  cycling,
  mountainBiking,
  surfing,
  skiing,
  swimming,
  hiking,
  rockClimbing,
}

/// User's current fitness level
enum FitnessLevel { beginner, intermediate, advanced, expert }
