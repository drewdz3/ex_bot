import 'package:either_dart/either.dart';
import 'package:ex_bot/core/errors/failures.dart';
import 'package:ex_bot/domain/entities/app_user.dart';
import 'package:ex_bot/domain/entities/auth_status.dart';

/// Abstract authentication repository
abstract class AuthRepository {
  bool get isAuthenticated;

  Stream<AuthStatus> get authStatusStream;

  Future<void> initialize();

  Future<Either<Failure, AppUser>> signIn();
  
  Future<Either<Failure, void>> signOut();
  
  Future<Either<Failure, AppUser?>> getCurrentUser();
}