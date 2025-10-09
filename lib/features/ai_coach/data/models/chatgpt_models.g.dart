// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chatgpt_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatGptRequestImpl _$$ChatGptRequestImplFromJson(Map<String, dynamic> json) =>
    _$ChatGptRequestImpl(
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

Map<String, dynamic> _$$ChatGptRequestImplToJson(
        _$ChatGptRequestImpl instance) =>
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

_$ChatGptMessageImpl _$$ChatGptMessageImplFromJson(Map<String, dynamic> json) =>
    _$ChatGptMessageImpl(
      role: json['role'] as String,
      content: json['content'] as String,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$ChatGptMessageImplToJson(
        _$ChatGptMessageImpl instance) =>
    <String, dynamic>{
      'role': instance.role,
      'content': instance.content,
      'name': instance.name,
    };

_$ChatGptResponseImpl _$$ChatGptResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatGptResponseImpl(
      id: json['id'] as String,
      object: json['object'] as String,
      created: (json['created'] as num).toInt(),
      model: json['model'] as String,
      usage: ChatGptUsage.fromJson(json['usage'] as Map<String, dynamic>),
      choices: (json['choices'] as List<dynamic>)
          .map((e) => ChatGptChoice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChatGptResponseImplToJson(
        _$ChatGptResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'created': instance.created,
      'model': instance.model,
      'usage': instance.usage,
      'choices': instance.choices,
    };

_$ChatGptUsageImpl _$$ChatGptUsageImplFromJson(Map<String, dynamic> json) =>
    _$ChatGptUsageImpl(
      promptTokens: (json['promptTokens'] as num).toInt(),
      completionTokens: (json['completionTokens'] as num).toInt(),
      totalTokens: (json['totalTokens'] as num).toInt(),
    );

Map<String, dynamic> _$$ChatGptUsageImplToJson(_$ChatGptUsageImpl instance) =>
    <String, dynamic>{
      'promptTokens': instance.promptTokens,
      'completionTokens': instance.completionTokens,
      'totalTokens': instance.totalTokens,
    };

_$ChatGptChoiceImpl _$$ChatGptChoiceImplFromJson(Map<String, dynamic> json) =>
    _$ChatGptChoiceImpl(
      index: (json['index'] as num).toInt(),
      message: ChatGptMessage.fromJson(json['message'] as Map<String, dynamic>),
      finishReason: json['finishReason'] as String?,
    );

Map<String, dynamic> _$$ChatGptChoiceImplToJson(_$ChatGptChoiceImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'message': instance.message,
      'finishReason': instance.finishReason,
    };

_$ChatGptErrorImpl _$$ChatGptErrorImplFromJson(Map<String, dynamic> json) =>
    _$ChatGptErrorImpl(
      message: json['message'] as String,
      type: json['type'] as String,
      param: json['param'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$$ChatGptErrorImplToJson(_$ChatGptErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'type': instance.type,
      'param': instance.param,
      'code': instance.code,
    };
