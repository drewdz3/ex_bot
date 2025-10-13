// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chatgpt_choice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatGptChoice _$ChatGptChoiceFromJson(Map<String, dynamic> json) =>
    _ChatGptChoice(
      index: (json['index'] as num?)?.toInt() ?? 0,
      message: ChatGptMessage.fromJson(json['message'] as Map<String, dynamic>),
      finishReason: json['finishReason'] as String?,
    );

Map<String, dynamic> _$ChatGptChoiceToJson(_ChatGptChoice instance) =>
    <String, dynamic>{
      'index': instance.index,
      'message': instance.message,
      'finishReason': instance.finishReason,
    };
