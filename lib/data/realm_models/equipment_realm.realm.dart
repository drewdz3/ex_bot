// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equipment_realm.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
class EquipmentRealm extends _EquipmentRealm
    with RealmEntity, RealmObjectBase, RealmObject {
  EquipmentRealm(String id, String name, {String? icon}) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'icon', icon);
  }

  EquipmentRealm._();

  @override
  String get id => RealmObjectBase.get<String>(this, 'id') as String;
  @override
  set id(String value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  String? get icon => RealmObjectBase.get<String>(this, 'icon') as String?;
  @override
  set icon(String? value) => RealmObjectBase.set(this, 'icon', value);

  @override
  Stream<RealmObjectChanges<EquipmentRealm>> get changes =>
      RealmObjectBase.getChanges<EquipmentRealm>(this);

  @override
  Stream<RealmObjectChanges<EquipmentRealm>> changesFor([
    List<String>? keyPaths,
  ]) => RealmObjectBase.getChangesFor<EquipmentRealm>(this, keyPaths);

  @override
  EquipmentRealm freeze() => RealmObjectBase.freezeObject<EquipmentRealm>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'name': name.toEJson(),
      'icon': icon.toEJson(),
    };
  }

  static EJsonValue _toEJson(EquipmentRealm value) => value.toEJson();
  static EquipmentRealm _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {'id': EJsonValue id, 'name': EJsonValue name} => EquipmentRealm(
        fromEJson(id),
        fromEJson(name),
        icon: fromEJson(ejson['icon']),
      ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(EquipmentRealm._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(
      ObjectType.realmObject,
      EquipmentRealm,
      'EquipmentRealm',
      [
        SchemaProperty('id', RealmPropertyType.string, primaryKey: true),
        SchemaProperty('name', RealmPropertyType.string),
        SchemaProperty('icon', RealmPropertyType.string, optional: true),
      ],
    );
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
