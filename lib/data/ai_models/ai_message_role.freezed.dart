// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_message_role.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
AiMessageRole _$AiMessageRoleFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'user':
          return UserRole.fromJson(
            json
          );
                case 'assistant':
          return AssistantRole.fromJson(
            json
          );
                case 'system':
          return SystemRole.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'AiMessageRole',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$AiMessageRole implements DiagnosticableTreeMixin {



  /// Serializes this AiMessageRole to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AiMessageRole'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiMessageRole);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AiMessageRole()';
}


}

/// @nodoc
class $AiMessageRoleCopyWith<$Res>  {
$AiMessageRoleCopyWith(AiMessageRole _, $Res Function(AiMessageRole) __);
}


/// @nodoc
@JsonSerializable()

class UserRole with DiagnosticableTreeMixin implements AiMessageRole {
  const UserRole({final  String? $type}): $type = $type ?? 'user';
  factory UserRole.fromJson(Map<String, dynamic> json) => _$UserRoleFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$UserRoleToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AiMessageRole.user'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserRole);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AiMessageRole.user()';
}


}




/// @nodoc
@JsonSerializable()

class AssistantRole with DiagnosticableTreeMixin implements AiMessageRole {
  const AssistantRole({final  String? $type}): $type = $type ?? 'assistant';
  factory AssistantRole.fromJson(Map<String, dynamic> json) => _$AssistantRoleFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$AssistantRoleToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AiMessageRole.assistant'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssistantRole);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AiMessageRole.assistant()';
}


}




/// @nodoc
@JsonSerializable()

class SystemRole with DiagnosticableTreeMixin implements AiMessageRole {
  const SystemRole({final  String? $type}): $type = $type ?? 'system';
  factory SystemRole.fromJson(Map<String, dynamic> json) => _$SystemRoleFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$SystemRoleToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AiMessageRole.system'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SystemRole);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AiMessageRole.system()';
}


}




// dart format on
