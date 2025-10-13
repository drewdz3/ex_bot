// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthUserProfile _$AuthUserProfileFromJson(Map<String, dynamic> json) =>
    _AuthUserProfile(
      id: json['id'] as String,
      email: json['email'] as String,
      displayName: json['displayName'] as String?,
      givenName: json['givenName'] as String?,
      surname: json['surname'] as String?,
      preferredUsername: json['preferredUsername'] as String?,
      claims: json['claims'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$AuthUserProfileToJson(_AuthUserProfile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'displayName': instance.displayName,
      'givenName': instance.givenName,
      'surname': instance.surname,
      'preferredUsername': instance.preferredUsername,
      'claims': instance.claims,
    };
