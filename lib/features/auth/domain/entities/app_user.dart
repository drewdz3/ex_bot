import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user.freezed.dart';
part 'app_user.g.dart';

/// Application user entity
@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    required String id,
    required String email,
    String? displayName,
    String? firstName,
    String? lastName,
    String? profilePictureUrl,
    @Default('microsoft') String provider,
    required DateTime createdAt,
    DateTime? lastLoginAt,
    Map<String, dynamic>? metadata,
  }) = _AppUser;

  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);
}

/// Authentication status enumeration
@freezed
class AuthStatus with _$AuthStatus {
  const factory AuthStatus.authenticated(AppUser user) = _Authenticated;
  const factory AuthStatus.unauthenticated() = _Unauthenticated;
  const factory AuthStatus.loading() = _Loading;
  const factory AuthStatus.error(String message) = _AuthError;
}