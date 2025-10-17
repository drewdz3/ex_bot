    import 'dart:convert';

    import 'package:ex_bot/core/constants/app_constants.dart';
    import 'package:ex_bot/core/utils/debug_logger.dart';
    import 'package:flutter_secure_storage/flutter_secure_storage.dart';
    import 'package:injectable/injectable.dart';

    @injectable
    class AuthStorageDatasource {
      static const FlutterSecureStorage _storage = FlutterSecureStorage(
        aOptions: AndroidOptions(encryptedSharedPreferences: true),
        iOptions: IOSOptions(
          accessibility: KeychainAccessibility.first_unlock_this_device,
        ),
      );

      AuthStorageDatasource();

      /// Save authentication tokens to secure storage
      Future<void> saveRefreshToken({
        required String refreshToken,
        required DateTime expiresOn,
      }) async {
        try {
          final tokenData = {
            'refresh_token': refreshToken,
            'expires_on': expiresOn.toIso8601String(),
            'saved_at': DateTime.now().toIso8601String(),
          };

          final tokenJson = jsonEncode(tokenData);
          await _storage.write(
            key: AppConstants.refreshTokenKey,
            value: tokenJson,
          );
          DebugLogger.success('Refresh token saved to storage');
        } catch (e) {
          DebugLogger.error('Failed to save refresh token: $e');
          rethrow;
        }
      }

      /// Get authentication tokens from secure storage
      Future<Map<String, dynamic>?> getRefreshToken() async {
        try {
          final tokenJson = await _storage.read(
            key: AppConstants.refreshTokenKey,
          );
          if (tokenJson != null && tokenJson.isNotEmpty) {
            final tokenData = jsonDecode(tokenJson) as Map<String, dynamic>;
            DebugLogger.success('Refresh token retrieved from storage');
            return tokenData;
          }
          DebugLogger.info('No tokens found in storage');
          return null;
        } catch (e) {
          DebugLogger.error('Failed to retrieve refresh token: $e');
          return null;
        }
      }

      /// Check if stored tokens are still valid
      Future<bool> refreshTokenValid({
        required Map<String, dynamic> tokenData,
      }) async {
        try {
          final expiresOnStr = tokenData['expires_on'] as String?;
          if (expiresOnStr == null) {
            return false;
          }

          final expiresOn = DateTime.parse(expiresOnStr);
          final now = DateTime.now();

          // Consider tokens expired if they expire within the next 5 minutes
          final isValid = expiresOn.isAfter(
            now.add(const Duration(minutes: 5)),
          );

          DebugLogger.info(
            'Refresh token valid: $isValid (expires: $expiresOn, now: $now)',
          );
          return isValid;
        } catch (e) {
          DebugLogger.error('Refresh token validity failed: $e');
          return false;
        }
      }

      /// Get refresh token from secure storage
      Future<String?> getRefreshTokenIfValid() async {
        try {
          final tokenData = await getRefreshToken();
          if (tokenData != null) {
            //  check valid
            if (!await refreshTokenValid(tokenData: tokenData)) {
              DebugLogger.info('Stored refresh token is expired or invalid');
              return null;
            }
            final refreshToken = tokenData['refresh_token'] as String?;
            DebugLogger.info(
              'Refresh token ${refreshToken != null ? 'found' : 'not found'} in storage',
            );
            return refreshToken;
          }
          return null;
        } catch (e) {
          DebugLogger.error('Failed to get refresh token: $e');
          return null;
        }
      }

      /// Clear only authentication tokens (keep user profile)
      Future<void> clearRefreshToken() async {
        try {
          await _storage.delete(key: AppConstants.refreshTokenKey);
          DebugLogger.success('Refresh token cleared from storage');
        } catch (e) {
          DebugLogger.error('Failed to clear refresh token: $e');
          rethrow;
        }
      }
    }
