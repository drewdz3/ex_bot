// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preferences_realm.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
class UserPreferencesRealm extends _UserPreferencesRealm
    with RealmEntity, RealmObjectBase, RealmObject {
  UserPreferencesRealm(
    String id,
    bool onboardingCompleted,
    DateTime lastUpdated, {
    String? fitnessLevel,
    int? age,
    double? height,
    double? weight,
    int? workoutsPerWeek,
    int? workoutDurationMinutes,
    Iterable<String> fitnessGoals = const [],
    Iterable<String> availableEquipment = const [],
    Iterable<String> preferredWorkoutTypes = const [],
    Iterable<String> dietaryRestrictions = const [],
    Iterable<String> medicalConditions = const [],
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'fitnessLevel', fitnessLevel);
    RealmObjectBase.set(this, 'age', age);
    RealmObjectBase.set(this, 'height', height);
    RealmObjectBase.set(this, 'weight', weight);
    RealmObjectBase.set(this, 'workoutsPerWeek', workoutsPerWeek);
    RealmObjectBase.set(this, 'workoutDurationMinutes', workoutDurationMinutes);
    RealmObjectBase.set(this, 'onboardingCompleted', onboardingCompleted);
    RealmObjectBase.set<RealmList<String>>(
      this,
      'fitnessGoals',
      RealmList<String>(fitnessGoals),
    );
    RealmObjectBase.set<RealmList<String>>(
      this,
      'availableEquipment',
      RealmList<String>(availableEquipment),
    );
    RealmObjectBase.set<RealmList<String>>(
      this,
      'preferredWorkoutTypes',
      RealmList<String>(preferredWorkoutTypes),
    );
    RealmObjectBase.set<RealmList<String>>(
      this,
      'dietaryRestrictions',
      RealmList<String>(dietaryRestrictions),
    );
    RealmObjectBase.set<RealmList<String>>(
      this,
      'medicalConditions',
      RealmList<String>(medicalConditions),
    );
    RealmObjectBase.set(this, 'lastUpdated', lastUpdated);
  }

  UserPreferencesRealm._();

  @override
  String get id => RealmObjectBase.get<String>(this, 'id') as String;
  @override
  set id(String value) => RealmObjectBase.set(this, 'id', value);

  @override
  String? get fitnessLevel =>
      RealmObjectBase.get<String>(this, 'fitnessLevel') as String?;
  @override
  set fitnessLevel(String? value) =>
      RealmObjectBase.set(this, 'fitnessLevel', value);

  @override
  int? get age => RealmObjectBase.get<int>(this, 'age') as int?;
  @override
  set age(int? value) => RealmObjectBase.set(this, 'age', value);

  @override
  double? get height => RealmObjectBase.get<double>(this, 'height') as double?;
  @override
  set height(double? value) => RealmObjectBase.set(this, 'height', value);

  @override
  double? get weight => RealmObjectBase.get<double>(this, 'weight') as double?;
  @override
  set weight(double? value) => RealmObjectBase.set(this, 'weight', value);

  @override
  int? get workoutsPerWeek =>
      RealmObjectBase.get<int>(this, 'workoutsPerWeek') as int?;
  @override
  set workoutsPerWeek(int? value) =>
      RealmObjectBase.set(this, 'workoutsPerWeek', value);

  @override
  int? get workoutDurationMinutes =>
      RealmObjectBase.get<int>(this, 'workoutDurationMinutes') as int?;
  @override
  set workoutDurationMinutes(int? value) =>
      RealmObjectBase.set(this, 'workoutDurationMinutes', value);

  @override
  bool get onboardingCompleted =>
      RealmObjectBase.get<bool>(this, 'onboardingCompleted') as bool;
  @override
  set onboardingCompleted(bool value) =>
      RealmObjectBase.set(this, 'onboardingCompleted', value);

  @override
  RealmList<String> get fitnessGoals =>
      RealmObjectBase.get<String>(this, 'fitnessGoals') as RealmList<String>;
  @override
  set fitnessGoals(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<String> get availableEquipment =>
      RealmObjectBase.get<String>(this, 'availableEquipment')
          as RealmList<String>;
  @override
  set availableEquipment(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<String> get preferredWorkoutTypes =>
      RealmObjectBase.get<String>(this, 'preferredWorkoutTypes')
          as RealmList<String>;
  @override
  set preferredWorkoutTypes(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<String> get dietaryRestrictions =>
      RealmObjectBase.get<String>(this, 'dietaryRestrictions')
          as RealmList<String>;
  @override
  set dietaryRestrictions(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<String> get medicalConditions =>
      RealmObjectBase.get<String>(this, 'medicalConditions')
          as RealmList<String>;
  @override
  set medicalConditions(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  DateTime get lastUpdated =>
      RealmObjectBase.get<DateTime>(this, 'lastUpdated') as DateTime;
  @override
  set lastUpdated(DateTime value) =>
      RealmObjectBase.set(this, 'lastUpdated', value);

  @override
  Stream<RealmObjectChanges<UserPreferencesRealm>> get changes =>
      RealmObjectBase.getChanges<UserPreferencesRealm>(this);

  @override
  Stream<RealmObjectChanges<UserPreferencesRealm>> changesFor([
    List<String>? keyPaths,
  ]) => RealmObjectBase.getChangesFor<UserPreferencesRealm>(this, keyPaths);

  @override
  UserPreferencesRealm freeze() =>
      RealmObjectBase.freezeObject<UserPreferencesRealm>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'fitnessLevel': fitnessLevel.toEJson(),
      'age': age.toEJson(),
      'height': height.toEJson(),
      'weight': weight.toEJson(),
      'workoutsPerWeek': workoutsPerWeek.toEJson(),
      'workoutDurationMinutes': workoutDurationMinutes.toEJson(),
      'onboardingCompleted': onboardingCompleted.toEJson(),
      'fitnessGoals': fitnessGoals.toEJson(),
      'availableEquipment': availableEquipment.toEJson(),
      'preferredWorkoutTypes': preferredWorkoutTypes.toEJson(),
      'dietaryRestrictions': dietaryRestrictions.toEJson(),
      'medicalConditions': medicalConditions.toEJson(),
      'lastUpdated': lastUpdated.toEJson(),
    };
  }

  static EJsonValue _toEJson(UserPreferencesRealm value) => value.toEJson();
  static UserPreferencesRealm _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'onboardingCompleted': EJsonValue onboardingCompleted,
        'lastUpdated': EJsonValue lastUpdated,
      } =>
        UserPreferencesRealm(
          fromEJson(id),
          fromEJson(onboardingCompleted),
          fromEJson(lastUpdated),
          fitnessLevel: fromEJson(ejson['fitnessLevel']),
          age: fromEJson(ejson['age']),
          height: fromEJson(ejson['height']),
          weight: fromEJson(ejson['weight']),
          workoutsPerWeek: fromEJson(ejson['workoutsPerWeek']),
          workoutDurationMinutes: fromEJson(ejson['workoutDurationMinutes']),
          fitnessGoals: fromEJson(ejson['fitnessGoals']),
          availableEquipment: fromEJson(ejson['availableEquipment']),
          preferredWorkoutTypes: fromEJson(ejson['preferredWorkoutTypes']),
          dietaryRestrictions: fromEJson(ejson['dietaryRestrictions']),
          medicalConditions: fromEJson(ejson['medicalConditions']),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(UserPreferencesRealm._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(
      ObjectType.realmObject,
      UserPreferencesRealm,
      'UserPreferencesRealm',
      [
        SchemaProperty('id', RealmPropertyType.string, primaryKey: true),
        SchemaProperty(
          'fitnessLevel',
          RealmPropertyType.string,
          optional: true,
        ),
        SchemaProperty('age', RealmPropertyType.int, optional: true),
        SchemaProperty('height', RealmPropertyType.double, optional: true),
        SchemaProperty('weight', RealmPropertyType.double, optional: true),
        SchemaProperty(
          'workoutsPerWeek',
          RealmPropertyType.int,
          optional: true,
        ),
        SchemaProperty(
          'workoutDurationMinutes',
          RealmPropertyType.int,
          optional: true,
        ),
        SchemaProperty('onboardingCompleted', RealmPropertyType.bool),
        SchemaProperty(
          'fitnessGoals',
          RealmPropertyType.string,
          collectionType: RealmCollectionType.list,
        ),
        SchemaProperty(
          'availableEquipment',
          RealmPropertyType.string,
          collectionType: RealmCollectionType.list,
        ),
        SchemaProperty(
          'preferredWorkoutTypes',
          RealmPropertyType.string,
          collectionType: RealmCollectionType.list,
        ),
        SchemaProperty(
          'dietaryRestrictions',
          RealmPropertyType.string,
          collectionType: RealmCollectionType.list,
        ),
        SchemaProperty(
          'medicalConditions',
          RealmPropertyType.string,
          collectionType: RealmCollectionType.list,
        ),
        SchemaProperty('lastUpdated', RealmPropertyType.timestamp),
      ],
    );
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
