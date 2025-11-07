import 'package:either_dart/either.dart';
import 'package:ex_bot/core/errors/failures.dart';
import 'package:ex_bot/core/use_case.dart';
import 'package:ex_bot/data/models/user_preferences.dart';
import 'package:ex_bot/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

abstract class GetPreferencesUsecase extends UseCase<UserPreferences, String> {}

@Injectable(as: GetPreferencesUsecase)
class GetPreferencesUsecaseImpl implements GetPreferencesUsecase {
  final UserRepository _repository;
  GetPreferencesUsecaseImpl(this._repository);

  @override
  Future<Either<Failure, UserPreferences>> executeAsync({required String params}) async {
    try {
      var preferences = await _repository.getPreferences(params);
      return (preferences != null)
          ? Right(preferences)
          : Left(Failure.cacheFailure(message: 'No preferences found for user ID: $params'));
    } catch (e) {
      return Left(Failure.unknownFailure(message: 'Error retrieving user preferences: ${e.toString()}'));
    }
  }
}
