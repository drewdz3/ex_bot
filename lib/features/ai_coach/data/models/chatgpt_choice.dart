import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'chatgpt_message.dart';

part 'chatgpt_choice.freezed.dart';
part 'chatgpt_choice.g.dart';

/// Choice from ChatGPT API response
@freezed
abstract class ChatGptChoice with _$ChatGptChoice {
  const factory ChatGptChoice({
    @Default(0) int index,
    required ChatGptMessage message,
    String? finishReason,
  }) = _ChatGptChoice;

  factory ChatGptChoice.fromJson(Map<String, dynamic> json) =>
      _$ChatGptChoiceFromJson(json);
}