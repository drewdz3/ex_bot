import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'auth_user_profile.freezed.dart';
part 'auth_user_profile.g.dart';

/// User profile from B2C claims
@freezed
abstract class AuthUserProfile with _$AuthUserProfile {
  const factory AuthUserProfile({
    required String id,
    required String email,
    String? displayName,
    String? givenName,
    String? surname,
    String? preferredUsername,
    Map<String, dynamic>? claims,
  }) = _AuthUserProfile;

  factory AuthUserProfile.fromJson(Map<String, dynamic> json) =>
      _$AuthUserProfileFromJson(json);
      
  /// Create AuthUserProfile from B2C token claims
  factory AuthUserProfile.fromClaims(Map<String, dynamic> claims) {
    return AuthUserProfile(
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