import 'package:ex_bot/core/constants/auth_config.dart';
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:injectable/injectable.dart';
import 'package:ex_bot/core/utils/debug_logger.dart';
import 'package:ex_bot/features/auth/data/models/auth_result.dart'
    as app_models;

/// AppAuth authentication datasource for Azure AD B2C
@injectable
class AppAuthDataSource {
  final FlutterAppAuth _appAuth = const FlutterAppAuth();

  AppAuthDataSource();

  Future<app_models.AuthResult?> signInInteractive() async {
    DebugLogger.success(
      '(appauth_datasource.signInInteractive) starting signin...',
    );
    var scopes = AuthConfig.scopes.split(',').map((s) => s.trim()).toList();

    try {
      final AuthorizationTokenRequest request = AuthorizationTokenRequest(
        AuthConfig.clientId,
        AuthConfig.redirectUri,
        discoveryUrl: AuthConfig.discoveryUrl,
        scopes: scopes,
        issuer: AuthConfig.issuer,
        promptValues: ['select_account'], // Force interactive login
        preferEphemeralSession: false,
      );

      final result = await _appAuth.authorizeAndExchangeCode(request);

      DebugLogger.success(
        '(appauth_datasource.signInInteractive) Interactive sign-in successful',
      );
      return _mapToAuthResult(result);
    } catch (e) {
      DebugLogger.error(
        '(appauth_datasource.signInInteractive) Interactive sign-in failed: $e',
      );
      rethrow;
    }
  }

  /// Attempt silent sign-in using refresh token
  Future<app_models.AuthResult?> signInSilent(String refreshToken) async {
    try {
      DebugLogger.info(
        '(appauth_datasource.signInSilent) Start silent sign-in...',
      );
      var scopes = AuthConfig.scopes.split(',').map((s) => s.trim()).toList();

      final TokenRequest request = TokenRequest(
        AuthConfig.clientId,
        AuthConfig.redirectUri,
        refreshToken: refreshToken,
        discoveryUrl: AuthConfig.discoveryUrl,
        scopes: scopes,
        issuer: AuthConfig.issuer,
      );

      final result = await _appAuth.token(request);

      DebugLogger.success(
        '(appauth_datasource.signInSilent) Silent sign-in successful',
      );
      return _mapToAuthResult(result);
    } catch (e) {
      DebugLogger.warning(
        '(appauth_datasource.signInSilent) Silent sign-in failed: $e',
      );
      return null;
    }
  }

  Future<void> signOut() async {
    try {
      return null;
      // DebugLogger.info('Signing out user...');

      // // AppAuth doesn't have a built-in logout method
      // // In a real implementation, you might want to:
      // // 1. Clear local tokens (handled by storage datasource)
      // // 2. Optionally redirect to Azure B2C logout endpoint
      // // 3. Or call a revoke endpoint if available

      // final String logoutUrl =
      //     '${AzureB2CConfig.authoritySignIn}/oauth2/v2.0/logout'
      //     '?post_logout_redirect_uri=${Uri.encodeComponent(AzureB2CConfig.redirectUri)}';

      // DebugLogger.info('Logout URL would be: $logoutUrl');
      // DebugLogger.success('Local sign-out completed');
    } catch (e) {
      DebugLogger.error('Sign-out failed: $e');
      rethrow;
    }
  }

  /// Convert AppAuth TokenResponse to our app's AuthResult model
  app_models.AuthResult _mapToAuthResult(TokenResponse result) {
    return app_models.AuthResult(
      accessToken: result.accessToken!,
      refreshToken: result.refreshToken,
      idToken: result.idToken,
      scopes: ['openid', 'profile', 'email', 'offline_access'],
      accessTokenExpirationDateTime: result.accessTokenExpirationDateTime,
      additionalParameters: result.tokenAdditionalParameters,
    );
  }
}
