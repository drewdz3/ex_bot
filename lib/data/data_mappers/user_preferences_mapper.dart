import 'package:injectable/injectable.dart';
import 'package:realm/realm.dart';

import 'package:ex_bot/data/data_mappers/data_mapper.dart';
import 'package:ex_bot/data/models/user_preferences.dart';
import 'package:ex_bot/data/realm_models/user_preferences_realm.dart';

@Injectable(as: DataMapper<UserPreferences, UserPreferencesRealm>)
class UserPreferencesMapper implements DataMapper<UserPreferences, UserPreferencesRealm> {
  const UserPreferencesMapper();

  @override
  UserPreferences toData(UserPreferencesRealm data) {
    return UserPreferences(
      id: data.id,
      fitnessLevel: data.fitnessLevel,
      age: data.age,
      height: data.height,
      weight: data.weight,
      gender: data.gender,
      workoutsPerWeek: data.workoutsPerWeek,
      workoutDurationMinutes: data.workoutDurationMinutes,
      onboardingCompleted: data.onboardingCompleted,
      onboardingPath: data.onboardingPath,
      fitnessGoals: data.fitnessGoals,
      availableEquipment: data.availableEquipment,
      preferredWorkoutTypes: data.preferredWorkoutTypes,
      dietaryRestrictions: data.dietaryRestrictions,
      medicalConditions: data.medicalConditions,
      injuries: data.injuries,
      allergies: data.allergies,
      lastUpdated: data.lastUpdated,
    );
  }

  @override
  List<UserPreferences> toDataList(List<RealmObject> data) {
    return data.map((e) => toData(e as UserPreferencesRealm)).toList();
  }

  @override
  UserPreferencesRealm toDatabase(UserPreferences entity) {
    return UserPreferencesRealm(
      entity.id,
      entity.onboardingCompleted,
      entity.lastUpdated ?? DateTime.now(),
      fitnessLevel: entity.fitnessLevel,
      age: entity.age,
      height: entity.height,
      weight: entity.weight,
      gender: entity.gender,
      workoutsPerWeek: entity.workoutsPerWeek,
      workoutDurationMinutes: entity.workoutDurationMinutes,
      onboardingPath: entity.onboardingPath,
      fitnessGoals: entity.fitnessGoals,
      availableEquipment: entity.availableEquipment,
      preferredWorkoutTypes: entity.preferredWorkoutTypes,
      dietaryRestrictions: entity.dietaryRestrictions,
      medicalConditions: entity.medicalConditions,
      injuries: entity.injuries,
      allergies: entity.allergies,
    );
  }

  @override
  List<UserPreferencesRealm> toDatabaseList(List<UserPreferences> entities) {
    return entities.map((e) => toDatabase(e)).toList();
  }
}
