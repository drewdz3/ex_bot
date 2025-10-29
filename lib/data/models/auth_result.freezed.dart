// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthResult implements DiagnosticableTreeMixin {

 String get accessToken; String? get refreshToken; String? get idToken; List<String> get scopes; DateTime? get accessTokenExpirationDateTime; Map<String, dynamic>? get additionalParameters;
/// Create a copy of AuthResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthResultCopyWith<AuthResult> get copyWith => _$AuthResultCopyWithImpl<AuthResult>(this as AuthResult, _$identity);

  /// Serializes this AuthResult to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthResult'))
    ..add(DiagnosticsProperty('accessToken', accessToken))..add(DiagnosticsProperty('refreshToken', refreshToken))..add(DiagnosticsProperty('idToken', idToken))..add(DiagnosticsProperty('scopes', scopes))..add(DiagnosticsProperty('accessTokenExpirationDateTime', accessTokenExpirationDateTime))..add(DiagnosticsProperty('additionalParameters', additionalParameters));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthResult&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.idToken, idToken) || other.idToken == idToken)&&const DeepCollectionEquality().equals(other.scopes, scopes)&&(identical(other.accessTokenExpirationDateTime, accessTokenExpirationDateTime) || other.accessTokenExpirationDateTime == accessTokenExpirationDateTime)&&const DeepCollectionEquality().equals(other.additionalParameters, additionalParameters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken,idToken,const DeepCollectionEquality().hash(scopes),accessTokenExpirationDateTime,const DeepCollectionEquality().hash(additionalParameters));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthResult(accessToken: $accessToken, refreshToken: $refreshToken, idToken: $idToken, scopes: $scopes, accessTokenExpirationDateTime: $accessTokenExpirationDateTime, additionalParameters: $additionalParameters)';
}


}

/// @nodoc
abstract mixin class $AuthResultCopyWith<$Res>  {
  factory $AuthResultCopyWith(AuthResult value, $Res Function(AuthResult) _then) = _$AuthResultCopyWithImpl;
@useResult
$Res call({
 String accessToken, String? refreshToken, String? idToken, List<String> scopes, DateTime? accessTokenExpirationDateTime, Map<String, dynamic>? additionalParameters
});




}
/// @nodoc
class _$AuthResultCopyWithImpl<$Res>
    implements $AuthResultCopyWith<$Res> {
  _$AuthResultCopyWithImpl(this._self, this._then);

  final AuthResult _self;
  final $Res Function(AuthResult) _then;

/// Create a copy of AuthResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = null,Object? refreshToken = freezed,Object? idToken = freezed,Object? scopes = null,Object? accessTokenExpirationDateTime = freezed,Object? additionalParameters = freezed,}) {
  return _then(_self.copyWith(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,idToken: freezed == idToken ? _self.idToken : idToken // ignore: cast_nullable_to_non_nullable
as String?,scopes: null == scopes ? _self.scopes : scopes // ignore: cast_nullable_to_non_nullable
as List<String>,accessTokenExpirationDateTime: freezed == accessTokenExpirationDateTime ? _self.accessTokenExpirationDateTime : accessTokenExpirationDateTime // ignore: cast_nullable_to_non_nullable
as DateTime?,additionalParameters: freezed == additionalParameters ? _self.additionalParameters : additionalParameters // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AuthResult with DiagnosticableTreeMixin implements AuthResult {
  const _AuthResult({required this.accessToken, this.refreshToken, this.idToken, required final  List<String> scopes, this.accessTokenExpirationDateTime, final  Map<String, dynamic>? additionalParameters}): _scopes = scopes,_additionalParameters = additionalParameters;
  factory _AuthResult.fromJson(Map<String, dynamic> json) => _$AuthResultFromJson(json);

@override final  String accessToken;
@override final  String? refreshToken;
@override final  String? idToken;
 final  List<String> _scopes;
@override List<String> get scopes {
  if (_scopes is EqualUnmodifiableListView) return _scopes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_scopes);
}

@override final  DateTime? accessTokenExpirationDateTime;
 final  Map<String, dynamic>? _additionalParameters;
@override Map<String, dynamic>? get additionalParameters {
  final value = _additionalParameters;
  if (value == null) return null;
  if (_additionalParameters is EqualUnmodifiableMapView) return _additionalParameters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of AuthResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthResultCopyWith<_AuthResult> get copyWith => __$AuthResultCopyWithImpl<_AuthResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthResultToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthResult'))
    ..add(DiagnosticsProperty('accessToken', accessToken))..add(DiagnosticsProperty('refreshToken', refreshToken))..add(DiagnosticsProperty('idToken', idToken))..add(DiagnosticsProperty('scopes', scopes))..add(DiagnosticsProperty('accessTokenExpirationDateTime', accessTokenExpirationDateTime))..add(DiagnosticsProperty('additionalParameters', additionalParameters));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthResult&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.idToken, idToken) || other.idToken == idToken)&&const DeepCollectionEquality().equals(other._scopes, _scopes)&&(identical(other.accessTokenExpirationDateTime, accessTokenExpirationDateTime) || other.accessTokenExpirationDateTime == accessTokenExpirationDateTime)&&const DeepCollectionEquality().equals(other._additionalParameters, _additionalParameters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken,idToken,const DeepCollectionEquality().hash(_scopes),accessTokenExpirationDateTime,const DeepCollectionEquality().hash(_additionalParameters));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthResult(accessToken: $accessToken, refreshToken: $refreshToken, idToken: $idToken, scopes: $scopes, accessTokenExpirationDateTime: $accessTokenExpirationDateTime, additionalParameters: $additionalParameters)';
}


}

/// @nodoc
abstract mixin class _$AuthResultCopyWith<$Res> implements $AuthResultCopyWith<$Res> {
  factory _$AuthResultCopyWith(_AuthResult value, $Res Function(_AuthResult) _then) = __$AuthResultCopyWithImpl;
@override @useResult
$Res call({
 String accessToken, String? refreshToken, String? idToken, List<String> scopes, DateTime? accessTokenExpirationDateTime, Map<String, dynamic>? additionalParameters
});




}
/// @nodoc
class __$AuthResultCopyWithImpl<$Res>
    implements _$AuthResultCopyWith<$Res> {
  __$AuthResultCopyWithImpl(this._self, this._then);

  final _AuthResult _self;
  final $Res Function(_AuthResult) _then;

/// Create a copy of AuthResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = null,Object? refreshToken = freezed,Object? idToken = freezed,Object? scopes = null,Object? accessTokenExpirationDateTime = freezed,Object? additionalParameters = freezed,}) {
  return _then(_AuthResult(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,idToken: freezed == idToken ? _self.idToken : idToken // ignore: cast_nullable_to_non_nullable
as String?,scopes: null == scopes ? _self._scopes : scopes // ignore: cast_nullable_to_non_nullable
as List<String>,accessTokenExpirationDateTime: freezed == accessTokenExpirationDateTime ? _self.accessTokenExpirationDateTime : accessTokenExpirationDateTime // ignore: cast_nullable_to_non_nullable
as DateTime?,additionalParameters: freezed == additionalParameters ? _self._additionalParameters : additionalParameters // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
