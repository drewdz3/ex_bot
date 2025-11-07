import 'package:either_dart/either.dart';
import 'package:ex_bot/core/errors/failures.dart';

abstract class UseCase<TResult, TParam> {
  Future<Either<Failure, TResult>> executeAsync({required TParam params});
}

abstract class UseCaseFb<TResult, TFeedback, TParam> {
  Stream<TFeedback> get authStatusStream;

  Future<Either<Failure, TResult>> executeAsync({required TParam params});
}

/// To be able to pass a generic type representing `void`
class NoParams {}
