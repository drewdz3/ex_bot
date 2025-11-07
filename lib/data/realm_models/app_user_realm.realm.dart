// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user_realm.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
class AppUserRealm extends _AppUserRealm
    with RealmEntity, RealmObjectBase, RealmObject {
  AppUserRealm(
    String id,
    String email,
    DateTime createdAt, {
    String? displayName,
    String? profilePictureUrl,
    DateTime? lastLoginAt,
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'email', email);
    RealmObjectBase.set(this, 'displayName', displayName);
    RealmObjectBase.set(this, 'profilePictureUrl', profilePictureUrl);
    RealmObjectBase.set(this, 'createdAt', createdAt);
    RealmObjectBase.set(this, 'lastLoginAt', lastLoginAt);
  }

  AppUserRealm._();

  @override
  String get id => RealmObjectBase.get<String>(this, 'id') as String;
  @override
  set id(String value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get email => RealmObjectBase.get<String>(this, 'email') as String;
  @override
  set email(String value) => RealmObjectBase.set(this, 'email', value);

  @override
  String? get displayName =>
      RealmObjectBase.get<String>(this, 'displayName') as String?;
  @override
  set displayName(String? value) =>
      RealmObjectBase.set(this, 'displayName', value);

  @override
  String? get profilePictureUrl =>
      RealmObjectBase.get<String>(this, 'profilePictureUrl') as String?;
  @override
  set profilePictureUrl(String? value) =>
      RealmObjectBase.set(this, 'profilePictureUrl', value);

  @override
  DateTime get createdAt =>
      RealmObjectBase.get<DateTime>(this, 'createdAt') as DateTime;
  @override
  set createdAt(DateTime value) =>
      RealmObjectBase.set(this, 'createdAt', value);

  @override
  DateTime? get lastLoginAt =>
      RealmObjectBase.get<DateTime>(this, 'lastLoginAt') as DateTime?;
  @override
  set lastLoginAt(DateTime? value) =>
      RealmObjectBase.set(this, 'lastLoginAt', value);

  @override
  Stream<RealmObjectChanges<AppUserRealm>> get changes =>
      RealmObjectBase.getChanges<AppUserRealm>(this);

  @override
  Stream<RealmObjectChanges<AppUserRealm>> changesFor([
    List<String>? keyPaths,
  ]) => RealmObjectBase.getChangesFor<AppUserRealm>(this, keyPaths);

  @override
  AppUserRealm freeze() => RealmObjectBase.freezeObject<AppUserRealm>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'email': email.toEJson(),
      'displayName': displayName.toEJson(),
      'profilePictureUrl': profilePictureUrl.toEJson(),
      'createdAt': createdAt.toEJson(),
      'lastLoginAt': lastLoginAt.toEJson(),
    };
  }

  static EJsonValue _toEJson(AppUserRealm value) => value.toEJson();
  static AppUserRealm _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'email': EJsonValue email,
        'createdAt': EJsonValue createdAt,
      } =>
        AppUserRealm(
          fromEJson(id),
          fromEJson(email),
          fromEJson(createdAt),
          displayName: fromEJson(ejson['displayName']),
          profilePictureUrl: fromEJson(ejson['profilePictureUrl']),
          lastLoginAt: fromEJson(ejson['lastLoginAt']),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(AppUserRealm._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(
      ObjectType.realmObject,
      AppUserRealm,
      'AppUserRealm',
      [
        SchemaProperty('id', RealmPropertyType.string, primaryKey: true),
        SchemaProperty('email', RealmPropertyType.string),
        SchemaProperty('displayName', RealmPropertyType.string, optional: true),
        SchemaProperty(
          'profilePictureUrl',
          RealmPropertyType.string,
          optional: true,
        ),
        SchemaProperty('createdAt', RealmPropertyType.timestamp),
        SchemaProperty(
          'lastLoginAt',
          RealmPropertyType.timestamp,
          optional: true,
        ),
      ],
    );
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
