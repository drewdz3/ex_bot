import 'dart:async';

import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

import 'package:ex_bot/core/constants/app_constants.dart';
import 'package:ex_bot/core/errors/failures.dart';
import 'package:ex_bot/core/utils/debug_logger.dart';
import 'package:ex_bot/data/datasources/appauth_datasource.dart';
import 'package:ex_bot/data/datasources/auth_storage_datasource.dart';
import 'package:ex_bot/data/models/auth_result.dart';
import 'package:ex_bot/domain/repositories/auth_repository.dart';

/// Implementation of AuthRepository using AppAuth and secure storage
@Singleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AppAuthDataSource _appAuthDataSource;
  final AuthStorageDatasource _authStorage;

  bool _authenticated = false;

  AuthRepositoryImpl(this._appAuthDataSource, this._authStorage);

  @override
  bool get isAuthenticated => _authenticated;

  @override
  Future<Either<Failure, AuthResult>> signIn() async {
    try {
      _authenticated = false;
      DebugLogger.info('Starting sign-in...');

      // Attempt interactive sign-in
      final authResult = await _appAuthDataSource.signInInteractive();
      if (authResult == null) {
        const failure = Failure.authFailure(message: 'Sign-in was cancelled or failed');
        return Left(failure);
      }
      _authenticated = true;

      // save refresh token
      // TODO: remove hardcoded values from token exiry calc
      await _authStorage.saveRefreshToken(
        expiresOn: authResult.accessTokenExpirationDateTime ?? DateTime.now().add(const Duration(hours: 1)),
        refreshToken: authResult.refreshToken ?? AppConstants.emptyString,
      );

      DebugLogger.success('Sign-in completed successfully');
      return Right(authResult);
    } catch (e) {
      _authenticated = false;
      DebugLogger.error('Sign-in failed: $e');
      final failure = Failure.authFailure(message: 'Sign-in failed: ${e.toString()}');
      return Left(failure);
    }
  }

  @override
  Future<Either<Failure, void>> signOut() async {
    try {
      DebugLogger.info('Starting sign-out process...');

      // Sign out from AppAuth
      await _appAuthDataSource.signOut(null);
      _authenticated = false;

      // Clear stored user data and tokens
      await _authStorage.clearRefreshToken();

      DebugLogger.success('Sign-out completed successfully');
      return const Right(null);
    } catch (e) {
      DebugLogger.error('Sign-out failed: $e');
      final failure = Failure.authFailure(message: 'Sign-out failed: ${e.toString()}');
      return Left(failure);
    }
  }

  /// Attempt to refresh tokens silently
  @override
  Future<Either<Failure, AuthResult>> refreshTokens() async {
    try {
      DebugLogger.info('Attempting to refresh tokens...');

      // Try silent sign-in with refresh token
      final refreshToken = await _authStorage.getRefreshTokenIfValid();
      if (refreshToken == null) {
        _authenticated = false;
        const failure = Failure.authFailure(message: 'No refresh token available');
        return Left(failure);
      }

      final authResult = await _appAuthDataSource.signInSilent(refreshToken);
      if (authResult == null) {
        _authenticated = false;
        const failure = Failure.authFailure(message: 'Token refresh failed');
        return Left(failure);
      }
      _authenticated = true;

      // save refresh token
      // TODO: remove hardcoded values from token exiry calc
      await _authStorage.saveRefreshToken(
        expiresOn: authResult.accessTokenExpirationDateTime ?? DateTime.now().add(const Duration(hours: 1)),
        refreshToken: authResult.refreshToken ?? AppConstants.emptyString,
      );

      DebugLogger.success('Tokens refreshed successfully');
      return Right(authResult);
    } catch (e) {
      DebugLogger.error('Token refresh failed: $e');
      final failure = Failure.authFailure(message: 'Token refresh failed: ${e.toString()}');
      return Left(failure);
    }
  }
}
