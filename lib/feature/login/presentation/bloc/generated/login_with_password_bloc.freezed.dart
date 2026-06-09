// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../login_with_password_bloc/login_with_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginWithPasswordEvent {

 String get mobileNumber; String get password;
/// Create a copy of LoginWithPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginWithPasswordEventCopyWith<LoginWithPasswordEvent> get copyWith => _$LoginWithPasswordEventCopyWithImpl<LoginWithPasswordEvent>(this as LoginWithPasswordEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginWithPasswordEvent&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,mobileNumber,password);

@override
String toString() {
  return 'LoginWithPasswordEvent(mobileNumber: $mobileNumber, password: $password)';
}


}

/// @nodoc
abstract mixin class $LoginWithPasswordEventCopyWith<$Res>  {
  factory $LoginWithPasswordEventCopyWith(LoginWithPasswordEvent value, $Res Function(LoginWithPasswordEvent) _then) = _$LoginWithPasswordEventCopyWithImpl;
@useResult
$Res call({
 String mobileNumber, String password
});




}
/// @nodoc
class _$LoginWithPasswordEventCopyWithImpl<$Res>
    implements $LoginWithPasswordEventCopyWith<$Res> {
  _$LoginWithPasswordEventCopyWithImpl(this._self, this._then);

  final LoginWithPasswordEvent _self;
  final $Res Function(LoginWithPasswordEvent) _then;

/// Create a copy of LoginWithPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mobileNumber = null,Object? password = null,}) {
  return _then(_self.copyWith(
mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginWithPasswordEvent].
extension LoginWithPasswordEventPatterns on LoginWithPasswordEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoginWithPassword value)?  loginWithPassword,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoginWithPassword() when loginWithPassword != null:
return loginWithPassword(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoginWithPassword value)  loginWithPassword,}){
final _that = this;
switch (_that) {
case LoginWithPassword():
return loginWithPassword(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoginWithPassword value)?  loginWithPassword,}){
final _that = this;
switch (_that) {
case LoginWithPassword() when loginWithPassword != null:
return loginWithPassword(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String mobileNumber,  String password)?  loginWithPassword,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoginWithPassword() when loginWithPassword != null:
return loginWithPassword(_that.mobileNumber,_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String mobileNumber,  String password)  loginWithPassword,}) {final _that = this;
switch (_that) {
case LoginWithPassword():
return loginWithPassword(_that.mobileNumber,_that.password);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String mobileNumber,  String password)?  loginWithPassword,}) {final _that = this;
switch (_that) {
case LoginWithPassword() when loginWithPassword != null:
return loginWithPassword(_that.mobileNumber,_that.password);case _:
  return null;

}
}

}

/// @nodoc


class LoginWithPassword implements LoginWithPasswordEvent {
  const LoginWithPassword({required this.mobileNumber, required this.password});
  

@override final  String mobileNumber;
@override final  String password;

/// Create a copy of LoginWithPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginWithPasswordCopyWith<LoginWithPassword> get copyWith => _$LoginWithPasswordCopyWithImpl<LoginWithPassword>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginWithPassword&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,mobileNumber,password);

@override
String toString() {
  return 'LoginWithPasswordEvent.loginWithPassword(mobileNumber: $mobileNumber, password: $password)';
}


}

