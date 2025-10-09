import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:msal_auth/msal_auth.dart';

part 'auth_models.freezed.dart';
part 'auth_models.g.dart';

/// Authentication result from MSAL
@freezed
class AuthResult with _$AuthResult {
  const factory AuthResult({
    required String accessToken,
    required Account account,
    required List<String> scopes,
    DateTime? expiresOn,
  }) = _AuthResult;

  factory AuthResult.fromJson(Map<String, dynamic> json) =>
      _$AuthResultFromJson(json);
}

/// User profile from B2C claims
@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile({
    required String id,
    required String email,
    String? displayName,
    String? givenName,
    String? surname,
    String? preferredUsername,
    Map<String, dynamic>? claims,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
      
  /// Create UserProfile from B2C token claims
  factory UserProfile.fromClaims(Map<String, dynamic> claims) {
    return UserProfile(
      id: claims['sub'] as String? ?? claims['oid'] as String? ?? '',
      email: claims['emails']?.first as String? ?? claims['email'] as String? ?? '',
      displayName: claims['name'] as String?,
      givenName: claims['given_name'] as String?,
      surname: claims['family_name'] as String?,
      preferredUsername: claims['preferred_username'] as String?,
      claims: claims,
    );
  }
}