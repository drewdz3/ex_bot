import 'dart:async';

import 'package:either_dart/either.dart';
import 'package:ex_bot/data/models/auth_result.dart';
import 'package:injectable/injectable.dart';
import 'package:jwt_decode/jwt_decode.dart';

import 'package:ex_bot/core/constants/app_constants.dart';
import 'package:ex_bot/core/errors/failures.dart';
import 'package:ex_bot/core/repositories/auth_repository.dart';
import 'package:ex_bot/core/utils/debug_logger.dart';
import 'package:ex_bot/data/datasources/appauth_datasource.dart';
import 'package:ex_bot/data/datasources/user_storage_datasource.dart';
import 'package:ex_bot/domain/entities/app_user.dart';
import 'package:ex_bot/domain/entities/auth_status.dart';

/// Implementation of AuthRepository using AppAuth and secure storage
@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AppAuthDataSource _appAuthDataSource;
  final UserStorageDataSource userStorage;

  // Stream controller for auth status changes
  final StreamController<AuthStatus> _authStatusController =
      StreamController<AuthStatus>.broadcast();

  AuthRepositoryImpl(this._appAuthDataSource, this.userStorage);

  @override
  bool get isAuthenticated => false;

  @override
  Stream<AuthStatus> get authStatusStream => _authStatusController.stream;

  @override
  Future<Either<Failure, AppUser>> signIn() async {
    try {
      DebugLogger.info('Starting sign-in...');

      // Emit loading state
      _authStatusController.add(const AuthStatus.loading());

      // Attempt interactive sign-in
      final authResult = await _appAuthDataSource.signInInteractive();
      if (authResult == null) {
        const failure = Failure.authFailure(
          message: 'Sign-in was cancelled or failed',
        );
        _authStatusController.add(const AuthStatus.unauthenticated());
        return Left(failure);
      }

      // Convert AppAuth result to AppUser
      final appUser = await _mapAuthResultToAppUser(authResult);

      // Save authentication result and user data
      await userStorage.saveAuthResult(authResult, appUser);

      // Update last login
      await userStorage.updateLastLogin();

      // Emit authenticated state
      _authStatusController.add(AuthStatus.authenticated(appUser));

      DebugLogger.success('Sign-in completed successfully');
      return Right(appUser);
    } catch (e) {
      DebugLogger.error('Sign-in failed: $e');
      final failure = Failure.authFailure(
        message: 'Sign-in failed: ${e.toString()}',
      );
      _authStatusController.add(AuthStatus.error(failure.message));
      return Left(failure);
    }
  }

  @override
  Future<Either<Failure, void>> signOut() async {
    try {
      DebugLogger.info('Starting sign-out process...');

      // Emit loading state
      _authStatusController.add(const AuthStatus.loading());

      // Sign out from AppAuth
      await _appAuthDataSource.signOut();

      // Clear stored user data and tokens
      await userStorage.clearUserData();

      // Emit unauthenticated state
      _authStatusController.add(const AuthStatus.unauthenticated());

      DebugLogger.success('Sign-out completed successfully');
      return const Right(null);
    } catch (e) {
      DebugLogger.error('Sign-out failed: $e');
      final failure = Failure.authFailure(
        message: 'Sign-out failed: ${e.toString()}',
      );
      _authStatusController.add(AuthStatus.error(failure.message));
      return Left(failure);
    }
  }

  @override
  Future<Either<Failure, AppUser?>> getCurrentUser() async {
    try {
      DebugLogger.info('Getting current user...');

      // First check if we have valid tokens
      var refreshToken = await userStorage.getRefreshTokenIfValid();
      if (refreshToken == null) {
        DebugLogger.info('No valid tokens found');
        return const Right(null);
      }

      // Get user from storage
      final storedUser = await userStorage.getUser();
      if (storedUser == null) {
        DebugLogger.info('No user data found in storage');
        return const Right(null);
      }

      DebugLogger.success('Current user retrieved from storage');
      return Right(storedUser);
    } catch (e) {
      DebugLogger.error('Failed to get current user: $e');
      final failure = Failure.authFailure(
        message: 'Failed to get current user: ${e.toString()}',
      );
      return Left(failure);
    }
  }

  @override
  Future<void> initialize() async {
    try {
      DebugLogger.info('Initializing authentication state...');

      // Emit loading state
      _authStatusController.add(const AuthStatus.loading());

      // Try silent sign-in to refresh tokens if needed
      final refreshToken = await userStorage.getRefreshTokenIfValid();
      if (refreshToken == null) {
        _authStatusController.add(AuthStatus.unauthenticated());
      }
      else {
        final silentResult = await _appAuthDataSource.signInSilent(
          refreshToken,
        );
        if (silentResult != null) {
          // Silent sign-in successful, get user data
          final user = await userStorage.getUser();
          if (user != null) {
            // Update tokens and last login
            await userStorage.saveAuthResult(silentResult, user);
            await userStorage.updateLastLogin();

            _authStatusController.add(AuthStatus.authenticated(user));
            DebugLogger.success('User authenticated via silent sign-in');
            return;
          }
        }
      }

      // // If silent sign-in failed, get user from storage if still valid
      // final currentUserResult = await getCurrentUser();
      // currentUserResult.fold(
      //   (failure) {
      //     DebugLogger.warning('Failed to get current user: ${failure.message}');
      //     _authStatusController.add(const AuthStatus.unauthenticated());
      //   },
      //   (user) {
      //     if (user != null) {
      //       _authStatusController.add(AuthStatus.authenticated(user));
      //       DebugLogger.success('User authenticated from stored data');
      //     } else {
      //       _authStatusController.add(const AuthStatus.unauthenticated());
      //       DebugLogger.info('No authenticated user found');
      //     }
      //   },
      // );
    } catch (e) {
      DebugLogger.error('Failed to initialize auth state: $e');
      _authStatusController.add(
        AuthStatus.error('Initialization failed: ${e.toString()}'),
      );
    }
  }

  /// Attempt to refresh tokens silently
  Future<Either<Failure, AppUser>> refreshTokens() async {
    try {
      DebugLogger.info('Attempting to refresh tokens...');

      // Try silent sign-in with refresh token
      final refreshToken = await userStorage.getRefreshTokenIfValid();
      if (refreshToken == null) {
        const failure = Failure.authFailure(
          message: 'No refresh token available',
        );
        return Left(failure);
      }

      final authResult = await _appAuthDataSource.signInSilent(refreshToken);
      if (authResult == null) {
        const failure = Failure.authFailure(message: 'Token refresh failed');
        return Left(failure);
      }

      // Get current user data
      final user = await userStorage.getUser();
      if (user == null) {
        const failure = Failure.authFailure(message: 'No user data found');
        return Left(failure);
      }

      // Save refreshed tokens
      await userStorage.saveAuthResult(authResult, user);

      DebugLogger.success('Tokens refreshed successfully');
      return Right(user);
    } catch (e) {
      DebugLogger.error('Token refresh failed: $e');
      final failure = Failure.authFailure(
        message: 'Token refresh failed: ${e.toString()}',
      );
      return Left(failure);
    }
  }

  /// Convert AppAuth result to AppUser
  Future<AppUser> _mapAuthResultToAppUser(AuthResult authResult) async {
    try {
      // check that we have a valid id token and decode
      if ((authResult.idToken == null) || authResult.idToken!.isEmpty) {
        throw Exception('ID token is missing in auth result');
      }

      Map<String, dynamic> claims = Jwt.parseJwt(authResult.idToken!);

      String email = AppConstants.emptyString;
      if (claims['emails'] != null) {
        var list = claims['emails'] as List<String>;
        email = list.isNotEmpty ? list.first : AppConstants.emptyString;
      }

      return AppUser(
        id: claims['oid'] ?? claims['sub'] ?? AppConstants.emptyString,
        email: email,
        displayName: claims['given_name'] ?? '[unknown]',
        createdAt: DateTime.now(),
        lastLoginAt: DateTime.fromMicrosecondsSinceEpoch(int.parse(claims['auth_time'] ?? '0') * 1000),
      );
    } catch (e) {
      DebugLogger.error('Failed to map auth result to app user: $e');
      return AppUser(
        id: AppConstants.emptyString,
        email: AppConstants.emptyString,
        displayName: '[unknown]',
        createdAt: DateTime.now(),
      );
    }
  }

  /// Dispose resources
  void dispose() {
    _authStatusController.close();
  }
}
