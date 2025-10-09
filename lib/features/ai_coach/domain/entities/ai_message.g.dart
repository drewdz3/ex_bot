// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AiMessageImpl _$$AiMessageImplFromJson(Map<String, dynamic> json) =>
    _$AiMessageImpl(
      id: json['id'] as String,
      role: AiMessageRole.fromJson(json['role'] as Map<String, dynamic>),
      content: json['content'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      isTyping: json['isTyping'] as bool? ?? false,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$AiMessageImplToJson(_$AiMessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'role': instance.role,
      'content': instance.content,
      'timestamp': instance.timestamp.toIso8601String(),
      'isTyping': instance.isTyping,
      'metadata': instance.metadata,
    };

_$UserRoleImpl _$$UserRoleImplFromJson(Map<String, dynamic> json) =>
    _$UserRoleImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserRoleImplToJson(_$UserRoleImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$AssistantRoleImpl _$$AssistantRoleImplFromJson(Map<String, dynamic> json) =>
    _$AssistantRoleImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AssistantRoleImplToJson(_$AssistantRoleImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$SystemRoleImpl _$$SystemRoleImplFromJson(Map<String, dynamic> json) =>
    _$SystemRoleImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SystemRoleImplToJson(_$SystemRoleImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$AiConversationImpl _$$AiConversationImplFromJson(Map<String, dynamic> json) =>
    _$AiConversationImpl(
      id: json['id'] as String,
      messages: (json['messages'] as List<dynamic>)
          .map((e) => AiMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      context: json['context'] as String? ?? 'general',
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$AiConversationImplToJson(
        _$AiConversationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'messages': instance.messages,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'context': instance.context,
      'metadata': instance.metadata,
    };
