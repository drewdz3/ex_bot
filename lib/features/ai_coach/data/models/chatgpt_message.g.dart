// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chatgpt_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatGptMessage _$ChatGptMessageFromJson(Map<String, dynamic> json) =>
    _ChatGptMessage(
      role: json['role'] as String,
      content: json['content'] as String,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ChatGptMessageToJson(_ChatGptMessage instance) =>
    <String, dynamic>{
      'role': instance.role,
      'content': instance.content,
      'name': instance.name,
    };
