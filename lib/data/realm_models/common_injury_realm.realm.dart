// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_injury_realm.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
class CommonInjuryRealm extends _CommonInjuryRealm
    with RealmEntity, RealmObjectBase, RealmObject {
  CommonInjuryRealm(String id, String name) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'name', name);
  }

  CommonInjuryRealm._();

  @override
  String get id => RealmObjectBase.get<String>(this, 'id') as String;
  @override
  set id(String value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  Stream<RealmObjectChanges<CommonInjuryRealm>> get changes =>
      RealmObjectBase.getChanges<CommonInjuryRealm>(this);

  @override
  Stream<RealmObjectChanges<CommonInjuryRealm>> changesFor([
    List<String>? keyPaths,
  ]) => RealmObjectBase.getChangesFor<CommonInjuryRealm>(this, keyPaths);

  @override
  CommonInjuryRealm freeze() =>
      RealmObjectBase.freezeObject<CommonInjuryRealm>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{'id': id.toEJson(), 'name': name.toEJson()};
  }

  static EJsonValue _toEJson(CommonInjuryRealm value) => value.toEJson();
  static CommonInjuryRealm _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {'id': EJsonValue id, 'name': EJsonValue name} => CommonInjuryRealm(
        fromEJson(id),
        fromEJson(name),
      ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(CommonInjuryRealm._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(
      ObjectType.realmObject,
      CommonInjuryRealm,
      'CommonInjuryRealm',
      [
        SchemaProperty('id', RealmPropertyType.string, primaryKey: true),
        SchemaProperty('name', RealmPropertyType.string),
      ],
    );
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
