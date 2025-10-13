// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthResult _$AuthResultFromJson(Map<String, dynamic> json) => _AuthResult(
  accessToken: json['accessToken'] as String,
  account: Account.fromJson(json['account'] as Map<String, dynamic>),
  scopes: (json['scopes'] as List<dynamic>).map((e) => e as String).toList(),
  expiresOn: json['expiresOn'] == null
      ? null
      : DateTime.parse(json['expiresOn'] as String),
);

Map<String, dynamic> _$AuthResultToJson(_AuthResult instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'account': instance.account,
      'scopes': instance.scopes,
      'expiresOn': instance.expiresOn?.toIso8601String(),
    };
