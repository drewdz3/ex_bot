import 'dart:async';
import 'package:either_dart/either.dart';
import 'package:ex_bot/core/errors/failures.dart';
import 'package:ex_bot/core/utils/debug_logger.dart';
import 'package:ex_bot/features/auth/data/datasources/appauth_datasource.dart';
import 'package:ex_bot/features/auth/data/datasources/user_storage_datasource.dart';
import 'package:ex_bot/features/auth/data/models/auth_result.dart';
import 'package:ex_bot/features/auth/domain/entities/app_user.dart';
import 'package:ex_bot/features/auth/domain/entities/auth_status.dart';
import 'package:ex_bot/features/auth/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

/// Implementation of AuthRepository using AppAuth and secure storage
@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AppAuthDataSource _appAuthDataSource;
  final UserStorageDataSource storageDataSource;
  
  // Stream controller for auth status changes
  final StreamController<AuthStatus> _authStatusController = 
      StreamController<AuthStatus>.broadcast();

  AuthRepositoryImpl(this._appAuthDataSource, this.storageDataSource);

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
        const failure = Failure.authFailure(message: 'Sign-in was cancelled or failed');
        _authStatusController.add(const AuthStatus.unauthenticated());
        return Left(failure);
      }

      // Convert AppAuth result to AppUser
      final appUser = await _mapAuthResultToAppUser(authResult);
      
      // Save authentication result and user data
      await storageDataSource.saveAuthResult(authResult, appUser);
      
      // Update last login
      await storageDataSource.updateLastLogin();
      
      // Emit authenticated state
      _authStatusController.add(AuthStatus.authenticated(appUser));
      
      DebugLogger.success('Sign-in completed successfully');
      return Right(appUser);
    } catch (e) {
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
      await _appAuthDataSource.signOut();
      
      // Clear stored user data and tokens
      await storageDataSource.clearUserData();
      
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

  @override
  Future<Either<Failure, AppUser?>> getCurrentUser() async {
    try {
      DebugLogger.info('Getting current user...');
      
      // First check if we have valid tokens
      final hasValidTokens = await storageDataSource.areTokensValid();
      if (!hasValidTokens) {
        DebugLogger.info('No valid tokens found');
        return const Right(null);
      }
      
      // Get user from storage
      final storedUser = await storageDataSource.getUser();
      if (storedUser == null) {
        DebugLogger.info('No user data found in storage');
        return const Right(null);
      }
      
      DebugLogger.success('Current user retrieved from storage');
      return Right(storedUser);
    } catch (e) {
      DebugLogger.error('Failed to get current user: $e');
      final failure = Failure.authFailure(message: 'Failed to get current user: ${e.toString()}');
      return Left(failure);
    }
  }

  @override
  Future<bool> isAuthenticated() async {
    try {
      // Check if user has valid tokens and user data
      final hasValidTokens = await storageDataSource.areTokensValid();
      final hasUserData = await storageDataSource.hasUserData();
      
      final isAuthenticated = hasValidTokens && hasUserData;
      DebugLogger.info('Authentication status: $isAuthenticated');
      
      return isAuthenticated;
    } catch (e) {
      DebugLogger.error('Failed to check authentication status: $e');
      return false;
    }
  }

  @override
  Future<void> initialize() async {
    try {
      DebugLogger.info('Initializing authentication state...');
      
      // Emit loading state
      _authStatusController.add(const AuthStatus.loading());
      
      // Check if user is already authenticated
      final isAuth = await isAuthenticated();
      if (!isAuth) {
        DebugLogger.info('User is not authenticated');
        _authStatusController.add(const AuthStatus.unauthenticated());
        return;
      }
      
      // Try silent sign-in to refresh tokens if needed
      final refreshToken = await storageDataSource.getRefreshToken();
      if (refreshToken != null) {
        final silentResult = await _appAuthDataSource.signInSilent(refreshToken);
        if (silentResult != null) {
          // Silent sign-in successful, get user data
          final user = await storageDataSource.getUser();
          if (user != null) {
            // Update tokens and last login
            await storageDataSource.saveAuthResult(silentResult, user);
            await storageDataSource.updateLastLogin();
            
            _authStatusController.add(AuthStatus.authenticated(user));
            DebugLogger.success('User authenticated via silent sign-in');
            return;
          }
        }
      }
      
      // If silent sign-in failed, get user from storage if still valid
      final currentUserResult = await getCurrentUser();
      currentUserResult.fold(
        (failure) {
          DebugLogger.warning('Failed to get current user: ${failure.message}');
          _authStatusController.add(const AuthStatus.unauthenticated());
        },
        (user) {
          if (user != null) {
            _authStatusController.add(AuthStatus.authenticated(user));
            DebugLogger.success('User authenticated from stored data');
          } else {
            _authStatusController.add(const AuthStatus.unauthenticated());
            DebugLogger.info('No authenticated user found');
          }
        },
      );
    } catch (e) {
      DebugLogger.error('Failed to initialize auth state: $e');
      _authStatusController.add(AuthStatus.error('Initialization failed: ${e.toString()}'));
    }
  }

  /// Attempt to refresh tokens silently
  Future<Either<Failure, AppUser>> refreshTokens() async {
    try {
      DebugLogger.info('Attempting to refresh tokens...');
      
      // Try silent sign-in with refresh token
      final refreshToken = await storageDataSource.getRefreshToken();
      if (refreshToken == null) {
        const failure = Failure.authFailure(message: 'No refresh token available');
        return Left(failure);
      }
      
      final authResult = await _appAuthDataSource.signInSilent(refreshToken);
      if (authResult == null) {
        const failure = Failure.authFailure(message: 'Token refresh failed');
        return Left(failure);
      }
      
      // Get current user data
      final user = await storageDataSource.getUser();
      if (user == null) {
        const failure = Failure.authFailure(message: 'No user data found');
        return Left(failure);
      }
      
      // Save refreshed tokens
      await storageDataSource.saveAuthResult(authResult, user);
      
      DebugLogger.success('Tokens refreshed successfully');
      return Right(user);
    } catch (e) {
      DebugLogger.error('Token refresh failed: $e');
      final failure = Failure.authFailure(message: 'Token refresh failed: ${e.toString()}');
      return Left(failure);
    }
  }

  /// Convert AppAuth result to AppUser
  Future<AppUser> _mapAuthResultToAppUser(AuthResult authResult) async {
    try {
      // For now, we'll use basic info from the additional parameters or create a simple user
      // In a real implementation, you'd decode the ID token to get user claims
      String userId = 'user_${DateTime.now().millisecondsSinceEpoch}';
      String email = '';
      String? displayName;
      String? firstName;
      String? lastName;
      
      // Try to extract info from additionalParameters if available
      if (authResult.additionalParameters != null) {
        final params = authResult.additionalParameters!;
        email = params['email']?.toString() ?? '';
        displayName = params['name']?.toString();
        firstName = params['given_name']?.toString();
        lastName = params['family_name']?.toString();
      }
      
      // If we have an ID token, we could decode it here to get proper user info
      // For now, we'll use placeholder values
      if (email.isEmpty) {
        email = 'user@example.com';
      }
      
      return AppUser(
        id: userId,
        email: email,
        displayName: displayName ?? 'User',
        firstName: firstName ?? 'User',
        lastName: lastName,
        provider: 'microsoft',
        createdAt: DateTime.now(),
        lastLoginAt: DateTime.now(),
        metadata: {
          'appauth_access_token_expires': authResult.accessTokenExpirationDateTime?.toIso8601String(),
          'appauth_scopes': authResult.scopes.join(', '),
        },
      );
    } catch (e) {
      DebugLogger.error('Failed to map auth result to app user: $e');
      // Return a basic user if mapping fails
      return AppUser(
        id: 'user_${DateTime.now().millisecondsSinceEpoch}',
        email: 'user@example.com',
        displayName: 'User',
        firstName: 'User',
        lastName: null,
        provider: 'microsoft',
        createdAt: DateTime.now(),
        lastLoginAt: DateTime.now(),
        metadata: {},
      );
    }
  }

  /// Dispose resources
  void dispose() {
    _authStatusController.close();
  }
}