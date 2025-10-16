import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'ai_message_role.dart';

part 'ai_message.freezed.dart';
part 'ai_message.g.dart';

/// Represents a message in the AI conversation
@freezed
abstract class AiMessage with _$AiMessage {
  const factory AiMessage({
    required String id,
    required AiMessageRole role,
    required String content,
    required DateTime timestamp,
    @Default(false) bool isTyping,
    Map<String, dynamic>? metadata,
  }) = _AiMessage;

  factory AiMessage.fromJson(Map<String, dynamic> json) =>
      _$AiMessageFromJson(json);
}