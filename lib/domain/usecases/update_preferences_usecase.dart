import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

import 'package:ex_bot/core/errors/failures.dart';
import 'package:ex_bot/core/use_case.dart';
import 'package:ex_bot/data/models/user_preferences.dart';
import 'package:ex_bot/domain/repositories/user_repository.dart';

abstract class UpdatePreferencesUseCase extends UseCase<void, UserPreferences> {}

@Injectable(as: UpdatePreferencesUseCase)
class UpdatePreferencesUseCaseImpl implements UpdatePreferencesUseCase {
  final UserRepository _repository;

  UpdatePreferencesUseCaseImpl(this._repository);

  @override
  Future<Either<Failure, void>> executeAsync({required UserPreferences params}) async {
    try {
      //  get saved preferences
      await _repository.updatePreferences(params);
      return const Right(null);
    } catch (e) {
      return Left(Failure.unknownFailure(message: e.toString()));
    }
  }
}
