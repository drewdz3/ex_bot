import 'package:ex_bot/data/data_mappers/entity_mapper.dart';
import 'package:ex_bot/data/models/user_preferences.dart';
import 'package:ex_bot/data/realm_models/user_preferences_realm.dart';
import 'package:injectable/injectable.dart';
import 'package:realm_dart/src/realm_object.dart';

@Injectable(as: DataMapper<UserPreferences, UserPreferencesRealm>)
class UserPreferencesMapper implements DataMapper<UserPreferences, UserPreferencesRealm> {
  const UserPreferencesMapper();

  @override
  UserPreferences toData(UserPreferencesRealm data) {
    return UserPreferences(
      userId: data.userId,
      fitnessLevel: data.fitnessLevel,
      age: data.age,
      height: data.height,
      weight: data.weight,
      workoutsPerWeek: data.workoutsPerWeek,
      workoutDurationMinutes: data.workoutDurationMinutes,
      onboardingCompleted: data.onboardingCompleted,
      fitnessGoals: data.fitnessGoals,
      availableEquipment: data.availableEquipment,
      preferredWorkoutTypes: data.preferredWorkoutTypes,
      dietaryRestrictions: data.dietaryRestrictions,
      medicalConditions: data.medicalConditions,
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
      entity.userId,
      entity.onboardingCompleted,
      entity.lastUpdated ?? DateTime.now(),
      fitnessLevel: entity.fitnessLevel,
      age: entity.age,
      height: entity.height,
      weight: entity.weight,
      workoutsPerWeek: entity.workoutsPerWeek,
      workoutDurationMinutes: entity.workoutDurationMinutes,
      fitnessGoals: entity.fitnessGoals,
      availableEquipment: entity.availableEquipment,
      preferredWorkoutTypes: entity.preferredWorkoutTypes,
      dietaryRestrictions: entity.dietaryRestrictions,
      medicalConditions: entity.medicalConditions,
    );
  }

  @override
  List<UserPreferencesRealm> toDatabaseList(List<UserPreferences> entities) {
    return entities.map((e) => toDatabase(e)).toList();
  }
}
