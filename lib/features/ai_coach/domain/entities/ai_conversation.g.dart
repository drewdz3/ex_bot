// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_conversation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AiConversation _$AiConversationFromJson(Map<String, dynamic> json) =>
    _AiConversation(
      id: json['id'] as String,
      messages: (json['messages'] as List<dynamic>)
          .map((e) => AiMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      context: json['context'] as String? ?? 'general',
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$AiConversationToJson(_AiConversation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'messages': instance.messages,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'context': instance.context,
      'metadata': instance.metadata,
    };
