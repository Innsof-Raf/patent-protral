// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../notification_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationParams {

@JsonKey(includeToJson: false) String get token;@JsonKey(name: 'mobile_no') String get mobileNumber;
/// Create a copy of NotificationParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationParamsCopyWith<NotificationParams> get copyWith => _$NotificationParamsCopyWithImpl<NotificationParams>(this as NotificationParams, _$identity);

  /// Serializes this NotificationParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationParams&&(identical(other.token, token) || other.token == token)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,mobileNumber);

@override
String toString() {
  return 'NotificationParams(token: $token, mobileNumber: $mobileNumber)';
}


}

/// @nodoc
abstract mixin class $NotificationParamsCopyWith<$Res>  {
  factory $NotificationParamsCopyWith(NotificationParams value, $Res Function(NotificationParams) _then) = _$NotificationParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeToJson: false) String token,@JsonKey(name: 'mobile_no') String mobileNumber
});




}
/// @nodoc
class _$NotificationParamsCopyWithImpl<$Res>
    implements $NotificationParamsCopyWith<$Res> {
  _$NotificationParamsCopyWithImpl(this._self, this._then);

  final NotificationParams _self;
  final $Res Function(NotificationParams) _then;

/// Create a copy of NotificationParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,Object? mobileNumber = null,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationParams].
extension NotificationParamsPatterns on NotificationParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationParams value)  $default,){
final _that = this;
switch (_that) {
case _NotificationParams():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationParams value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeToJson: false)  String token, @JsonKey(name: 'mobile_no')  String mobileNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationParams() when $default != null:
return $default(_that.token,_that.mobileNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeToJson: false)  String token, @JsonKey(name: 'mobile_no')  String mobileNumber)  $default,) {final _that = this;
switch (_that) {
case _NotificationParams():
return $default(_that.token,_that.mobileNumber);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeToJson: false)  String token, @JsonKey(name: 'mobile_no')  String mobileNumber)?  $default,) {final _that = this;
switch (_that) {
case _NotificationParams() when $default != null:
return $default(_that.token,_that.mobileNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationParams extends NotificationParams {
  const _NotificationParams({@JsonKey(includeToJson: false) required this.token, @JsonKey(name: 'mobile_no') required this.mobileNumber}): super._();
  factory _NotificationParams.fromJson(Map<String, dynamic> json) => _$NotificationParamsFromJson(json);

@override@JsonKey(includeToJson: false) final  String token;
@override@JsonKey(name: 'mobile_no') final  String mobileNumber;

/// Create a copy of NotificationParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationParamsCopyWith<_NotificationParams> get copyWith => __$NotificationParamsCopyWithImpl<_NotificationParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationParams&&(identical(other.token, token) || other.token == token)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,mobileNumber);

@override
String toString() {
  return 'NotificationParams(token: $token, mobileNumber: $mobileNumber)';
}


}

/// @nodoc
abstract mixin class _$NotificationParamsCopyWith<$Res> implements $NotificationParamsCopyWith<$Res> {
  factory _$NotificationParamsCopyWith(_NotificationParams value, $Res Function(_NotificationParams) _then) = __$NotificationParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeToJson: false) String token,@JsonKey(name: 'mobile_no') String mobileNumber
});




}
/// @nodoc
class __$NotificationParamsCopyWithImpl<$Res>
    implements _$NotificationParamsCopyWith<$Res> {
  __$NotificationParamsCopyWithImpl(this._self, this._then);

  final _NotificationParams _self;
  final $Res Function(_NotificationParams) _then;

/// Create a copy of NotificationParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? mobileNumber = null,}) {
  return _then(_NotificationParams(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
