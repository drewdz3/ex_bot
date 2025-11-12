import 'package:either_dart/either.dart';
import 'package:ex_bot/core/constants/app_constants.dart';
import 'package:ex_bot/core/errors/failures.dart';
import 'package:ex_bot/data/coach_models/message.dart';
import 'package:ex_bot/domain/repositories/coach_repository.dart';
import 'package:ex_bot/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

/// Use case for sending messages to the AI coach
@injectable
class SendMessageToCoach {
  final CoachRepository _repository;
  final UserRepository _userRepository;

  SendMessageToCoach(this._repository, this._userRepository);

  Future<Either<Failure, Message>> call({
    required String message,
    String? conversationId,
    Map<String, dynamic>? userContext,
  }) async {
    try {
      // Validate input
      if (message.trim().isEmpty) {
        return Left(
          Failure.validationFailure(message: 'Message cannot be empty', fieldErrors: {'message': 'Required field'}),
        );
      }

      // get user info. These values should be initialized by this time
      var user = await _userRepository.getUser(null);
      if (user == null) {
        return Left(Failure.authFailure(message: AppConstants.unknownError));
      }
      // Send message to repository
      return await _repository.sendMessage(
        message: message.trim(),
        userId: user.id,
        displayName: user.displayName ?? 'User',
        conversationId: conversationId,
        context: userContext,
      );
    } catch (e) {
      return Left(Failure.unknownFailure(message: AppConstants.unknownError));
    }
  }
}
