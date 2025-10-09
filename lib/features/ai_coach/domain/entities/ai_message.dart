import 'package:freezed_annotation/freezed_annotation.dart';

part 'ai_message.freezed.dart';
part 'ai_message.g.dart';

/// Represents a message in the AI conversation
@freezed
class AiMessage with _$AiMessage {
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

/// Role of the message sender
@freezed
class AiMessageRole with _$AiMessageRole {
  const factory AiMessageRole.user() = UserRole;
  const factory AiMessageRole.assistant() = AssistantRole;
  const factory AiMessageRole.system() = SystemRole;

  factory AiMessageRole.fromJson(Map<String, dynamic> json) =>
      _$AiMessageRoleFromJson(json);
}

/// Conversation context for the AI
@freezed
class AiConversation with _$AiConversation {
  const factory AiConversation({
    required String id,
    required List<AiMessage> messages,
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default('general') String context,
    Map<String, dynamic>? metadata,
  }) = _AiConversation;

  factory AiConversation.fromJson(Map<String, dynamic> json) =>
      _$AiConversationFromJson(json);
}