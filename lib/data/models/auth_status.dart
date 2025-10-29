import 'package:ex_bot/data/models/app_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'auth_status.freezed.dart';

@freezed
sealed class AuthStatus with _$AuthStatus {
  const factory AuthStatus.authenticated(AppUser user) = Authenticated;
  const factory AuthStatus.unauthenticated() = Unauthenticated;
  const factory AuthStatus.loading() = Loading;
  const factory AuthStatus.error(String message) = AuthError;
}
