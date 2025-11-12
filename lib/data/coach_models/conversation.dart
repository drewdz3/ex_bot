import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'message.dart';

part 'conversation.freezed.dart';
part 'conversation.g.dart';

/// Conversation context for the AI
@freezed
abstract class Conversation with _$Conversation {
  const factory Conversation({
    required String id,
    required List<Message> messages,
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default('general') String context,
    Map<String, dynamic>? metadata,
    @Default('') String instructions, // New field for instructions
  }) = _Conversation;

  factory Conversation.fromJson(Map<String, dynamic> json) => _$ConversationFromJson(json);
}
