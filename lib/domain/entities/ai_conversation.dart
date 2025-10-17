    import 'package:freezed_annotation/freezed_annotation.dart';
    import 'package:flutter/foundation.dart';
    import 'ai_message.dart';

    part 'ai_conversation.freezed.dart';
    part 'ai_conversation.g.dart';

    /// Conversation context for the AI
    @freezed
    abstract class AiConversation with _$AiConversation {
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
