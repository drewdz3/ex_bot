    import 'package:ex_bot/domain/entities/app_user.dart';
    import 'package:freezed_annotation/freezed_annotation.dart';
    import 'package:flutter/foundation.dart';

    part 'auth_status.freezed.dart';

    @freezed
    abstract class AuthStatus with _$AuthStatus {
      const factory AuthStatus.authenticated(AppUser user) = _Authenticated;
      const factory AuthStatus.unauthenticated() = _Unauthenticated;
      const factory AuthStatus.loading() = _Loading;
      const factory AuthStatus.error(String message) = _AuthError;
    }
