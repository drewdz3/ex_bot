    import 'package:freezed_annotation/freezed_annotation.dart';
    import 'package:flutter/foundation.dart';
    import 'chatgpt_usage.dart';
    import 'chatgpt_choice.dart';

    part 'chatgpt_response.freezed.dart';
    part 'chatgpt_response.g.dart';

    /// ChatGPT API response model
    @freezed
    abstract class ChatGptResponse with _$ChatGptResponse {
      const factory ChatGptResponse({
        required String id,
        required String object,
        @Default(0) int created,
        required String model,
        ChatGptUsage? usage,
        required List<ChatGptChoice> choices,
      }) = _ChatGptResponse;

      factory ChatGptResponse.fromJson(Map<String, dynamic> json) =>
          _$ChatGptResponseFromJson(json);
    }
