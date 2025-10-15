// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthResult _$AuthResultFromJson(Map<String, dynamic> json) => _AuthResult(
  accessToken: json['accessToken'] as String,
  refreshToken: json['refreshToken'] as String?,
  idToken: json['idToken'] as String?,
  scopes: (json['scopes'] as List<dynamic>).map((e) => e as String).toList(),
  accessTokenExpirationDateTime: json['accessTokenExpirationDateTime'] == null
      ? null
      : DateTime.parse(json['accessTokenExpirationDateTime'] as String),
  additionalParameters: json['additionalParameters'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$AuthResultToJson(_AuthResult instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'idToken': instance.idToken,
      'scopes': instance.scopes,
      'accessTokenExpirationDateTime': instance.accessTokenExpirationDateTime
          ?.toIso8601String(),
      'additionalParameters': instance.additionalParameters,
    };
