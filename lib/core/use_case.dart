import 'package:either_dart/either.dart';
import 'package:ex_bot/core/errors/failures.dart';

/// Base pattern for all use case objects
abstract class UseCase<TResult, TParam> {
  /// Invoke the use case
  Future<Either<Failure, TResult>> executeAsync({required TParam params});
}

/// To be able to pass a generic type representing `void`
class NoParams {}
