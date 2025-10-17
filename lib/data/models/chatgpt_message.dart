    import 'package:freezed_annotation/freezed_annotation.dart';
    import 'package:flutter/foundation.dart';

    part 'chatgpt_message.freezed.dart';
    part 'chatgpt_message.g.dart';

    /// ChatGPT message for API
    @freezed
    abstract class ChatGptMessage with _$ChatGptMessage {
      const factory ChatGptMessage({
        required String role,
        required String content,
        String? name,
      }) = _ChatGptMessage;

      factory ChatGptMessage.fromJson(Map<String, dynamic> json) =>
          _$ChatGptMessageFromJson(json);
    }
