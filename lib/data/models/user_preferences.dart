import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_preferences.freezed.dart';

@freezed
sealed class UserPreferences with _$UserPreferences {
  const factory UserPreferences({
    required String id,
    String? fitnessLevel,
    int? age,
    double? height,
    double? weight,
    int? workoutsPerWeek,
    int? workoutDurationMinutes,
    @Default(false) bool onboardingCompleted,
    @Default([]) List<String> fitnessGoals,
    @Default([]) List<String> availableEquipment,
    @Default([]) List<String> preferredWorkoutTypes,
    @Default([]) List<String> dietaryRestrictions,
    @Default([]) List<String> medicalConditions,
    DateTime? lastUpdated,
  }) = _UserPreferences;
}
