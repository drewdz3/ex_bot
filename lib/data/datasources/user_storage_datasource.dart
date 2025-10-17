import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import 'package:ex_bot/core/constants/app_constants.dart';
import 'package:ex_bot/core/utils/debug_logger.dart';
import 'package:ex_bot/domain/entities/app_user.dart';

/// Local storage for user authentication data using secure storage
@injectable
class UserStorageDataSource {
  static const FlutterSecureStorage _storage = FlutterSecureStorage(
    aOptions: AndroidOptions(encryptedSharedPreferences: true),
    iOptions: IOSOptions(accessibility: KeychainAccessibility.first_unlock_this_device),
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
  Future<void> clearData() async {
    try {
      await _storage.delete(key: AppConstants.userProfileKey);
      await _storage.delete(key: AppConstants.refreshTokenKey);
      DebugLogger.success('All user data cleared from storage');
    } catch (e) {
      DebugLogger.error('Failed to clear user data: $e');
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
}
