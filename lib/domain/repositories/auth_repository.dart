import 'package:either_dart/either.dart';
import 'package:ex_bot/core/errors/failures.dart';
import 'package:ex_bot/data/models/auth_result.dart';

/// Abstract authentication repository
abstract class AuthRepository {
  bool get isAuthenticated;

  Future<Either<Failure, AuthResult>> refreshTokens();

  Future<Either<Failure, AuthResult>> signIn();

  Future<Either<Failure, void>> signOut();
}
