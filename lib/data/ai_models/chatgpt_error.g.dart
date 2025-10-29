// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chatgpt_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatGptError _$ChatGptErrorFromJson(Map<String, dynamic> json) =>
    _ChatGptError(
      message: json['message'] as String,
      type: json['type'] as String,
      param: json['param'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$ChatGptErrorToJson(_ChatGptError instance) =>
    <String, dynamic>{
      'message': instance.message,
      'type': instance.type,
      'param': instance.param,
      'code': instance.code,
    };
