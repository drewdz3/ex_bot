import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'message_role.freezed.dart';
part 'message_role.g.dart';

@freezed
abstract class MessageRole with _$MessageRole {
  const factory MessageRole.user() = UserRole;
  const factory MessageRole.assistant() = AssistantRole;
  const factory MessageRole.system() = SystemRole;

  factory MessageRole.fromJson(Map<String, dynamic> json) => _$MessageRoleFromJson(json);
}
