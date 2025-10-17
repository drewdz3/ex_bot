    import 'package:either_dart/either.dart';
    import 'package:ex_bot/core/errors/failures.dart';
    import 'package:ex_bot/domain/entities/ai_conversation.dart';
    import '../../domain/entities/ai_message.dart';

    /// Repository interface for AI coaching interactions
    abstract class CoachRepository {
      /// Send a message to the AI coach and get a response
      Future<Either<Failure, AiMessage>> sendMessage({
        required String message,
        required String userId,
        String? conversationId,
        Map<String, dynamic>? context,
      });

      /// Get conversation history for a user
      Future<Either<Failure, AiConversation>> getConversation({
        required String conversationId,
      });

      /// Create a new conversation
      Future<Either<Failure, AiConversation>> createConversation({
        required String userId,
        String? initialContext,
      });

      /// Update conversation with new message
      Future<Either<Failure, AiConversation>> updateConversation({
        required String conversationId,
        required AiMessage message,
      });

      /// Generate personalized coaching prompt based on user profile
      Future<Either<Failure, String>> generateCoachingPrompt({
        required Map<String, dynamic> userProfile,
        required String interactionType,
      });
    }
