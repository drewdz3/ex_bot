import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'chatgpt_usage.freezed.dart';
part 'chatgpt_usage.g.dart';

/// Usage information from ChatGPT API
@freezed
abstract class ChatGptUsage with _$ChatGptUsage {
  const factory ChatGptUsage({
    required int promptTokens,
    required int completionTokens,
    required int totalTokens,
  }) = _ChatGptUsage;

  factory ChatGptUsage.fromJson(Map<String, dynamic> json) =>
      _$ChatGptUsageFromJson(json);
}