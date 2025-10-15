import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'failures.freezed.dart';

/// Base class for all failures in the application
@freezed
abstract class Failure with _$Failure {
  const factory Failure.serverFailure({
    required String message,
    int? statusCode,
  }) = ServerFailure;

  const factory Failure.networkFailure({
    required String message,
  }) = NetworkFailure;

  const factory Failure.cacheFailure({
    required String message,
  }) = CacheFailure;

  const factory Failure.validationFailure({
    required String message,
    Map<String, String>? fieldErrors,
  }) = ValidationFailure;

  const factory Failure.aiServiceFailure({
    required String message,
    String? errorCode,
  }) = AiServiceFailure;

  const factory Failure.authFailure({
    required String message,
    String? errorCode,
  }) = AuthFailure;

  const factory Failure.unknownFailure({
    required String message,
  }) = UnknownFailure;
}