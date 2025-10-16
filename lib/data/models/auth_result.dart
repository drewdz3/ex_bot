import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'auth_result.freezed.dart';
part 'auth_result.g.dart';

/// Authentication result from AppAuth
@freezed
abstract class AuthResult with _$AuthResult {
  const factory AuthResult({
    required String accessToken,
    String? refreshToken,
    String? idToken,
    required List<String> scopes,
    DateTime? accessTokenExpirationDateTime,
    Map<String, dynamic>? additionalParameters,
  }) = _AuthResult;

  factory AuthResult.fromJson(Map<String, dynamic> json) =>
      _$AuthResultFromJson(json);
}