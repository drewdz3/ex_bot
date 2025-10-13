import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'chatgpt_message.dart';

part 'chatgpt_request.freezed.dart';
part 'chatgpt_request.g.dart';

/// ChatGPT API request model
@freezed
abstract class ChatGptRequest with _$ChatGptRequest {
  const factory ChatGptRequest({
    required String model,
    required List<ChatGptMessage> messages,
    @Default(1.0) double temperature,
    @Default(2000) int maxTokens,
    @Default(1.0) double topP,
    @Default(0.0) double frequencyPenalty,
    @Default(0.0) double presencePenalty,
    List<String>? stop,
    String? user,
  }) = _ChatGptRequest;

  factory ChatGptRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatGptRequestFromJson(json);
}