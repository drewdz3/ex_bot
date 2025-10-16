import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'chatgpt_error.freezed.dart';
part 'chatgpt_error.g.dart';

/// Error response from ChatGPT API
@freezed
abstract class ChatGptError with _$ChatGptError {
  const factory ChatGptError({
    required String message,
    required String type,
    String? param,
    String? code,
  }) = _ChatGptError;

  factory ChatGptError.fromJson(Map<String, dynamic> json) =>
      _$ChatGptErrorFromJson(json);
}