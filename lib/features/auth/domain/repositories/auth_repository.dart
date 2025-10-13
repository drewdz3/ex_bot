import 'package:either_dart/either.dart';
import 'package:ex_bot/features/auth/domain/entities/auth_status.dart';
import '../../../../core/errors/failures.dart';
import '../entities/app_user.dart';

/// Abstract authentication repository
abstract class AuthRepository {
  /// Sign in with Microsoft Account
  Future<Either<Failure, AppUser>> signInWithMicrosoft();
  
  /// Sign in with Google Account  
  Future<Either<Failure, AppUser>> signInWithGoogle();
  
  /// Sign out current user
  Future<Either<Failure, void>> signOut();
  
  /// Get current user
  Future<Either<Failure, AppUser?>> getCurrentUser();
  
  /// Check if user is authenticated
  Future<bool> isAuthenticated();
  
  /// Stream of authentication status changes
  Stream<AuthStatus> get authStatusStream;
}