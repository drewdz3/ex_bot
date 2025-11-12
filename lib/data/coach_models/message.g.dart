// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Message _$MessageFromJson(Map<String, dynamic> json) => _Message(
  id: json['id'] as String,
  role: MessageRole.fromJson(json['role'] as Map<String, dynamic>),
  content: json['content'] as String,
  timestamp: DateTime.parse(json['timestamp'] as String),
  isTyping: json['isTyping'] as bool? ?? false,
  metadata: json['metadata'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$MessageToJson(_Message instance) => <String, dynamic>{
  'id': instance.id,
  'role': instance.role,
  'content': instance.content,
  'timestamp': instance.timestamp.toIso8601String(),
  'isTyping': instance.isTyping,
  'metadata': instance.metadata,
};
