// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_allergy_realm.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
class FoodAllergyRealm extends _FoodAllergyRealm
    with RealmEntity, RealmObjectBase, RealmObject {
  FoodAllergyRealm(String id, String name) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'name', name);
  }

  FoodAllergyRealm._();

  @override
  String get id => RealmObjectBase.get<String>(this, 'id') as String;
  @override
  set id(String value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  Stream<RealmObjectChanges<FoodAllergyRealm>> get changes =>
      RealmObjectBase.getChanges<FoodAllergyRealm>(this);

  @override
  Stream<RealmObjectChanges<FoodAllergyRealm>> changesFor([
    List<String>? keyPaths,
  ]) => RealmObjectBase.getChangesFor<FoodAllergyRealm>(this, keyPaths);

  @override
  FoodAllergyRealm freeze() =>
      RealmObjectBase.freezeObject<FoodAllergyRealm>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{'id': id.toEJson(), 'name': name.toEJson()};
  }

  static EJsonValue _toEJson(FoodAllergyRealm value) => value.toEJson();
  static FoodAllergyRealm _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {'id': EJsonValue id, 'name': EJsonValue name} => FoodAllergyRealm(
        fromEJson(id),
        fromEJson(name),
      ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(FoodAllergyRealm._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(
      ObjectType.realmObject,
      FoodAllergyRealm,
      'FoodAllergyRealm',
      [
        SchemaProperty('id', RealmPropertyType.string, primaryKey: true),
        SchemaProperty('name', RealmPropertyType.string),
      ],
    );
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
