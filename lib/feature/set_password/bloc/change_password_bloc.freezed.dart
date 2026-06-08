// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChangePasswordEvent {

 int get idUser; String get mobileNumber; String get newPassword; String get token;
/// Create a copy of ChangePasswordEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangePasswordEventCopyWith<ChangePasswordEvent> get copyWith => _$ChangePasswordEventCopyWithImpl<ChangePasswordEvent>(this as ChangePasswordEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePasswordEvent&&(identical(other.idUser, idUser) || other.idUser == idUser)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,idUser,mobileNumber,newPassword,token);

@override
String toString() {
  return 'ChangePasswordEvent(idUser: $idUser, mobileNumber: $mobileNumber, newPassword: $newPassword, token: $token)';
}


}

/// @nodoc
abstract mixin class $ChangePasswordEventCopyWith<$Res>  {
  factory $ChangePasswordEventCopyWith(ChangePasswordEvent value, $Res Function(ChangePasswordEvent) _then) = _$ChangePasswordEventCopyWithImpl;
@useResult
$Res call({
 int idUser, String mobileNumber, String newPassword, String token
});




}
/// @nodoc
class _$ChangePasswordEventCopyWithImpl<$Res>
    implements $ChangePasswordEventCopyWith<$Res> {
  _$ChangePasswordEventCopyWithImpl(this._self, this._then);

  final ChangePasswordEvent _self;
  final $Res Function(ChangePasswordEvent) _then;

/// Create a copy of ChangePasswordEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idUser = null,Object? mobileNumber = null,Object? newPassword = null,Object? token = null,}) {
  return _then(_self.copyWith(
idUser: null == idUser ? _self.idUser : idUser // ignore: cast_nullable_to_non_nullable
as int,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ChangePasswordEvent].
extension ChangePasswordEventPatterns on ChangePasswordEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ChangePassword value)?  changePassword,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ChangePassword() when changePassword != null:
return changePassword(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ChangePassword value)  changePassword,}){
final _that = this;
switch (_that) {
case ChangePassword():
return changePassword(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ChangePassword value)?  changePassword,}){
final _that = this;
switch (_that) {
case ChangePassword() when changePassword != null:
return changePassword(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int idUser,  String mobileNumber,  String newPassword,  String token)?  changePassword,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ChangePassword() when changePassword != null:
return changePassword(_that.idUser,_that.mobileNumber,_that.newPassword,_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int idUser,  String mobileNumber,  String newPassword,  String token)  changePassword,}) {final _that = this;
switch (_that) {
case ChangePassword():
return changePassword(_that.idUser,_that.mobileNumber,_that.newPassword,_that.token);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int idUser,  String mobileNumber,  String newPassword,  String token)?  changePassword,}) {final _that = this;
switch (_that) {
case ChangePassword() when changePassword != null:
return changePassword(_that.idUser,_that.mobileNumber,_that.newPassword,_that.token);case _:
  return null;

}
}

}

/// @nodoc


class ChangePassword implements ChangePasswordEvent {
  const ChangePassword({required this.idUser, required this.mobileNumber, required this.newPassword, required this.token});
  

@override final  int idUser;
@override final  String mobileNumber;
@override final  String newPassword;
@override final  String token;

/// Create a copy of ChangePasswordEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangePasswordCopyWith<ChangePassword> get copyWith => _$ChangePasswordCopyWithImpl<ChangePassword>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePassword&&(identical(other.idUser, idUser) || other.idUser == idUser)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,idUser,mobileNumber,newPassword,token);

@override
String toString() {
  return 'ChangePasswordEvent.changePassword(idUser: $idUser, mobileNumber: $mobileNumber, newPassword: $newPassword, token: $token)';
}


}

