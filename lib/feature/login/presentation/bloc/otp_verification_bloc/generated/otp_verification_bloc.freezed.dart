// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../otp_verification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OtpVerificationEvent {

 String get mobileNumber; String get idOtp; String get otp;
/// Create a copy of OtpVerificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtpVerificationEventCopyWith<OtpVerificationEvent> get copyWith => _$OtpVerificationEventCopyWithImpl<OtpVerificationEvent>(this as OtpVerificationEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpVerificationEvent&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.idOtp, idOtp) || other.idOtp == idOtp)&&(identical(other.otp, otp) || other.otp == otp));
}


@override
int get hashCode => Object.hash(runtimeType,mobileNumber,idOtp,otp);

@override
String toString() {
  return 'OtpVerificationEvent(mobileNumber: $mobileNumber, idOtp: $idOtp, otp: $otp)';
}


}

/// @nodoc
abstract mixin class $OtpVerificationEventCopyWith<$Res>  {
  factory $OtpVerificationEventCopyWith(OtpVerificationEvent value, $Res Function(OtpVerificationEvent) _then) = _$OtpVerificationEventCopyWithImpl;
@useResult
$Res call({
 String mobileNumber, String idOtp, String otp
});




}
/// @nodoc
class _$OtpVerificationEventCopyWithImpl<$Res>
    implements $OtpVerificationEventCopyWith<$Res> {
  _$OtpVerificationEventCopyWithImpl(this._self, this._then);

  final OtpVerificationEvent _self;
  final $Res Function(OtpVerificationEvent) _then;

/// Create a copy of OtpVerificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mobileNumber = null,Object? idOtp = null,Object? otp = null,}) {
  return _then(_self.copyWith(
mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,idOtp: null == idOtp ? _self.idOtp : idOtp // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [OtpVerificationEvent].
extension OtpVerificationEventPatterns on OtpVerificationEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( VerifyOtp value)?  verifyOtp,required TResult orElse(),}){
final _that = this;
switch (_that) {
case VerifyOtp() when verifyOtp != null:
return verifyOtp(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( VerifyOtp value)  verifyOtp,}){
final _that = this;
switch (_that) {
case VerifyOtp():
return verifyOtp(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( VerifyOtp value)?  verifyOtp,}){
final _that = this;
switch (_that) {
case VerifyOtp() when verifyOtp != null:
return verifyOtp(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String mobileNumber,  String idOtp,  String otp)?  verifyOtp,required TResult orElse(),}) {final _that = this;
switch (_that) {
case VerifyOtp() when verifyOtp != null:
return verifyOtp(_that.mobileNumber,_that.idOtp,_that.otp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String mobileNumber,  String idOtp,  String otp)  verifyOtp,}) {final _that = this;
switch (_that) {
case VerifyOtp():
return verifyOtp(_that.mobileNumber,_that.idOtp,_that.otp);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String mobileNumber,  String idOtp,  String otp)?  verifyOtp,}) {final _that = this;
switch (_that) {
case VerifyOtp() when verifyOtp != null:
return verifyOtp(_that.mobileNumber,_that.idOtp,_that.otp);case _:
  return null;

}
}

}

/// @nodoc


class VerifyOtp implements OtpVerificationEvent {
  const VerifyOtp({required this.mobileNumber, required this.idOtp, required this.otp});
  

@override final  String mobileNumber;
@override final  String idOtp;
@override final  String otp;

/// Create a copy of OtpVerificationEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyOtpCopyWith<VerifyOtp> get copyWith => _$VerifyOtpCopyWithImpl<VerifyOtp>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyOtp&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.idOtp, idOtp) || other.idOtp == idOtp)&&(identical(other.otp, otp) || other.otp == otp));
}


@override
int get hashCode => Object.hash(runtimeType,mobileNumber,idOtp,otp);

@override
String toString() {
  return 'OtpVerificationEvent.verifyOtp(mobileNumber: $mobileNumber, idOtp: $idOtp, otp: $otp)';
}


}

