import 'package:either_dart/either.dart';
import 'package:ex_bot/core/errors/failures.dart';
import 'package:ex_bot/core/use_case.dart';
import 'package:ex_bot/data/models/workout_type.dart';
import 'package:ex_bot/domain/repositories/lookup_repository.dart';
import 'package:injectable/injectable.dart';

abstract class GetWorkoutTypesUsecase extends UseCase<List<WorkoutType>, NoParams> {}

@Injectable(as: GetWorkoutTypesUsecase)
class GetWorkoutTypesUsecaseImpl implements GetWorkoutTypesUsecase {
  final LookupRepository _repository;

  GetWorkoutTypesUsecaseImpl(this._repository);

  @override
  Future<Either<Failure, List<WorkoutType>>> executeAsync({required NoParams params}) async {
    try {
      var result = await _repository.getWorkoutTypes();
      return Right(result);
    } catch (e) {
      return Left(Failure.unknownFailure(message: e.toString()));
    }
  }
}