/// @nodoc
abstract mixin class $ChangePasswordCopyWith<$Res> implements $ChangePasswordEventCopyWith<$Res> {
  factory $ChangePasswordCopyWith(ChangePassword value, $Res Function(ChangePassword) _then) = _$ChangePasswordCopyWithImpl;
@override @useResult
$Res call({
 int idUser, String mobileNumber, String newPassword, String token
});




}
/// @nodoc
class _$ChangePasswordCopyWithImpl<$Res>
    implements $ChangePasswordCopyWith<$Res> {
  _$ChangePasswordCopyWithImpl(this._self, this._then);

  final ChangePassword _self;
  final $Res Function(ChangePassword) _then;

/// Create a copy of ChangePasswordEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idUser = null,Object? mobileNumber = null,Object? newPassword = null,Object? token = null,}) {
  return _then(ChangePassword(
idUser: null == idUser ? _self.idUser : idUser // ignore: cast_nullable_to_non_nullable
as int,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ChangePasswordState {

 bool get isPasswordChnaging; bool get isPasswordChangingFailed; bool get isPasswordChangingSucces; ErrorModel get error;
/// Create a copy of ChangePasswordState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangePasswordStateCopyWith<ChangePasswordState> get copyWith => _$ChangePasswordStateCopyWithImpl<ChangePasswordState>(this as ChangePasswordState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePasswordState&&(identical(other.isPasswordChnaging, isPasswordChnaging) || other.isPasswordChnaging == isPasswordChnaging)&&(identical(other.isPasswordChangingFailed, isPasswordChangingFailed) || other.isPasswordChangingFailed == isPasswordChangingFailed)&&(identical(other.isPasswordChangingSucces, isPasswordChangingSucces) || other.isPasswordChangingSucces == isPasswordChangingSucces)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isPasswordChnaging,isPasswordChangingFailed,isPasswordChangingSucces,error);

@override
String toString() {
  return 'ChangePasswordState(isPasswordChnaging: $isPasswordChnaging, isPasswordChangingFailed: $isPasswordChangingFailed, isPasswordChangingSucces: $isPasswordChangingSucces, error: $error)';
}


}

/// @nodoc
abstract mixin class $ChangePasswordStateCopyWith<$Res>  {
  factory $ChangePasswordStateCopyWith(ChangePasswordState value, $Res Function(ChangePasswordState) _then) = _$ChangePasswordStateCopyWithImpl;
@useResult
$Res call({
 bool isPasswordChnaging, bool isPasswordChangingFailed, bool isPasswordChangingSucces, ErrorModel error
});




}
/// @nodoc
class _$ChangePasswordStateCopyWithImpl<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  _$ChangePasswordStateCopyWithImpl(this._self, this._then);

  final ChangePasswordState _self;
  final $Res Function(ChangePasswordState) _then;

/// Create a copy of ChangePasswordState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isPasswordChnaging = null,Object? isPasswordChangingFailed = null,Object? isPasswordChangingSucces = null,Object? error = null,}) {
  return _then(_self.copyWith(
isPasswordChnaging: null == isPasswordChnaging ? _self.isPasswordChnaging : isPasswordChnaging // ignore: cast_nullable_to_non_nullable
as bool,isPasswordChangingFailed: null == isPasswordChangingFailed ? _self.isPasswordChangingFailed : isPasswordChangingFailed // ignore: cast_nullable_to_non_nullable
as bool,isPasswordChangingSucces: null == isPasswordChangingSucces ? _self.isPasswordChangingSucces : isPasswordChangingSucces // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,
  ));
}

}


/// Adds pattern-matching-related methods to [ChangePasswordState].
extension ChangePasswordStatePatterns on ChangePasswordState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChangePasswordState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChangePasswordState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChangePasswordState value)  $default,){
final _that = this;
switch (_that) {
case _ChangePasswordState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChangePasswordState value)?  $default,){
final _that = this;
switch (_that) {
case _ChangePasswordState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isPasswordChnaging,  bool isPasswordChangingFailed,  bool isPasswordChangingSucces,  ErrorModel error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChangePasswordState() when $default != null:
return $default(_that.isPasswordChnaging,_that.isPasswordChangingFailed,_that.isPasswordChangingSucces,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isPasswordChnaging,  bool isPasswordChangingFailed,  bool isPasswordChangingSucces,  ErrorModel error)  $default,) {final _that = this;
switch (_that) {
case _ChangePasswordState():
return $default(_that.isPasswordChnaging,_that.isPasswordChangingFailed,_that.isPasswordChangingSucces,_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isPasswordChnaging,  bool isPasswordChangingFailed,  bool isPasswordChangingSucces,  ErrorModel error)?  $default,) {final _that = this;
switch (_that) {
case _ChangePasswordState() when $default != null:
return $default(_that.isPasswordChnaging,_that.isPasswordChangingFailed,_that.isPasswordChangingSucces,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _ChangePasswordState implements ChangePasswordState {
  const _ChangePasswordState({required this.isPasswordChnaging, required this.isPasswordChangingFailed, required this.isPasswordChangingSucces, required this.error});
  

@override final  bool isPasswordChnaging;
@override final  bool isPasswordChangingFailed;
@override final  bool isPasswordChangingSucces;
@override final  ErrorModel error;

/// Create a copy of ChangePasswordState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangePasswordStateCopyWith<_ChangePasswordState> get copyWith => __$ChangePasswordStateCopyWithImpl<_ChangePasswordState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangePasswordState&&(identical(other.isPasswordChnaging, isPasswordChnaging) || other.isPasswordChnaging == isPasswordChnaging)&&(identical(other.isPasswordChangingFailed, isPasswordChangingFailed) || other.isPasswordChangingFailed == isPasswordChangingFailed)&&(identical(other.isPasswordChangingSucces, isPasswordChangingSucces) || other.isPasswordChangingSucces == isPasswordChangingSucces)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isPasswordChnaging,isPasswordChangingFailed,isPasswordChangingSucces,error);

@override
String toString() {
  return 'ChangePasswordState(isPasswordChnaging: $isPasswordChnaging, isPasswordChangingFailed: $isPasswordChangingFailed, isPasswordChangingSucces: $isPasswordChangingSucces, error: $error)';
}


}

/// @nodoc
abstract mixin class _$ChangePasswordStateCopyWith<$Res> implements $ChangePasswordStateCopyWith<$Res> {
  factory _$ChangePasswordStateCopyWith(_ChangePasswordState value, $Res Function(_ChangePasswordState) _then) = __$ChangePasswordStateCopyWithImpl;
@override @useResult
$Res call({
 bool isPasswordChnaging, bool isPasswordChangingFailed, bool isPasswordChangingSucces, ErrorModel error
});




}
/// @nodoc
class __$ChangePasswordStateCopyWithImpl<$Res>
    implements _$ChangePasswordStateCopyWith<$Res> {
  __$ChangePasswordStateCopyWithImpl(this._self, this._then);

  final _ChangePasswordState _self;
  final $Res Function(_ChangePasswordState) _then;

/// Create a copy of ChangePasswordState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isPasswordChnaging = null,Object? isPasswordChangingFailed = null,Object? isPasswordChangingSucces = null,Object? error = null,}) {
  return _then(_ChangePasswordState(
isPasswordChnaging: null == isPasswordChnaging ? _self.isPasswordChnaging : isPasswordChnaging // ignore: cast_nullable_to_non_nullable
as bool,isPasswordChangingFailed: null == isPasswordChangingFailed ? _self.isPasswordChangingFailed : isPasswordChangingFailed // ignore: cast_nullable_to_non_nullable
as bool,isPasswordChangingSucces: null == isPasswordChangingSucces ? _self.isPasswordChangingSucces : isPasswordChangingSucces // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,
  ));
}


}

// dart format on
