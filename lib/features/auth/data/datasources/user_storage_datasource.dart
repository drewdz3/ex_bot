import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/utils/debug_logger.dart';
import '../../../../core/constants/app_constants.dart';
import '../models/auth_result.dart';
import '../../domain/entities/app_user.dart';

/// Local storage for user authentication data using secure storage
@injectable
class UserStorageDataSource {
  static const FlutterSecureStorage _storage = FlutterSecureStorage(
    aOptions: AndroidOptions(
      encryptedSharedPreferences: true,
    ),
    iOptions: IOSOptions(
      accessibility: KeychainAccessibility.first_unlock_this_device,
    ),
  );

  UserStorageDataSource();

  /// Save user data to secure storage
  Future<void> saveUser(AppUser user) async {
    try {
      final userJson = jsonEncode(user.toJson());
      await _storage.write(key: AppConstants.userProfileKey, value: userJson);
      DebugLogger.success('User data saved to storage');
    } catch (e) {
      DebugLogger.error('Failed to save user data: $e');
      rethrow;
    }
  }

  /// Get user data from secure storage
  Future<AppUser?> getUser() async {
    try {
      final userJson = await _storage.read(key: AppConstants.userProfileKey);
      if (userJson != null && userJson.isNotEmpty) {
        final userMap = jsonDecode(userJson) as Map<String, dynamic>;
        DebugLogger.success('User data retrieved from storage');
        return AppUser.fromJson(userMap);
      }
      DebugLogger.info('No user data found in storage');
      return null;
    } catch (e) {
      DebugLogger.error('Failed to retrieve user data: $e');
      return null;
    }
  }

  /// Save authentication tokens to secure storage
  Future<void> saveAuthTokens({
    required String accessToken,
    required DateTime expiresOn,
    String? refreshToken,
  }) async {
    try {
      final tokenData = {
        'access_token': accessToken,
        'expires_on': expiresOn.toIso8601String(),
        if (refreshToken != null) 'refresh_token': refreshToken,
        'saved_at': DateTime.now().toIso8601String(),
      };
      
      final tokenJson = jsonEncode(tokenData);
      await _storage.write(key: AppConstants.authTokenKey, value: tokenJson);
      DebugLogger.success('Auth tokens saved to storage');
    } catch (e) {
      DebugLogger.error('Failed to save auth tokens: $e');
      rethrow;
    }
  }

  /// Get authentication tokens from secure storage
  Future<Map<String, dynamic>?> getAuthTokens() async {
    try {
      final tokenJson = await _storage.read(key: AppConstants.authTokenKey);
      if (tokenJson != null && tokenJson.isNotEmpty) {
        final tokenData = jsonDecode(tokenJson) as Map<String, dynamic>;
        DebugLogger.success('Auth tokens retrieved from storage');
        return tokenData;
      }
      DebugLogger.info('No auth tokens found in storage');
      return null;
    } catch (e) {
      DebugLogger.error('Failed to retrieve auth tokens: $e');
      return null;
    }
  }

  /// Check if stored tokens are still valid
  Future<bool> areTokensValid() async {
    try {
      final tokenData = await getAuthTokens();
      if (tokenData == null) {
        return false;
      }

      final expiresOnStr = tokenData['expires_on'] as String?;
      if (expiresOnStr == null) {
        return false;
      }

      final expiresOn = DateTime.parse(expiresOnStr);
      final now = DateTime.now();
      
      // Consider tokens expired if they expire within the next 5 minutes
      final isValid = expiresOn.isAfter(now.add(const Duration(minutes: 5)));
      
      DebugLogger.info('Tokens valid: $isValid (expires: $expiresOn, now: $now)');
      return isValid;
    } catch (e) {
      DebugLogger.error('Failed to check token validity: $e');
      return false;
    }
  }

  /// Get refresh token from secure storage
  Future<String?> getRefreshToken() async {
    try {
      final tokenData = await getAuthTokens();
      if (tokenData != null) {
        final refreshToken = tokenData['refresh_token'] as String?;
        DebugLogger.info('Refresh token ${refreshToken != null ? 'found' : 'not found'} in storage');
        return refreshToken;
      }
      return null;
    } catch (e) {
      DebugLogger.error('Failed to get refresh token: $e');
      return null;
    }
  }

  /// Save authentication result (tokens + user info) to storage
  Future<void> saveAuthResult(AuthResult authResult, AppUser user) async {
    try {
      // Save user data
      await saveUser(user);
      
      // Save tokens
      await saveAuthTokens(
        accessToken: authResult.accessToken,
        expiresOn: authResult.accessTokenExpirationDateTime ?? DateTime.now().add(const Duration(hours: 1)),
        refreshToken: authResult.refreshToken,
      );
      
      DebugLogger.success('Complete auth result saved to storage');
    } catch (e) {
      DebugLogger.error('Failed to save auth result: $e');
      rethrow;
    }
  }

  /// Update user's last login timestamp
  Future<void> updateLastLogin() async {
    try {
      final user = await getUser();
      if (user != null) {
        final updatedUser = user.copyWith(lastLoginAt: DateTime.now());
        await saveUser(updatedUser);
        DebugLogger.success('User last login updated');
      }
    } catch (e) {
      DebugLogger.error('Failed to update last login: $e');
    }
  }

  /// Clear all stored user data and tokens
  Future<void> clearUserData() async {
    try {
      await _storage.delete(key: AppConstants.userProfileKey);
      await _storage.delete(key: AppConstants.authTokenKey);
      DebugLogger.success('All user data cleared from storage');
    } catch (e) {
      DebugLogger.error('Failed to clear user data: $e');
      rethrow;
    }
  }

  /// Clear only authentication tokens (keep user profile)
  Future<void> clearAuthTokens() async {
    try {
      await _storage.delete(key: AppConstants.authTokenKey);
      DebugLogger.success('Auth tokens cleared from storage');
    } catch (e) {
      DebugLogger.error('Failed to clear auth tokens: $e');
      rethrow;
    }
  }

  /// Check if user data exists in storage
  Future<bool> hasUserData() async {
    try {
      final userJson = await _storage.read(key: AppConstants.userProfileKey);
      return userJson != null && userJson.isNotEmpty;
    } catch (e) {
      DebugLogger.error('Failed to check user data existence: $e');
      return false;
    }
  }

  /// Get all stored keys (for debugging)
  Future<Map<String, String>> getAllStoredData() async {
    try {
      return await _storage.readAll();
    } catch (e) {
      DebugLogger.error('Failed to read all stored data: $e');
      return {};
    }
  }
}