import 'dart:async';

import 'package:either_dart/either.dart';
import 'package:ex_bot/data/datasources/auth_storage_datasource.dart';
import 'package:ex_bot/data/models/app_user.dart';
import 'package:ex_bot/data/models/auth_result.dart';
import 'package:ex_bot/data/models/auth_status.dart';
import 'package:injectable/injectable.dart';
import 'package:jwt_decode/jwt_decode.dart';

import 'package:ex_bot/core/constants/app_constants.dart';
import 'package:ex_bot/core/errors/failures.dart';
import 'package:ex_bot/domain/repositories/auth_repository.dart';
import 'package:ex_bot/core/utils/debug_logger.dart';
import 'package:ex_bot/data/datasources/appauth_datasource.dart';
import 'package:ex_bot/data/datasources/user_storage_datasource.dart';

// TODO: This needs to be split with auth logic in the AuthDatasource, and business logic into a Use Case.

/// Implementation of AuthRepository using AppAuth and secure storage
@Singleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AppAuthDataSource _appAuthDataSource;
  final UserStorageDataSource _userStorage;
  final AuthStorageDatasource _authStorage;

  bool _authenticated = false;

  // Stream controller for auth status changes
  final StreamController<AuthStatus> _authStatusController = StreamController<AuthStatus>.broadcast();

  AuthRepositoryImpl(this._appAuthDataSource, this._userStorage, this._authStorage);

  @override
  bool get isAuthenticated => _authenticated;

  @override
  Stream<AuthStatus> get authStatusStream => _authStatusController.stream;

  @override
  Future<Either<Failure, AppUser>> signIn() async {
    try {
      _authenticated = false;
      DebugLogger.info('Starting sign-in...');

      // Emit loading state
      _authStatusController.add(const AuthStatus.loading());

      // Attempt interactive sign-in
      final authResult = await _appAuthDataSource.signInInteractive();
      if (authResult == null) {
        const failure = Failure.authFailure(message: 'Sign-in was cancelled or failed');
        _authStatusController.add(const AuthStatus.unauthenticated());
        return Left(failure);
      }
      _authenticated = true;

      // Convert AppAuth result to AppUser
      final appUser = await _mapAuthResultToAppUser(authResult);

      // save refresh token
      // TODO: remove hardcoded values from token exiry calc
      await _authStorage.saveRefreshToken(
        expiresOn: authResult.accessTokenExpirationDateTime ?? DateTime.now().add(const Duration(hours: 1)),
        refreshToken: authResult.refreshToken ?? AppConstants.emptyString,
      );

      // Update last login
      await _userStorage.saveUser(appUser);
      await _userStorage.updateLastLogin();

      // Emit authenticated state
      _authStatusController.add(AuthStatus.authenticated(appUser));

      DebugLogger.success('Sign-in completed successfully');
      return Right(appUser);
    } catch (e) {
      _authenticated = false;
      DebugLogger.error('Sign-in failed: $e');
      final failure = Failure.authFailure(message: 'Sign-in failed: ${e.toString()}');
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
      await _appAuthDataSource.signOut(null);
      _authenticated = false;

      // Clear stored user data and tokens
      await _authStorage.clearRefreshToken();

      // Emit unauthenticated state
      _authStatusController.add(const AuthStatus.unauthenticated());

      DebugLogger.success('Sign-out completed successfully');
      return const Right(null);
    } catch (e) {
      DebugLogger.error('Sign-out failed: $e');
      final failure = Failure.authFailure(message: 'Sign-out failed: ${e.toString()}');
      _authStatusController.add(AuthStatus.error(failure.message));
      return Left(failure);
    }
  }

  /// Attempt to refresh tokens silently
  @override
  Future<Either<Failure, AppUser>> refreshTokens(bool withFeedback) async {
    try {
      DebugLogger.info('Attempting to refresh tokens...');
      if (withFeedback) {
        _authStatusController.add(const AuthStatus.loading());
      }

      // Try silent sign-in with refresh token
      final refreshToken = await _authStorage.getRefreshTokenIfValid();
      if (refreshToken == null) {
        _authenticated = false;
        if (withFeedback) {
          _authStatusController.add(const AuthStatus.unauthenticated());
        }
        const failure = Failure.authFailure(message: 'No refresh token available');
        return Left(failure);
      }

      final authResult = await _appAuthDataSource.signInSilent(refreshToken);
      if (authResult == null) {
        _authenticated = false;
        if (withFeedback) {
          _authStatusController.add(AuthStatus.unauthenticated());
        }
        const failure = Failure.authFailure(message: 'Token refresh failed');
        return Left(failure);
      }
      _authenticated = true;

      // Get current user data
      final user = await _userStorage.getUser();
      if (user == null) {
        _authenticated = false;
        _authStorage.clearRefreshToken();
        if (withFeedback) {
          _authStatusController.add(AuthStatus.unauthenticated());
        }
        const failure = Failure.authFailure(message: 'No user data found');
        return Left(failure);
      }

      // Save refreshed tokens
      await _userStorage.saveUser(user);
      // save refresh token
      // TODO: remove hardcoded values from token exiry calc
      await _authStorage.saveRefreshToken(
        expiresOn: authResult.accessTokenExpirationDateTime ?? DateTime.now().add(const Duration(hours: 1)),
        refreshToken: authResult.refreshToken ?? AppConstants.emptyString,
      );

      if (withFeedback) {
        _authStatusController.add(AuthStatus.authenticated(user));
      }
      DebugLogger.success('Tokens refreshed successfully');
      return Right(user);
    } catch (e) {
      DebugLogger.error('Token refresh failed: $e');
      if (withFeedback) {
        _authStatusController.add(AuthStatus.unauthenticated());
      }
      final failure = Failure.authFailure(message: 'Token refresh failed: ${e.toString()}');
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
        var list = claims['emails'] as List<dynamic>;
        email = list.isNotEmpty ? list.first : AppConstants.emptyString;
      }

      int authTime = claims['auth_time'];
      authTime *= 1000; // convert to milliseconds

      return AppUser(
        id: claims['oid'] ?? claims['sub'] ?? AppConstants.emptyString,
        email: email,
        displayName: claims['given_name'] ?? '[unknown]',
        createdAt: DateTime.now(),
        lastLoginAt: DateTime.fromMicrosecondsSinceEpoch(authTime),
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
