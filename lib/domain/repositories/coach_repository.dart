import 'package:either_dart/either.dart';
import 'package:ex_bot/core/errors/failures.dart';
import 'package:ex_bot/data/coach_models/conversation.dart';
import '../../data/coach_models/message.dart';

abstract class CoachRepository {
  Future<void> initialize(String promptText, String unspecifiedText, String noneText);

  Future<Either<Failure, Message>> sendMessage({
    required String message,
    required String userId,
    required String displayName,
    String? conversationId,
    Map<String, dynamic>? context,
  });

  Future<Either<Failure, Conversation>> getConversation({required String conversationId});

  Future<Either<Failure, Conversation>> createConversation({required String userId, String? initialContext});

  Future<Either<Failure, Conversation>> updateConversation({required String conversationId, required Message message});

  Future<Either<Failure, String>> generateCoachingPrompt({
    required Map<String, dynamic> userProfile,
    required String interactionType,
  });
}
