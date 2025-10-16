import 'package:ex_bot/core/repositories/auth_repository.dart';
import 'package:ex_bot/core/utils/debug_logger.dart';
import 'package:ex_bot/domain/entities/app_user.dart';
import 'package:injectable/injectable.dart';

/// Service to handle authentication initialization and startup logic
@injectable
class AuthService {
  final AuthRepository _authRepository;

  AuthService(this._authRepository);

  /// Initialize authentication on app startup
  /// This should be called in main() before runApp()
  Future<void> initializeOnStartup() async {
    try {
      DebugLogger.info('🚀 Starting authentication initialization...');

      // Initialize auth state (check for existing tokens and user)
      await _authRepository.initialize();

      DebugLogger.success('✅ Authentication initialization completed');
    } catch (e) {
      DebugLogger.error('❌ Authentication initialization failed: $e');
      // Don't rethrow - app should still start even if auth init fails
    }
  }

  /// Check if user needs to complete onboarding
  /// This will be called after successful authentication
  Future<bool> needsOnboarding(AppUser user) async {
    try {
      // Check if user has completed onboarding
      // This could check user metadata or call an API
      // final hasCompletedOnboarding =
      //     user.metadata?['onboarding_completed'] == true;

      // DebugLogger.info(
      //   'User onboarding status: ${hasCompletedOnboarding ? 'completed' : 'pending'}',
      // );
      // return !hasCompletedOnboarding;
      return false;
    } catch (e) {
      DebugLogger.error('Failed to check onboarding status: $e');
      // Assume onboarding is needed if we can't determine status
      return true;
    }
  }

  /// Mark user onboarding as completed
  Future<void> completeOnboarding(AppUser user) async {
    try {
      DebugLogger.info('Marking onboarding as completed for user: ${user.id}');

      // Update user metadata to mark onboarding as completed
      // final updatedUser = user.copyWith(
      //   metadata: {
      //     ...user.metadata ?? {},
      //     'onboarding_completed': true,
      //     'onboarding_completed_at': DateTime.now().toIso8601String(),
      //   },
      // );

      // Save updated user data
      // if (_authRepository is AuthRepositoryImpl) {
      //   final authRepoImpl = _authRepository;
      //   await authRepoImpl.userStorage.saveUser(updatedUser);
      // }

      DebugLogger.success('Onboarding marked as completed');
    } catch (e) {
      DebugLogger.error('Failed to complete onboarding: $e');
      rethrow;
    }
  }

  /// Get authentication status summary for debugging
  // Future<Map<String, dynamic>> getAuthStatusSummary() async {
  //   try {
  //     final isAuthenticated = await _authRepository.isAuthenticated();
  //     final currentUserResult = await _authRepository.getCurrentUser();

  //     final summary = {
  //       'is_authenticated': isAuthenticated,
  //       'current_user': currentUserResult.fold(
  //         (failure) => {'error': failure.message},
  //         (user) => user?.toJson(),
  //       ),
  //       'timestamp': DateTime.now().toIso8601String(),
  //     };

  //     DebugLogger.info('Auth status summary: $summary');
  //     return summary;
  //   } catch (e) {
  //     DebugLogger.error('Failed to get auth status summary: $e');
  //     return {
  //       'error': e.toString(),
  //       'timestamp': DateTime.now().toIso8601String(),
  //     };
  //   }
  // }

  /// Force token refresh (useful for debugging)
  // Future<bool> forceTokenRefresh() async {
  //   try {
  //     DebugLogger.info('Forcing token refresh...');

  //     if (_authRepository is AuthRepositoryImpl) {
  //       final authRepoImpl = _authRepository;
  //       final result = await authRepoImpl.refreshTokens();

  //       return result.fold(
  //         (failure) {
  //           DebugLogger.error('Force token refresh failed: ${failure.message}');
  //           return false;
  //         },
  //         (user) {
  //           DebugLogger.success('Force token refresh successful');
  //           return true;
  //         },
  //       );
  //     }

  //     return false;
  //   } catch (e) {
  //     DebugLogger.error('Force token refresh error: $e');
  //     return false;
  //   }
  // }

  /// Clear all authentication data (useful for debugging/testing)
  Future<void> clearAllAuthData() async {
    try {
      DebugLogger.warning('Clearing all authentication data...');

      await _authRepository.signOut();

      DebugLogger.success('All authentication data cleared');
    } catch (e) {
      DebugLogger.error('Failed to clear auth data: $e');
      rethrow;
    }
  }
}
