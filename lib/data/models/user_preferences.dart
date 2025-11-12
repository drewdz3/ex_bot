import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_preferences.freezed.dart';
part 'user_preferences.g.dart';

@freezed
sealed class UserPreferences with _$UserPreferences {
  const factory UserPreferences({
    @JsonKey(name: 'id') required String id,
    String? fitnessLevel,
    int? age,
    int? height,
    double? weight,
    String? gender,
    int? workoutsPerWeek,
    int? workoutDurationMinutes,
    String? onboardingPath,
    @Default(false) bool onboardingCompleted,
    @Default([]) List<String> fitnessGoals,
    @Default([]) List<String> availableEquipment,
    @Default([]) List<String> preferredWorkoutTypes,
    @Default([]) List<String> dietaryRestrictions,
    @Default([]) List<String> medicalConditions,
    @Default([]) List<String> injuries,
    @Default([]) List<String> allergies,
    DateTime? lastUpdated,
  }) = _UserPreferences;

  factory UserPreferences.fromJson(Map<String, dynamic> json) => _$UserPreferencesFromJson(json);
}
