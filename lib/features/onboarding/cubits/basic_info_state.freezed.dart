// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basic_info_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BasicInfoState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BasicInfoState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BasicInfoState()';
}


}

/// @nodoc
class $BasicInfoStateCopyWith<$Res>  {
$BasicInfoStateCopyWith(BasicInfoState _, $Res Function(BasicInfoState) __);
}


/// Adds pattern-matching-related methods to [BasicInfoState].
extension BasicInfoStatePatterns on BasicInfoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( BasicInfoInitial value)?  initial,TResult Function( BasicInfoLoading value)?  loading,TResult Function( BasicInfoLoaded value)?  loaded,TResult Function( BasicInfoError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case BasicInfoInitial() when initial != null:
return initial(_that);case BasicInfoLoading() when loading != null:
return loading(_that);case BasicInfoLoaded() when loaded != null:
return loaded(_that);case BasicInfoError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( BasicInfoInitial value)  initial,required TResult Function( BasicInfoLoading value)  loading,required TResult Function( BasicInfoLoaded value)  loaded,required TResult Function( BasicInfoError value)  error,}){
final _that = this;
switch (_that) {
case BasicInfoInitial():
return initial(_that);case BasicInfoLoading():
return loading(_that);case BasicInfoLoaded():
return loaded(_that);case BasicInfoError():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( BasicInfoInitial value)?  initial,TResult? Function( BasicInfoLoading value)?  loading,TResult? Function( BasicInfoLoaded value)?  loaded,TResult? Function( BasicInfoError value)?  error,}){
final _that = this;
switch (_that) {
case BasicInfoInitial() when initial != null:
return initial(_that);case BasicInfoLoading() when loading != null:
return loading(_that);case BasicInfoLoaded() when loaded != null:
return loaded(_that);case BasicInfoError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( int? age,  String? gender,  int? heightCm,  double? weightKg,  String? fitnessLevel,  bool complete)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case BasicInfoInitial() when initial != null:
return initial();case BasicInfoLoading() when loading != null:
return loading();case BasicInfoLoaded() when loaded != null:
return loaded(_that.age,_that.gender,_that.heightCm,_that.weightKg,_that.fitnessLevel,_that.complete);case BasicInfoError() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( int? age,  String? gender,  int? heightCm,  double? weightKg,  String? fitnessLevel,  bool complete)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case BasicInfoInitial():
return initial();case BasicInfoLoading():
return loading();case BasicInfoLoaded():
return loaded(_that.age,_that.gender,_that.heightCm,_that.weightKg,_that.fitnessLevel,_that.complete);case BasicInfoError():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( int? age,  String? gender,  int? heightCm,  double? weightKg,  String? fitnessLevel,  bool complete)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case BasicInfoInitial() when initial != null:
return initial();case BasicInfoLoading() when loading != null:
return loading();case BasicInfoLoaded() when loaded != null:
return loaded(_that.age,_that.gender,_that.heightCm,_that.weightKg,_that.fitnessLevel,_that.complete);case BasicInfoError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class BasicInfoInitial implements BasicInfoState {
  const BasicInfoInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BasicInfoInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BasicInfoState.initial()';
}


}




/// @nodoc


class BasicInfoLoading implements BasicInfoState {
  const BasicInfoLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BasicInfoLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BasicInfoState.loading()';
}


}




/// @nodoc


class BasicInfoLoaded implements BasicInfoState {
  const BasicInfoLoaded({this.age, this.gender, this.heightCm, this.weightKg, this.fitnessLevel, this.complete = false});
  

 final  int? age;
 final  String? gender;
 final  int? heightCm;
 final  double? weightKg;
 final  String? fitnessLevel;
@JsonKey() final  bool complete;

/// Create a copy of BasicInfoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BasicInfoLoadedCopyWith<BasicInfoLoaded> get copyWith => _$BasicInfoLoadedCopyWithImpl<BasicInfoLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BasicInfoLoaded&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.heightCm, heightCm) || other.heightCm == heightCm)&&(identical(other.weightKg, weightKg) || other.weightKg == weightKg)&&(identical(other.fitnessLevel, fitnessLevel) || other.fitnessLevel == fitnessLevel)&&(identical(other.complete, complete) || other.complete == complete));
}


@override
int get hashCode => Object.hash(runtimeType,age,gender,heightCm,weightKg,fitnessLevel,complete);

@override
String toString() {
  return 'BasicInfoState.loaded(age: $age, gender: $gender, heightCm: $heightCm, weightKg: $weightKg, fitnessLevel: $fitnessLevel, complete: $complete)';
}


}

/// @nodoc
abstract mixin class $BasicInfoLoadedCopyWith<$Res> implements $BasicInfoStateCopyWith<$Res> {
  factory $BasicInfoLoadedCopyWith(BasicInfoLoaded value, $Res Function(BasicInfoLoaded) _then) = _$BasicInfoLoadedCopyWithImpl;
@useResult
$Res call({
 int? age, String? gender, int? heightCm, double? weightKg, String? fitnessLevel, bool complete
});




}
/// @nodoc
class _$BasicInfoLoadedCopyWithImpl<$Res>
    implements $BasicInfoLoadedCopyWith<$Res> {
  _$BasicInfoLoadedCopyWithImpl(this._self, this._then);

  final BasicInfoLoaded _self;
  final $Res Function(BasicInfoLoaded) _then;

/// Create a copy of BasicInfoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? age = freezed,Object? gender = freezed,Object? heightCm = freezed,Object? weightKg = freezed,Object? fitnessLevel = freezed,Object? complete = null,}) {
  return _then(BasicInfoLoaded(
age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,heightCm: freezed == heightCm ? _self.heightCm : heightCm // ignore: cast_nullable_to_non_nullable
as int?,weightKg: freezed == weightKg ? _self.weightKg : weightKg // ignore: cast_nullable_to_non_nullable
as double?,fitnessLevel: freezed == fitnessLevel ? _self.fitnessLevel : fitnessLevel // ignore: cast_nullable_to_non_nullable
as String?,complete: null == complete ? _self.complete : complete // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class BasicInfoError implements BasicInfoState {
  const BasicInfoError(this.message);
  

 final  String message;

/// Create a copy of BasicInfoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BasicInfoErrorCopyWith<BasicInfoError> get copyWith => _$BasicInfoErrorCopyWithImpl<BasicInfoError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BasicInfoError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'BasicInfoState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $BasicInfoErrorCopyWith<$Res> implements $BasicInfoStateCopyWith<$Res> {
  factory $BasicInfoErrorCopyWith(BasicInfoError value, $Res Function(BasicInfoError) _then) = _$BasicInfoErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$BasicInfoErrorCopyWithImpl<$Res>
    implements $BasicInfoErrorCopyWith<$Res> {
  _$BasicInfoErrorCopyWithImpl(this._self, this._then);

  final BasicInfoError _self;
  final $Res Function(BasicInfoError) _then;

/// Create a copy of BasicInfoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(BasicInfoError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
