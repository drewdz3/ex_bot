import 'package:either_dart/either.dart';
import 'package:ex_bot/core/errors/failures.dart';

/// Base pattern for all use case objects
abstract class UseCase<T, P> {
  /// Invoke the use case
  Future<Either<Failure, T>> executeAsync({required P params});
}

/// To be able to pass a generic type representing `void`
class NoParams {}
