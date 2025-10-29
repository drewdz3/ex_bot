// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fitness_level_realm.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
class FitnessLevelRealm extends _FitnessLevelRealm
    with RealmEntity, RealmObjectBase, RealmObject {
  FitnessLevelRealm(String id, String name) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'name', name);
  }

  FitnessLevelRealm._();

  @override
  String get id => RealmObjectBase.get<String>(this, 'id') as String;
  @override
  set id(String value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  Stream<RealmObjectChanges<FitnessLevelRealm>> get changes =>
      RealmObjectBase.getChanges<FitnessLevelRealm>(this);

  @override
  Stream<RealmObjectChanges<FitnessLevelRealm>> changesFor([
    List<String>? keyPaths,
  ]) => RealmObjectBase.getChangesFor<FitnessLevelRealm>(this, keyPaths);

  @override
  FitnessLevelRealm freeze() =>
      RealmObjectBase.freezeObject<FitnessLevelRealm>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{'id': id.toEJson(), 'name': name.toEJson()};
  }

  static EJsonValue _toEJson(FitnessLevelRealm value) => value.toEJson();
  static FitnessLevelRealm _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {'id': EJsonValue id, 'name': EJsonValue name} => FitnessLevelRealm(
        fromEJson(id),
        fromEJson(name),
      ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(FitnessLevelRealm._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(
      ObjectType.realmObject,
      FitnessLevelRealm,
      'FitnessLevelRealm',
      [
        SchemaProperty('id', RealmPropertyType.string, primaryKey: true),
        SchemaProperty('name', RealmPropertyType.string),
      ],
    );
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
