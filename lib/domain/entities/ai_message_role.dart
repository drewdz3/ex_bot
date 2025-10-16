import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'ai_message_role.freezed.dart';
part 'ai_message_role.g.dart';

/// Role of the message sender
@freezed
abstract class AiMessageRole with _$AiMessageRole {
  const factory AiMessageRole.user() = UserRole;
  const factory AiMessageRole.assistant() = AssistantRole;
  const factory AiMessageRole.system() = SystemRole;

  factory AiMessageRole.fromJson(Map<String, dynamic> json) =>
      _$AiMessageRoleFromJson(json);
}