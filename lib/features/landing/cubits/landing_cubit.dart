import 'package:ex_bot/domain/repositories/auth_repository_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:ex_bot/core/repositories/auth_repository.dart';
import 'package:ex_bot/core/utils/debug_logger.dart';
import 'package:ex_bot/domain/entities/app_user.dart';
import 'package:ex_bot/domain/entities/auth_status.dart';

/// Cubit for managing authentication state
@Injectable()
class LandingCubit extends Cubit<AuthStatus> {
  final AuthRepository _authRepository;

  LandingCubit(this._authRepository) : super(const AuthStatus.loading()) {
    // Listen to auth status changes from repository
    _authRepository.authStatusStream.listen((status) {
      emit(status);
    });
  }

  Future<void> initializeAuth() async {
    try {
      DebugLogger.info('(LandingCubit.initializeAuth) Initializing...');
      await _authRepository.refreshTokens(true);
    } catch (e) {
      DebugLogger.error('(LandingCubit.initializeAuth) Auth initialization failed: $e');
      emit(AuthStatus.error('Initialization failed: ${e.toString()}'));
    }
  }

  Future<void> signIn() async {
    try {
      DebugLogger.info('(LandingCubit.signIn) Starting sign-in...');
      emit(const AuthStatus.loading());

      final result = await _authRepository.signIn();
      result.fold(
        (failure) {
          DebugLogger.error('(LandingCubit.signIn) Sign-in failed: ${failure.message}');
          emit(AuthStatus.error(failure.message));
        },
        (user) {
          DebugLogger.success('(LandingCubit.signIn) Sign-in successful');
          emit(AuthStatus.authenticated(user));
        },
      );
    } catch (e) {
      DebugLogger.error('(LandingCubit.signIn) Sign-in error: $e');
      emit(AuthStatus.error('Sign-in failed: ${e.toString()}'));
    }
  }

  /// Sign out current user
  Future<void> signOut() async {
    try {
      DebugLogger.info('(LandingCubit.signOut) Starting sign-out...');
      emit(const AuthStatus.loading());

      final result = await _authRepository.signOut();
      result.fold(
        (failure) {
          DebugLogger.error('(LandingCubit.signOut) Sign-out failed: ${failure.message}');
          emit(AuthStatus.error(failure.message));
        },
        (_) {
          DebugLogger.success('(LandingCubit.signOut) Sign-out successful');
          emit(const AuthStatus.unauthenticated());
        },
      );
    } catch (e) {
      DebugLogger.error('(LandingCubit.signOut) Sign-out error: $e');
      emit(AuthStatus.error('Sign-out failed: ${e.toString()}'));
    }
  }

  /// Refresh tokens silently
  Future<void> refreshTokens() async {
    try {
      DebugLogger.info('(LandingCubit.refreshTokens) Refreshing tokens...');

      // Get the current auth repository implementation to call refreshTokens
      final result = await _authRepository.refreshTokens(true);

      result.fold(
        (failure) {
          DebugLogger.warning('(LandingCubit.refreshTokens) Token refresh failed: ${failure.message}');
          // Don't emit error state for token refresh failures
          // The user is still authenticated until tokens expire
        },
        (user) {
          DebugLogger.success('(LandingCubit.refreshTokens) Tokens refreshed successfully');
          emit(AuthStatus.authenticated(user));
        },
      );
    } catch (e) {
      DebugLogger.warning('(LandingCubit.refreshTokens) Token refresh error: $e');
      // Don't emit error state for token refresh failures
    }
  }

  /// Check if user is currently authenticated
  bool get isAuthenticated {
    return state.whenOrNull(authenticated: (_) => true) ?? false;
  }

  /// Get current authenticated user
  AppUser? get currentUser {
    return state.whenOrNull(authenticated: (user) => user);
  }

  /// Check if auth is in loading state
  bool get isLoading {
    return state.whenOrNull(loading: () => true) ?? false;
  }

  /// Check if there's an error
  String? get errorMessage {
    return state.whenOrNull(error: (message) => message);
  }
}
