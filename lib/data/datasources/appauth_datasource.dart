import 'package:ex_bot/data/models/auth_result.dart';
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:injectable/injectable.dart';

import 'package:ex_bot/core/constants/app_constants.dart';
import 'package:ex_bot/core/constants/auth_config.dart';
import 'package:ex_bot/core/utils/debug_logger.dart';

/// AppAuth authentication datasource for Azure AD B2C
@injectable
class AppAuthDataSource {
  final FlutterAppAuth _appAuth = const FlutterAppAuth();

  AppAuthDataSource();

  Future<AuthResult?> signInInteractive() async {
    DebugLogger.success('(appauth_datasource.signInInteractive) starting signin...');
    var scopes = AuthConfig.scopes.split(',').map((s) => s.trim()).toList();

    try {
      final AuthorizationTokenRequest request = AuthorizationTokenRequest(
        AuthConfig.clientId,
        AuthConfig.redirectUri,
        discoveryUrl: AuthConfig.discoveryUrl,
        scopes: scopes,
        issuer: AuthConfig.issuer,
        promptValues: ['select_account'], // Force interactive login
      );

      final result = await _appAuth.authorizeAndExchangeCode(request);

      DebugLogger.success('(appauth_datasource.signInInteractive) Interactive sign-in successful');

      return _mapToAuthResult(result);
    } catch (e) {
      DebugLogger.error('(appauth_datasource.signInInteractive) Interactive sign-in failed: $e');
      rethrow;
    }
  }

  /// Attempt silent sign-in using refresh token
  Future<AuthResult?> signInSilent(String refreshToken) async {
    try {
      DebugLogger.info('(appauth_datasource.signInSilent) Start silent sign-in...');
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

      DebugLogger.success('(appauth_datasource.signInSilent) Silent sign-in successful');
      return _mapToAuthResult(result);
    } catch (e) {
      DebugLogger.warning('(appauth_datasource.signInSilent) Silent sign-in failed: $e');
      return null;
    }
  }

  Future<void> signOut(String? idToken) async {
    try {
      DebugLogger.info('Signing out user...');
      _appAuth.endSession(
        EndSessionRequest(
          idTokenHint: idToken,
          postLogoutRedirectUrl: AuthConfig.redirectUri,
          discoveryUrl: AuthConfig.discoveryUrl,
        ),
      );
    } catch (e) {
      DebugLogger.error('Sign-out failed: $e');
      rethrow;
    }
  }

  /// Convert AppAuth TokenResponse to our app's AuthResult model
  AuthResult _mapToAuthResult(TokenResponse result) {
    return AuthResult(
      accessToken: result.accessToken ?? AppConstants.emptyString,
      refreshToken: result.refreshToken,
      idToken: result.idToken,
      scopes: ['openid', 'profile', 'email', 'offline_access'],
      accessTokenExpirationDateTime: result.accessTokenExpirationDateTime,
      additionalParameters: result.tokenAdditionalParameters,
    );
  }
}
