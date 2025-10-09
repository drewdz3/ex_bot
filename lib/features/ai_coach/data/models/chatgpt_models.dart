import 'package:freezed_annotation/freezed_annotation.dart';

part 'chatgpt_models.freezed.dart';
part 'chatgpt_models.g.dart';

/// ChatGPT API request model
@freezed
class ChatGptRequest with _$ChatGptRequest {
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

/// ChatGPT message for API
@freezed
class ChatGptMessage with _$ChatGptMessage {
  const factory ChatGptMessage({
    required String role,
    required String content,
    String? name,
  }) = _ChatGptMessage;

  factory ChatGptMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatGptMessageFromJson(json);
}

/// ChatGPT API response model
@freezed
class ChatGptResponse with _$ChatGptResponse {
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

/// Usage information from ChatGPT API
@freezed
class ChatGptUsage with _$ChatGptUsage {
  const factory ChatGptUsage({
    @Default(0) int promptTokens,
    @Default(0) int completionTokens,
    @Default(0) int totalTokens,
  }) = _ChatGptUsage;

  factory ChatGptUsage.fromJson(Map<String, dynamic> json) =>
      _$ChatGptUsageFromJson(json);
}

/// Choice from ChatGPT API response
@freezed
class ChatGptChoice with _$ChatGptChoice {
  const factory ChatGptChoice({
    @Default(0) int index,
    required ChatGptMessage message,
    String? finishReason,
  }) = _ChatGptChoice;

  factory ChatGptChoice.fromJson(Map<String, dynamic> json) =>
      _$ChatGptChoiceFromJson(json);
}

/// Error response from ChatGPT API
@freezed
class ChatGptError with _$ChatGptError {
  const factory ChatGptError({
    required String message,
    required String type,
    String? param,
    String? code,
  }) = _ChatGptError;

  factory ChatGptError.fromJson(Map<String, dynamic> json) =>
      _$ChatGptErrorFromJson(json);
}