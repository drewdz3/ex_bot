// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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


/// Adds pattern-matching-related methods to [AiMessageRole].
extension AiMessageRolePatterns on AiMessageRole {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UserRole value)?  user,TResult Function( AssistantRole value)?  assistant,TResult Function( SystemRole value)?  system,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UserRole() when user != null:
return user(_that);case AssistantRole() when assistant != null:
return assistant(_that);case SystemRole() when system != null:
return system(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UserRole value)  user,required TResult Function( AssistantRole value)  assistant,required TResult Function( SystemRole value)  system,}){
final _that = this;
switch (_that) {
case UserRole():
return user(_that);case AssistantRole():
return assistant(_that);case SystemRole():
return system(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UserRole value)?  user,TResult? Function( AssistantRole value)?  assistant,TResult? Function( SystemRole value)?  system,}){
final _that = this;
switch (_that) {
case UserRole() when user != null:
return user(_that);case AssistantRole() when assistant != null:
return assistant(_that);case SystemRole() when system != null:
return system(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  user,TResult Function()?  assistant,TResult Function()?  system,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UserRole() when user != null:
return user();case AssistantRole() when assistant != null:
return assistant();case SystemRole() when system != null:
return system();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  user,required TResult Function()  assistant,required TResult Function()  system,}) {final _that = this;
switch (_that) {
case UserRole():
return user();case AssistantRole():
return assistant();case SystemRole():
return system();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  user,TResult? Function()?  assistant,TResult? Function()?  system,}) {final _that = this;
switch (_that) {
case UserRole() when user != null:
return user();case AssistantRole() when assistant != null:
return assistant();case SystemRole() when system != null:
return system();case _:
  return null;

}
}

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
