// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../otp_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OtpResponse {

 bool get showPasswordSection; String get otp;
/// Create a copy of OtpResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtpResponseCopyWith<OtpResponse> get copyWith => _$OtpResponseCopyWithImpl<OtpResponse>(this as OtpResponse, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpResponse&&(identical(other.showPasswordSection, showPasswordSection) || other.showPasswordSection == showPasswordSection)&&(identical(other.otp, otp) || other.otp == otp));
}


@override
int get hashCode => Object.hash(runtimeType,showPasswordSection,otp);

@override
String toString() {
  return 'OtpResponse(showPasswordSection: $showPasswordSection, otp: $otp)';
}


}

/// @nodoc
abstract mixin class $OtpResponseCopyWith<$Res>  {
  factory $OtpResponseCopyWith(OtpResponse value, $Res Function(OtpResponse) _then) = _$OtpResponseCopyWithImpl;
@useResult
$Res call({
 bool showPasswordSection, String otp
});




}
/// @nodoc
class _$OtpResponseCopyWithImpl<$Res>
    implements $OtpResponseCopyWith<$Res> {
  _$OtpResponseCopyWithImpl(this._self, this._then);

  final OtpResponse _self;
  final $Res Function(OtpResponse) _then;

/// Create a copy of OtpResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? showPasswordSection = null,Object? otp = null,}) {
  return _then(_self.copyWith(
showPasswordSection: null == showPasswordSection ? _self.showPasswordSection : showPasswordSection // ignore: cast_nullable_to_non_nullable
as bool,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [OtpResponse].
extension OtpResponsePatterns on OtpResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OtpResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OtpResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OtpResponse value)  $default,){
final _that = this;
switch (_that) {
case _OtpResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OtpResponse value)?  $default,){
final _that = this;
switch (_that) {
case _OtpResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool showPasswordSection,  String otp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OtpResponse() when $default != null:
return $default(_that.showPasswordSection,_that.otp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool showPasswordSection,  String otp)  $default,) {final _that = this;
switch (_that) {
case _OtpResponse():
return $default(_that.showPasswordSection,_that.otp);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool showPasswordSection,  String otp)?  $default,) {final _that = this;
switch (_that) {
case _OtpResponse() when $default != null:
return $default(_that.showPasswordSection,_that.otp);case _:
  return null;

}
}

}

/// @nodoc


class _OtpResponse implements OtpResponse {
  const _OtpResponse({required this.showPasswordSection, required this.otp});
  

@override final  bool showPasswordSection;
@override final  String otp;

/// Create a copy of OtpResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtpResponseCopyWith<_OtpResponse> get copyWith => __$OtpResponseCopyWithImpl<_OtpResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OtpResponse&&(identical(other.showPasswordSection, showPasswordSection) || other.showPasswordSection == showPasswordSection)&&(identical(other.otp, otp) || other.otp == otp));
}


@override
int get hashCode => Object.hash(runtimeType,showPasswordSection,otp);

@override
String toString() {
  return 'OtpResponse(showPasswordSection: $showPasswordSection, otp: $otp)';
}


}

/// @nodoc
abstract mixin class _$OtpResponseCopyWith<$Res> implements $OtpResponseCopyWith<$Res> {
  factory _$OtpResponseCopyWith(_OtpResponse value, $Res Function(_OtpResponse) _then) = __$OtpResponseCopyWithImpl;
@override @useResult
$Res call({
 bool showPasswordSection, String otp
});




}
/// @nodoc
class __$OtpResponseCopyWithImpl<$Res>
    implements _$OtpResponseCopyWith<$Res> {
  __$OtpResponseCopyWithImpl(this._self, this._then);

  final _OtpResponse _self;
  final $Res Function(_OtpResponse) _then;

/// Create a copy of OtpResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? showPasswordSection = null,Object? otp = null,}) {
  return _then(_OtpResponse(
showPasswordSection: null == showPasswordSection ? _self.showPasswordSection : showPasswordSection // ignore: cast_nullable_to_non_nullable
as bool,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
