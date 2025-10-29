// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_type_realm.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
class WorkoutTypeRealm extends _WorkoutTypeRealm
    with RealmEntity, RealmObjectBase, RealmObject {
  WorkoutTypeRealm(String id, String name, String description, {String? icon}) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'description', description);
    RealmObjectBase.set(this, 'icon', icon);
  }

  WorkoutTypeRealm._();

  @override
  String get id => RealmObjectBase.get<String>(this, 'id') as String;
  @override
  set id(String value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  String get description =>
      RealmObjectBase.get<String>(this, 'description') as String;
  @override
  set description(String value) =>
      RealmObjectBase.set(this, 'description', value);

  @override
  String? get icon => RealmObjectBase.get<String>(this, 'icon') as String?;
  @override
  set icon(String? value) => RealmObjectBase.set(this, 'icon', value);

  @override
  Stream<RealmObjectChanges<WorkoutTypeRealm>> get changes =>
      RealmObjectBase.getChanges<WorkoutTypeRealm>(this);

  @override
  Stream<RealmObjectChanges<WorkoutTypeRealm>> changesFor([
    List<String>? keyPaths,
  ]) => RealmObjectBase.getChangesFor<WorkoutTypeRealm>(this, keyPaths);

  @override
  WorkoutTypeRealm freeze() =>
      RealmObjectBase.freezeObject<WorkoutTypeRealm>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'name': name.toEJson(),
      'description': description.toEJson(),
      'icon': icon.toEJson(),
    };
  }

  static EJsonValue _toEJson(WorkoutTypeRealm value) => value.toEJson();
  static WorkoutTypeRealm _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'name': EJsonValue name,
        'description': EJsonValue description,
      } =>
        WorkoutTypeRealm(
          fromEJson(id),
          fromEJson(name),
          fromEJson(description),
          icon: fromEJson(ejson['icon']),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(WorkoutTypeRealm._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(
      ObjectType.realmObject,
      WorkoutTypeRealm,
      'WorkoutTypeRealm',
      [
        SchemaProperty('id', RealmPropertyType.string, primaryKey: true),
        SchemaProperty('name', RealmPropertyType.string),
        SchemaProperty('description', RealmPropertyType.string),
        SchemaProperty('icon', RealmPropertyType.string, optional: true),
      ],
    );
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
