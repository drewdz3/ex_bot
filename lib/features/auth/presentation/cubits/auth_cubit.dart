import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/utils/debug_logger.dart';
import '../../domain/entities/auth_status.dart';
import '../../domain/entities/app_user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../data/repositories/auth_repository_impl.dart';

/// Cubit for managing authentication state
@Injectable()
class AuthCubit extends Cubit<AuthStatus> {
  final AuthRepository _authRepository;

  AuthCubit(this._authRepository) : super(const AuthStatus.loading()) {
    // Listen to auth status changes from repository
    _authRepository.authStatusStream.listen((status) {
      emit(status);
    });
  }

  Future<void> initializeAuth() async {
    try {
      DebugLogger.info('Initializing authentication...');
      emit(const AuthStatus.loading());
      
      // Check if user is already authenticated
      final isAuthenticated = await _authRepository.isAuthenticated();
      if (!isAuthenticated) {
        DebugLogger.info('User not authenticated');
        emit(const AuthStatus.unauthenticated());
        return;
      }

      // Get current user
      final result = await _authRepository.getCurrentUser();
      result.fold(
        (failure) {
          DebugLogger.error('Failed to get current user: ${failure.message}');
          emit(AuthStatus.error(failure.message));
        },
        (user) {
          if (user != null) {
            DebugLogger.success('User authenticated on startup');
            emit(AuthStatus.authenticated(user));
          } else {
            DebugLogger.info('No authenticated user found');
            emit(const AuthStatus.unauthenticated());
          }
        },
      );
    } catch (e) {
      DebugLogger.error('Auth initialization failed: $e');
      emit(AuthStatus.error('Initialization failed: ${e.toString()}'));
    }
  }

  Future<void> signIn() async {
    try {
      DebugLogger.info('Starting sign-in...');
      emit(const AuthStatus.loading());

      final result = await _authRepository.signIn();
      result.fold(
        (failure) {
          DebugLogger.error('Sign-in failed: ${failure.message}');
          emit(AuthStatus.error(failure.message));
        },
        (user) {
          DebugLogger.success('Sign-in successful');
          emit(AuthStatus.authenticated(user));
        },
      );
    } catch (e) {
      DebugLogger.error('Sign-in error: $e');
      emit(AuthStatus.error('Sign-in failed: ${e.toString()}'));
    }
  }

  /// Sign out current user
  Future<void> signOut() async {
    try {
      DebugLogger.info('Starting sign-out...');
      emit(const AuthStatus.loading());

      final result = await _authRepository.signOut();
      result.fold(
        (failure) {
          DebugLogger.error('Sign-out failed: ${failure.message}');
          emit(AuthStatus.error(failure.message));
        },
        (_) {
          DebugLogger.success('Sign-out successful');
          emit(const AuthStatus.unauthenticated());
        },
      );
    } catch (e) {
      DebugLogger.error('Sign-out error: $e');
      emit(AuthStatus.error('Sign-out failed: ${e.toString()}'));
    }
  }

  /// Refresh tokens silently
  Future<void> refreshTokens() async {
    try {
      DebugLogger.info('Refreshing tokens...');
      
      // Get the current auth repository implementation to call refreshTokens
      if (_authRepository is AuthRepositoryImpl) {
        final authRepoImpl = _authRepository;
        final result = await authRepoImpl.refreshTokens();
        
        result.fold(
          (failure) {
            DebugLogger.warning('Token refresh failed: ${failure.message}');
            // Don't emit error state for token refresh failures
            // The user is still authenticated until tokens expire
          },
          (user) {
            DebugLogger.success('Tokens refreshed successfully');
            emit(AuthStatus.authenticated(user));
          },
        );
      }
    } catch (e) {
      DebugLogger.warning('Token refresh error: $e');
      // Don't emit error state for token refresh failures
    }
  }

  /// Check if user is currently authenticated
  bool get isAuthenticated {
    return state.whenOrNull(
      authenticated: (_) => true,
    ) ?? false;
  }

  /// Get current authenticated user
  AppUser? get currentUser {
    return state.whenOrNull(
      authenticated: (user) => user,
    );
  }

  /// Check if auth is in loading state
  bool get isLoading {
    return state.whenOrNull(
      loading: () => true,
    ) ?? false;
  }

  /// Check if there's an error
  String? get errorMessage {
    return state.whenOrNull(
      error: (message) => message,
    );
  }
}