// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chatgpt_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatGptRequest _$ChatGptRequestFromJson(Map<String, dynamic> json) =>
    _ChatGptRequest(
      model: json['model'] as String,
      messages: (json['messages'] as List<dynamic>)
          .map((e) => ChatGptMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
      temperature: (json['temperature'] as num?)?.toDouble() ?? 1.0,
      maxTokens: (json['maxTokens'] as num?)?.toInt() ?? 2000,
      topP: (json['topP'] as num?)?.toDouble() ?? 1.0,
      frequencyPenalty: (json['frequencyPenalty'] as num?)?.toDouble() ?? 0.0,
      presencePenalty: (json['presencePenalty'] as num?)?.toDouble() ?? 0.0,
      stop: (json['stop'] as List<dynamic>?)?.map((e) => e as String).toList(),
      user: json['user'] as String?,
    );

Map<String, dynamic> _$ChatGptRequestToJson(_ChatGptRequest instance) =>
    <String, dynamic>{
      'model': instance.model,
      'messages': instance.messages,
      'temperature': instance.temperature,
      'maxTokens': instance.maxTokens,
      'topP': instance.topP,
      'frequencyPenalty': instance.frequencyPenalty,
      'presencePenalty': instance.presencePenalty,
      'stop': instance.stop,
      'user': instance.user,
    };
