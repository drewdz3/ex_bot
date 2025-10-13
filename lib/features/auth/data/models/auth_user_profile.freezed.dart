// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthUserProfile implements DiagnosticableTreeMixin {

 String get id; String get email; String? get displayName; String? get givenName; String? get surname; String? get preferredUsername; Map<String, dynamic>? get claims;
/// Create a copy of AuthUserProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthUserProfileCopyWith<AuthUserProfile> get copyWith => _$AuthUserProfileCopyWithImpl<AuthUserProfile>(this as AuthUserProfile, _$identity);

  /// Serializes this AuthUserProfile to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthUserProfile'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('email', email))..add(DiagnosticsProperty('displayName', displayName))..add(DiagnosticsProperty('givenName', givenName))..add(DiagnosticsProperty('surname', surname))..add(DiagnosticsProperty('preferredUsername', preferredUsername))..add(DiagnosticsProperty('claims', claims));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthUserProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.givenName, givenName) || other.givenName == givenName)&&(identical(other.surname, surname) || other.surname == surname)&&(identical(other.preferredUsername, preferredUsername) || other.preferredUsername == preferredUsername)&&const DeepCollectionEquality().equals(other.claims, claims));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,displayName,givenName,surname,preferredUsername,const DeepCollectionEquality().hash(claims));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthUserProfile(id: $id, email: $email, displayName: $displayName, givenName: $givenName, surname: $surname, preferredUsername: $preferredUsername, claims: $claims)';
}


}

/// @nodoc
abstract mixin class $AuthUserProfileCopyWith<$Res>  {
  factory $AuthUserProfileCopyWith(AuthUserProfile value, $Res Function(AuthUserProfile) _then) = _$AuthUserProfileCopyWithImpl;
@useResult
$Res call({
 String id, String email, String? displayName, String? givenName, String? surname, String? preferredUsername, Map<String, dynamic>? claims
});




}
/// @nodoc
class _$AuthUserProfileCopyWithImpl<$Res>
    implements $AuthUserProfileCopyWith<$Res> {
  _$AuthUserProfileCopyWithImpl(this._self, this._then);

  final AuthUserProfile _self;
  final $Res Function(AuthUserProfile) _then;

/// Create a copy of AuthUserProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? displayName = freezed,Object? givenName = freezed,Object? surname = freezed,Object? preferredUsername = freezed,Object? claims = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,givenName: freezed == givenName ? _self.givenName : givenName // ignore: cast_nullable_to_non_nullable
as String?,surname: freezed == surname ? _self.surname : surname // ignore: cast_nullable_to_non_nullable
as String?,preferredUsername: freezed == preferredUsername ? _self.preferredUsername : preferredUsername // ignore: cast_nullable_to_non_nullable
as String?,claims: freezed == claims ? _self.claims : claims // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthUserProfile].
extension AuthUserProfilePatterns on AuthUserProfile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthUserProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthUserProfile() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthUserProfile value)  $default,){
final _that = this;
switch (_that) {
case _AuthUserProfile():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthUserProfile value)?  $default,){
final _that = this;
switch (_that) {
case _AuthUserProfile() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String email,  String? displayName,  String? givenName,  String? surname,  String? preferredUsername,  Map<String, dynamic>? claims)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthUserProfile() when $default != null:
return $default(_that.id,_that.email,_that.displayName,_that.givenName,_that.surname,_that.preferredUsername,_that.claims);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String email,  String? displayName,  String? givenName,  String? surname,  String? preferredUsername,  Map<String, dynamic>? claims)  $default,) {final _that = this;
switch (_that) {
case _AuthUserProfile():
return $default(_that.id,_that.email,_that.displayName,_that.givenName,_that.surname,_that.preferredUsername,_that.claims);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String email,  String? displayName,  String? givenName,  String? surname,  String? preferredUsername,  Map<String, dynamic>? claims)?  $default,) {final _that = this;
switch (_that) {
case _AuthUserProfile() when $default != null:
return $default(_that.id,_that.email,_that.displayName,_that.givenName,_that.surname,_that.preferredUsername,_that.claims);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthUserProfile with DiagnosticableTreeMixin implements AuthUserProfile {
  const _AuthUserProfile({required this.id, required this.email, this.displayName, this.givenName, this.surname, this.preferredUsername, final  Map<String, dynamic>? claims}): _claims = claims;
  factory _AuthUserProfile.fromJson(Map<String, dynamic> json) => _$AuthUserProfileFromJson(json);

@override final  String id;
@override final  String email;
@override final  String? displayName;
@override final  String? givenName;
@override final  String? surname;
@override final  String? preferredUsername;
 final  Map<String, dynamic>? _claims;
@override Map<String, dynamic>? get claims {
  final value = _claims;
  if (value == null) return null;
  if (_claims is EqualUnmodifiableMapView) return _claims;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of AuthUserProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthUserProfileCopyWith<_AuthUserProfile> get copyWith => __$AuthUserProfileCopyWithImpl<_AuthUserProfile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthUserProfileToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthUserProfile'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('email', email))..add(DiagnosticsProperty('displayName', displayName))..add(DiagnosticsProperty('givenName', givenName))..add(DiagnosticsProperty('surname', surname))..add(DiagnosticsProperty('preferredUsername', preferredUsername))..add(DiagnosticsProperty('claims', claims));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthUserProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.givenName, givenName) || other.givenName == givenName)&&(identical(other.surname, surname) || other.surname == surname)&&(identical(other.preferredUsername, preferredUsername) || other.preferredUsername == preferredUsername)&&const DeepCollectionEquality().equals(other._claims, _claims));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,displayName,givenName,surname,preferredUsername,const DeepCollectionEquality().hash(_claims));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthUserProfile(id: $id, email: $email, displayName: $displayName, givenName: $givenName, surname: $surname, preferredUsername: $preferredUsername, claims: $claims)';
}


}

/// @nodoc
abstract mixin class _$AuthUserProfileCopyWith<$Res> implements $AuthUserProfileCopyWith<$Res> {
  factory _$AuthUserProfileCopyWith(_AuthUserProfile value, $Res Function(_AuthUserProfile) _then) = __$AuthUserProfileCopyWithImpl;
@override @useResult
$Res call({
 String id, String email, String? displayName, String? givenName, String? surname, String? preferredUsername, Map<String, dynamic>? claims
});




}
/// @nodoc
class __$AuthUserProfileCopyWithImpl<$Res>
    implements _$AuthUserProfileCopyWith<$Res> {
  __$AuthUserProfileCopyWithImpl(this._self, this._then);

  final _AuthUserProfile _self;
  final $Res Function(_AuthUserProfile) _then;

/// Create a copy of AuthUserProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? displayName = freezed,Object? givenName = freezed,Object? surname = freezed,Object? preferredUsername = freezed,Object? claims = freezed,}) {
  return _then(_AuthUserProfile(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,givenName: freezed == givenName ? _self.givenName : givenName // ignore: cast_nullable_to_non_nullable
as String?,surname: freezed == surname ? _self.surname : surname // ignore: cast_nullable_to_non_nullable
as String?,preferredUsername: freezed == preferredUsername ? _self.preferredUsername : preferredUsername // ignore: cast_nullable_to_non_nullable
as String?,claims: freezed == claims ? _self._claims : claims // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
