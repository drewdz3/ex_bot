import 'package:either_dart/either.dart';
import 'package:ex_bot/core/errors/failures.dart';
import 'package:ex_bot/data/models/app_user.dart';
import 'package:ex_bot/data/models/auth_status.dart';

/// Abstract authentication repository
abstract class AuthRepository {
  bool get isAuthenticated;

  Stream<AuthStatus> get authStatusStream;

  Future<Either<Failure, AppUser>> refreshTokens(bool withFeedback);

  Future<Either<Failure, AppUser>> signIn();

  Future<Either<Failure, void>> signOut();
}
