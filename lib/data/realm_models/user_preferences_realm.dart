import 'package:realm/realm.dart';

part 'user_preferences_realm.realm.dart';

@RealmModel()
class _UserPreferencesRealm {
  @PrimaryKey()
  late String id;
  late String? fitnessLevel;
  late int? age;
  late double? height;
  late double? weight;
  late int? workoutsPerWeek;
  late int? workoutDurationMinutes;
  late bool onboardingCompleted;
  late List<String> fitnessGoals;
  late List<String> availableEquipment;
  late List<String> preferredWorkoutTypes;
  late List<String> dietaryRestrictions;
  late List<String> medicalConditions;
  late DateTime lastUpdated;
}
