// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthResultImpl _$$AuthResultImplFromJson(Map<String, dynamic> json) =>
    _$AuthResultImpl(
      accessToken: json['accessToken'] as String,
      account: Account.fromJson(json['account'] as Map<String, dynamic>),
      scopes:
          (json['scopes'] as List<dynamic>).map((e) => e as String).toList(),
      expiresOn: json['expiresOn'] == null
          ? null
          : DateTime.parse(json['expiresOn'] as String),
    );

Map<String, dynamic> _$$AuthResultImplToJson(_$AuthResultImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'account': instance.account,
      'scopes': instance.scopes,
      'expiresOn': instance.expiresOn?.toIso8601String(),
    };

_$UserProfileImpl _$$UserProfileImplFromJson(Map<String, dynamic> json) =>
    _$UserProfileImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      displayName: json['displayName'] as String?,
      givenName: json['givenName'] as String?,
      surname: json['surname'] as String?,
      preferredUsername: json['preferredUsername'] as String?,
      claims: json['claims'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$UserProfileImplToJson(_$UserProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'displayName': instance.displayName,
      'givenName': instance.givenName,
      'surname': instance.surname,
      'preferredUsername': instance.preferredUsername,
      'claims': instance.claims,
    };