/// @nodoc
abstract mixin class $LoginWithPasswordCopyWith<$Res> implements $LoginWithPasswordEventCopyWith<$Res> {
  factory $LoginWithPasswordCopyWith(LoginWithPassword value, $Res Function(LoginWithPassword) _then) = _$LoginWithPasswordCopyWithImpl;
@override @useResult
$Res call({
 String mobileNumber, String password
});




}
/// @nodoc
class _$LoginWithPasswordCopyWithImpl<$Res>
    implements $LoginWithPasswordCopyWith<$Res> {
  _$LoginWithPasswordCopyWithImpl(this._self, this._then);

  final LoginWithPassword _self;
  final $Res Function(LoginWithPassword) _then;

/// Create a copy of LoginWithPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mobileNumber = null,Object? password = null,}) {
  return _then(LoginWithPassword(
mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$LoginWithPasswordState {

 bool get isLogingin; bool get isLoginFailed; bool get isLoginSucces; ErrorModel get error; UserModel? get user;
/// Create a copy of LoginWithPasswordState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginWithPasswordStateCopyWith<LoginWithPasswordState> get copyWith => _$LoginWithPasswordStateCopyWithImpl<LoginWithPasswordState>(this as LoginWithPasswordState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginWithPasswordState&&(identical(other.isLogingin, isLogingin) || other.isLogingin == isLogingin)&&(identical(other.isLoginFailed, isLoginFailed) || other.isLoginFailed == isLoginFailed)&&(identical(other.isLoginSucces, isLoginSucces) || other.isLoginSucces == isLoginSucces)&&(identical(other.error, error) || other.error == error)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,isLogingin,isLoginFailed,isLoginSucces,error,user);

@override
String toString() {
  return 'LoginWithPasswordState(isLogingin: $isLogingin, isLoginFailed: $isLoginFailed, isLoginSucces: $isLoginSucces, error: $error, user: $user)';
}


}

/// @nodoc
abstract mixin class $LoginWithPasswordStateCopyWith<$Res>  {
  factory $LoginWithPasswordStateCopyWith(LoginWithPasswordState value, $Res Function(LoginWithPasswordState) _then) = _$LoginWithPasswordStateCopyWithImpl;
@useResult
$Res call({
 bool isLogingin, bool isLoginFailed, bool isLoginSucces, ErrorModel error, UserModel? user
});


$UserModelCopyWith<$Res>? get user;

}
/// @nodoc
class _$LoginWithPasswordStateCopyWithImpl<$Res>
    implements $LoginWithPasswordStateCopyWith<$Res> {
  _$LoginWithPasswordStateCopyWithImpl(this._self, this._then);

  final LoginWithPasswordState _self;
  final $Res Function(LoginWithPasswordState) _then;

/// Create a copy of LoginWithPasswordState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLogingin = null,Object? isLoginFailed = null,Object? isLoginSucces = null,Object? error = null,Object? user = freezed,}) {
  return _then(_self.copyWith(
isLogingin: null == isLogingin ? _self.isLogingin : isLogingin // ignore: cast_nullable_to_non_nullable
as bool,isLoginFailed: null == isLoginFailed ? _self.isLoginFailed : isLoginFailed // ignore: cast_nullable_to_non_nullable
as bool,isLoginSucces: null == isLoginSucces ? _self.isLoginSucces : isLoginSucces // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel?,
  ));
}
/// Create a copy of LoginWithPasswordState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserModelCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginWithPasswordState].
extension LoginWithPasswordStatePatterns on LoginWithPasswordState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginWithPasswordState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginWithPasswordState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginWithPasswordState value)  $default,){
final _that = this;
switch (_that) {
case _LoginWithPasswordState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginWithPasswordState value)?  $default,){
final _that = this;
switch (_that) {
case _LoginWithPasswordState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLogingin,  bool isLoginFailed,  bool isLoginSucces,  ErrorModel error,  UserModel? user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginWithPasswordState() when $default != null:
return $default(_that.isLogingin,_that.isLoginFailed,_that.isLoginSucces,_that.error,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLogingin,  bool isLoginFailed,  bool isLoginSucces,  ErrorModel error,  UserModel? user)  $default,) {final _that = this;
switch (_that) {
case _LoginWithPasswordState():
return $default(_that.isLogingin,_that.isLoginFailed,_that.isLoginSucces,_that.error,_that.user);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLogingin,  bool isLoginFailed,  bool isLoginSucces,  ErrorModel error,  UserModel? user)?  $default,) {final _that = this;
switch (_that) {
case _LoginWithPasswordState() when $default != null:
return $default(_that.isLogingin,_that.isLoginFailed,_that.isLoginSucces,_that.error,_that.user);case _:
  return null;

}
}

}

/// @nodoc


class _LoginWithPasswordState implements LoginWithPasswordState {
  const _LoginWithPasswordState({required this.isLogingin, required this.isLoginFailed, required this.isLoginSucces, required this.error, required this.user});
  

@override final  bool isLogingin;
@override final  bool isLoginFailed;
@override final  bool isLoginSucces;
@override final  ErrorModel error;
@override final  UserModel? user;

/// Create a copy of LoginWithPasswordState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginWithPasswordStateCopyWith<_LoginWithPasswordState> get copyWith => __$LoginWithPasswordStateCopyWithImpl<_LoginWithPasswordState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginWithPasswordState&&(identical(other.isLogingin, isLogingin) || other.isLogingin == isLogingin)&&(identical(other.isLoginFailed, isLoginFailed) || other.isLoginFailed == isLoginFailed)&&(identical(other.isLoginSucces, isLoginSucces) || other.isLoginSucces == isLoginSucces)&&(identical(other.error, error) || other.error == error)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,isLogingin,isLoginFailed,isLoginSucces,error,user);

@override
String toString() {
  return 'LoginWithPasswordState(isLogingin: $isLogingin, isLoginFailed: $isLoginFailed, isLoginSucces: $isLoginSucces, error: $error, user: $user)';
}


}

/// @nodoc
abstract mixin class _$LoginWithPasswordStateCopyWith<$Res> implements $LoginWithPasswordStateCopyWith<$Res> {
  factory _$LoginWithPasswordStateCopyWith(_LoginWithPasswordState value, $Res Function(_LoginWithPasswordState) _then) = __$LoginWithPasswordStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLogingin, bool isLoginFailed, bool isLoginSucces, ErrorModel error, UserModel? user
});


@override $UserModelCopyWith<$Res>? get user;

}
/// @nodoc
class __$LoginWithPasswordStateCopyWithImpl<$Res>
    implements _$LoginWithPasswordStateCopyWith<$Res> {
  __$LoginWithPasswordStateCopyWithImpl(this._self, this._then);

  final _LoginWithPasswordState _self;
  final $Res Function(_LoginWithPasswordState) _then;

/// Create a copy of LoginWithPasswordState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLogingin = null,Object? isLoginFailed = null,Object? isLoginSucces = null,Object? error = null,Object? user = freezed,}) {
  return _then(_LoginWithPasswordState(
isLogingin: null == isLogingin ? _self.isLogingin : isLogingin // ignore: cast_nullable_to_non_nullable
as bool,isLoginFailed: null == isLoginFailed ? _self.isLoginFailed : isLoginFailed // ignore: cast_nullable_to_non_nullable
as bool,isLoginSucces: null == isLoginSucces ? _self.isLoginSucces : isLoginSucces // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel?,
  ));
}

/// Create a copy of LoginWithPasswordState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserModelCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
