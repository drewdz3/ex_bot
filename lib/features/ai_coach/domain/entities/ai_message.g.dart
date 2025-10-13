// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AiMessage _$AiMessageFromJson(Map<String, dynamic> json) => _AiMessage(
  id: json['id'] as String,
  role: AiMessageRole.fromJson(json['role'] as Map<String, dynamic>),
  content: json['content'] as String,
  timestamp: DateTime.parse(json['timestamp'] as String),
  isTyping: json['isTyping'] as bool? ?? false,
  metadata: json['metadata'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$AiMessageToJson(_AiMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'role': instance.role,
      'content': instance.content,
      'timestamp': instance.timestamp.toIso8601String(),
      'isTyping': instance.isTyping,
      'metadata': instance.metadata,
    };
