// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chatgpt_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatGptResponse _$ChatGptResponseFromJson(Map<String, dynamic> json) =>
    _ChatGptResponse(
      id: json['id'] as String,
      object: json['object'] as String,
      created: (json['created'] as num?)?.toInt() ?? 0,
      model: json['model'] as String,
      usage: json['usage'] == null
          ? null
          : ChatGptUsage.fromJson(json['usage'] as Map<String, dynamic>),
      choices: (json['choices'] as List<dynamic>)
          .map((e) => ChatGptChoice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChatGptResponseToJson(_ChatGptResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'created': instance.created,
      'model': instance.model,
      'usage': instance.usage,
      'choices': instance.choices,
    };
