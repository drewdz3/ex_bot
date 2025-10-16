import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import '../entities/ai_message.dart';
import '../../core/repositories/coach_repository.dart';
import '../../core/errors/failures.dart';

/// Use case for sending messages to the AI coach
@injectable
class SendMessageToCoach {
  final CoachRepository _repository;
  
  SendMessageToCoach(this._repository);
  
  /// Send a message to the AI coach and get a response
  Future<Either<Failure, AiMessage>> call({
    required String message,
    required String userId,
    String? conversationId,
    Map<String, dynamic>? userContext,
  }) async {
    // Validate input
    if (message.trim().isEmpty) {
      return Left(Failure.validationFailure(
        message: 'Message cannot be empty',
        fieldErrors: {'message': 'Required field'},
      ));
    }
    
    if (userId.trim().isEmpty) {
      return Left(Failure.validationFailure(
        message: 'User ID is required',
        fieldErrors: {'userId': 'Required field'},
      ));
    }
    
    // Send message to repository
    return await _repository.sendMessage(
      message: message.trim(),
      userId: userId,
      conversationId: conversationId,
      context: userContext,
    );
  }
}