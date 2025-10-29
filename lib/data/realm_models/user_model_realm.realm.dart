// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model_realm.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
class UserRealm extends _UserRealm
    with RealmEntity, RealmObjectBase, RealmObject {
  UserRealm(
    String id,
    String name,
    String email, {
    int? age,
    String? gender,
    double? weight,
    int? height,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'email', email);
    RealmObjectBase.set(this, 'age', age);
    RealmObjectBase.set(this, 'gender', gender);
    RealmObjectBase.set(this, 'weight', weight);
    RealmObjectBase.set(this, 'height', height);
    RealmObjectBase.set(this, 'createdAt', createdAt);
    RealmObjectBase.set(this, 'updatedAt', updatedAt);
  }

  UserRealm._();

  @override
  String get id => RealmObjectBase.get<String>(this, 'id') as String;
  @override
  set id(String value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  String get email => RealmObjectBase.get<String>(this, 'email') as String;
  @override
  set email(String value) => RealmObjectBase.set(this, 'email', value);

  @override
  int? get age => RealmObjectBase.get<int>(this, 'age') as int?;
  @override
  set age(int? value) => RealmObjectBase.set(this, 'age', value);

  @override
  String? get gender => RealmObjectBase.get<String>(this, 'gender') as String?;
  @override
  set gender(String? value) => RealmObjectBase.set(this, 'gender', value);

  @override
  double? get weight => RealmObjectBase.get<double>(this, 'weight') as double?;
  @override
  set weight(double? value) => RealmObjectBase.set(this, 'weight', value);

  @override
  int? get height => RealmObjectBase.get<int>(this, 'height') as int?;
  @override
  set height(int? value) => RealmObjectBase.set(this, 'height', value);

  @override
  DateTime? get createdAt =>
      RealmObjectBase.get<DateTime>(this, 'createdAt') as DateTime?;
  @override
  set createdAt(DateTime? value) =>
      RealmObjectBase.set(this, 'createdAt', value);

  @override
  DateTime? get updatedAt =>
      RealmObjectBase.get<DateTime>(this, 'updatedAt') as DateTime?;
  @override
  set updatedAt(DateTime? value) =>
      RealmObjectBase.set(this, 'updatedAt', value);

  @override
  Stream<RealmObjectChanges<UserRealm>> get changes =>
      RealmObjectBase.getChanges<UserRealm>(this);

  @override
  Stream<RealmObjectChanges<UserRealm>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<UserRealm>(this, keyPaths);

  @override
  UserRealm freeze() => RealmObjectBase.freezeObject<UserRealm>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'name': name.toEJson(),
      'email': email.toEJson(),
      'age': age.toEJson(),
      'gender': gender.toEJson(),
      'weight': weight.toEJson(),
      'height': height.toEJson(),
      'createdAt': createdAt.toEJson(),
      'updatedAt': updatedAt.toEJson(),
    };
  }

  static EJsonValue _toEJson(UserRealm value) => value.toEJson();
  static UserRealm _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'name': EJsonValue name,
        'email': EJsonValue email,
      } =>
        UserRealm(
          fromEJson(id),
          fromEJson(name),
          fromEJson(email),
          age: fromEJson(ejson['age']),
          gender: fromEJson(ejson['gender']),
          weight: fromEJson(ejson['weight']),
          height: fromEJson(ejson['height']),
          createdAt: fromEJson(ejson['createdAt']),
          updatedAt: fromEJson(ejson['updatedAt']),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(UserRealm._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(ObjectType.realmObject, UserRealm, 'UserRealm', [
      SchemaProperty('id', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('email', RealmPropertyType.string),
      SchemaProperty('age', RealmPropertyType.int, optional: true),
      SchemaProperty('gender', RealmPropertyType.string, optional: true),
      SchemaProperty('weight', RealmPropertyType.double, optional: true),
      SchemaProperty('height', RealmPropertyType.int, optional: true),
      SchemaProperty('createdAt', RealmPropertyType.timestamp, optional: true),
      SchemaProperty('updatedAt', RealmPropertyType.timestamp, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
