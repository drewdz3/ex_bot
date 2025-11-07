// import 'package:either_dart/either.dart';
// import 'package:ex_bot/core/errors/failures.dart';
// import 'package:ex_bot/core/use_case.dart';
// import 'package:ex_bot/data/models/user_preferences.dart';
// import 'package:ex_bot/domain/repositories/user_repository.dart';
// import 'package:injectable/injectable.dart';

// abstract class GetPreferencesUseCase extends UseCase<UserPreferences, String> {}

// @Injectable(as: GetPreferencesUseCase)
// class GetPreferencesUseCaseImpl implements GetPreferencesUseCase {
//   final UserRepository _repository;
//   GetPreferencesUseCaseImpl(this._repository);

//   @override
//   Future<Either<Failure, UserPreferences>> executeAsync({required String params}) async {
//     try {
//       return Right(await _repository.getPreferences(params));
//     } catch (e) {
//       return Left(Failure.unknownFailure(message: 'Error retrieving user preferences: ${e.toString()}'));
//     }
//   }
// }
