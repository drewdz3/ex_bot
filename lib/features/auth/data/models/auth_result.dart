import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:msal_auth/msal_auth.dart';

part 'auth_result.freezed.dart';
part 'auth_result.g.dart';

/// Authentication result from MSAL
@freezed
abstract class AuthResult with _$AuthResult {
  const factory AuthResult({
    required String accessToken,
    required Account account,
    required List<String> scopes,
    DateTime? expiresOn,
  }) = _AuthResult;

  factory AuthResult.fromJson(Map<String, dynamic> json) =>
      _$AuthResultFromJson(json);
}