/// @nodoc
abstract mixin class $VerifyOtpCopyWith<$Res> implements $OtpVerificationEventCopyWith<$Res> {
  factory $VerifyOtpCopyWith(VerifyOtp value, $Res Function(VerifyOtp) _then) = _$VerifyOtpCopyWithImpl;
@override @useResult
$Res call({
 String mobileNumber, String idOtp, String otp
});




}
/// @nodoc
class _$VerifyOtpCopyWithImpl<$Res>
    implements $VerifyOtpCopyWith<$Res> {
  _$VerifyOtpCopyWithImpl(this._self, this._then);

  final VerifyOtp _self;
  final $Res Function(VerifyOtp) _then;

/// Create a copy of OtpVerificationEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mobileNumber = null,Object? idOtp = null,Object? otp = null,}) {
  return _then(VerifyOtp(
mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,idOtp: null == idOtp ? _self.idOtp : idOtp // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$OtpVerificationState {

 bool get isVerifying; bool get isVerifyingFailed; bool get isVerifyingSuccess; User? get user; ErrorModel get error;
/// Create a copy of OtpVerificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtpVerificationStateCopyWith<OtpVerificationState> get copyWith => _$OtpVerificationStateCopyWithImpl<OtpVerificationState>(this as OtpVerificationState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpVerificationState&&(identical(other.isVerifying, isVerifying) || other.isVerifying == isVerifying)&&(identical(other.isVerifyingFailed, isVerifyingFailed) || other.isVerifyingFailed == isVerifyingFailed)&&(identical(other.isVerifyingSuccess, isVerifyingSuccess) || other.isVerifyingSuccess == isVerifyingSuccess)&&(identical(other.user, user) || other.user == user)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isVerifying,isVerifyingFailed,isVerifyingSuccess,user,error);

@override
String toString() {
  return 'OtpVerificationState(isVerifying: $isVerifying, isVerifyingFailed: $isVerifyingFailed, isVerifyingSuccess: $isVerifyingSuccess, user: $user, error: $error)';
}


}

/// @nodoc
abstract mixin class $OtpVerificationStateCopyWith<$Res>  {
  factory $OtpVerificationStateCopyWith(OtpVerificationState value, $Res Function(OtpVerificationState) _then) = _$OtpVerificationStateCopyWithImpl;
@useResult
$Res call({
 bool isVerifying, bool isVerifyingFailed, bool isVerifyingSuccess, User? user, ErrorModel error
});


$UserCopyWith<$Res>? get user;

}
/// @nodoc
class _$OtpVerificationStateCopyWithImpl<$Res>
    implements $OtpVerificationStateCopyWith<$Res> {
  _$OtpVerificationStateCopyWithImpl(this._self, this._then);

  final OtpVerificationState _self;
  final $Res Function(OtpVerificationState) _then;

/// Create a copy of OtpVerificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isVerifying = null,Object? isVerifyingFailed = null,Object? isVerifyingSuccess = null,Object? user = freezed,Object? error = null,}) {
  return _then(_self.copyWith(
isVerifying: null == isVerifying ? _self.isVerifying : isVerifying // ignore: cast_nullable_to_non_nullable
as bool,isVerifyingFailed: null == isVerifyingFailed ? _self.isVerifyingFailed : isVerifyingFailed // ignore: cast_nullable_to_non_nullable
as bool,isVerifyingSuccess: null == isVerifyingSuccess ? _self.isVerifyingSuccess : isVerifyingSuccess // ignore: cast_nullable_to_non_nullable
as bool,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,
  ));
}
/// Create a copy of OtpVerificationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [OtpVerificationState].
extension OtpVerificationStatePatterns on OtpVerificationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OtpVerificationState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OtpVerificationState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OtpVerificationState value)  $default,){
final _that = this;
switch (_that) {
case _OtpVerificationState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OtpVerificationState value)?  $default,){
final _that = this;
switch (_that) {
case _OtpVerificationState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isVerifying,  bool isVerifyingFailed,  bool isVerifyingSuccess,  User? user,  ErrorModel error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OtpVerificationState() when $default != null:
return $default(_that.isVerifying,_that.isVerifyingFailed,_that.isVerifyingSuccess,_that.user,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isVerifying,  bool isVerifyingFailed,  bool isVerifyingSuccess,  User? user,  ErrorModel error)  $default,) {final _that = this;
switch (_that) {
case _OtpVerificationState():
return $default(_that.isVerifying,_that.isVerifyingFailed,_that.isVerifyingSuccess,_that.user,_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isVerifying,  bool isVerifyingFailed,  bool isVerifyingSuccess,  User? user,  ErrorModel error)?  $default,) {final _that = this;
switch (_that) {
case _OtpVerificationState() when $default != null:
return $default(_that.isVerifying,_that.isVerifyingFailed,_that.isVerifyingSuccess,_that.user,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _OtpVerificationState implements OtpVerificationState {
  const _OtpVerificationState({required this.isVerifying, required this.isVerifyingFailed, required this.isVerifyingSuccess, this.user, required this.error});
  

@override final  bool isVerifying;
@override final  bool isVerifyingFailed;
@override final  bool isVerifyingSuccess;
@override final  User? user;
@override final  ErrorModel error;

/// Create a copy of OtpVerificationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtpVerificationStateCopyWith<_OtpVerificationState> get copyWith => __$OtpVerificationStateCopyWithImpl<_OtpVerificationState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OtpVerificationState&&(identical(other.isVerifying, isVerifying) || other.isVerifying == isVerifying)&&(identical(other.isVerifyingFailed, isVerifyingFailed) || other.isVerifyingFailed == isVerifyingFailed)&&(identical(other.isVerifyingSuccess, isVerifyingSuccess) || other.isVerifyingSuccess == isVerifyingSuccess)&&(identical(other.user, user) || other.user == user)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isVerifying,isVerifyingFailed,isVerifyingSuccess,user,error);

@override
String toString() {
  return 'OtpVerificationState(isVerifying: $isVerifying, isVerifyingFailed: $isVerifyingFailed, isVerifyingSuccess: $isVerifyingSuccess, user: $user, error: $error)';
}


}

/// @nodoc
abstract mixin class _$OtpVerificationStateCopyWith<$Res> implements $OtpVerificationStateCopyWith<$Res> {
  factory _$OtpVerificationStateCopyWith(_OtpVerificationState value, $Res Function(_OtpVerificationState) _then) = __$OtpVerificationStateCopyWithImpl;
@override @useResult
$Res call({
 bool isVerifying, bool isVerifyingFailed, bool isVerifyingSuccess, User? user, ErrorModel error
});


@override $UserCopyWith<$Res>? get user;

}
/// @nodoc
class __$OtpVerificationStateCopyWithImpl<$Res>
    implements _$OtpVerificationStateCopyWith<$Res> {
  __$OtpVerificationStateCopyWithImpl(this._self, this._then);

  final _OtpVerificationState _self;
  final $Res Function(_OtpVerificationState) _then;

/// Create a copy of OtpVerificationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isVerifying = null,Object? isVerifyingFailed = null,Object? isVerifyingSuccess = null,Object? user = freezed,Object? error = null,}) {
  return _then(_OtpVerificationState(
isVerifying: null == isVerifying ? _self.isVerifying : isVerifying // ignore: cast_nullable_to_non_nullable
as bool,isVerifyingFailed: null == isVerifyingFailed ? _self.isVerifyingFailed : isVerifyingFailed // ignore: cast_nullable_to_non_nullable
as bool,isVerifyingSuccess: null == isVerifyingSuccess ? _self.isVerifyingSuccess : isVerifyingSuccess // ignore: cast_nullable_to_non_nullable
as bool,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,
  ));
}

/// Create a copy of OtpVerificationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
