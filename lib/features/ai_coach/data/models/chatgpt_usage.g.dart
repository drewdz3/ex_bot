// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chatgpt_usage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatGptUsage _$ChatGptUsageFromJson(Map<String, dynamic> json) =>
    _ChatGptUsage(
      promptTokens: (json['promptTokens'] as num).toInt(),
      completionTokens: (json['completionTokens'] as num).toInt(),
      totalTokens: (json['totalTokens'] as num).toInt(),
    );

Map<String, dynamic> _$ChatGptUsageToJson(_ChatGptUsage instance) =>
    <String, dynamic>{
      'promptTokens': instance.promptTokens,
      'completionTokens': instance.completionTokens,
      'totalTokens': instance.totalTokens,
    };
