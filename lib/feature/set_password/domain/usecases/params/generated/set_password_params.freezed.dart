// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../set_password_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SetPasswordParams {

 int get idUser; String get mobileNumber; String get newPassword; String get token;
/// Create a copy of SetPasswordParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetPasswordParamsCopyWith<SetPasswordParams> get copyWith => _$SetPasswordParamsCopyWithImpl<SetPasswordParams>(this as SetPasswordParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetPasswordParams&&(identical(other.idUser, idUser) || other.idUser == idUser)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,idUser,mobileNumber,newPassword,token);

@override
String toString() {
  return 'SetPasswordParams(idUser: $idUser, mobileNumber: $mobileNumber, newPassword: $newPassword, token: $token)';
}


}

/// @nodoc
abstract mixin class $SetPasswordParamsCopyWith<$Res>  {
  factory $SetPasswordParamsCopyWith(SetPasswordParams value, $Res Function(SetPasswordParams) _then) = _$SetPasswordParamsCopyWithImpl;
@useResult
$Res call({
 int idUser, String mobileNumber, String newPassword, String token
});




}
/// @nodoc
class _$SetPasswordParamsCopyWithImpl<$Res>
    implements $SetPasswordParamsCopyWith<$Res> {
  _$SetPasswordParamsCopyWithImpl(this._self, this._then);

  final SetPasswordParams _self;
  final $Res Function(SetPasswordParams) _then;

/// Create a copy of SetPasswordParams
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


/// Adds pattern-matching-related methods to [SetPasswordParams].
extension SetPasswordParamsPatterns on SetPasswordParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ChangePasswordParams value)?  changePassword,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ChangePasswordParams() when changePassword != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ChangePasswordParams value)  changePassword,}){
final _that = this;
switch (_that) {
case ChangePasswordParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ChangePasswordParams value)?  changePassword,}){
final _that = this;
switch (_that) {
case ChangePasswordParams() when changePassword != null:
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
case ChangePasswordParams() when changePassword != null:
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
case ChangePasswordParams():
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
case ChangePasswordParams() when changePassword != null:
return changePassword(_that.idUser,_that.mobileNumber,_that.newPassword,_that.token);case _:
  return null;

}
}

}

/// @nodoc


class ChangePasswordParams implements SetPasswordParams {
  const ChangePasswordParams({required this.idUser, required this.mobileNumber, required this.newPassword, required this.token});
  

@override final  int idUser;
@override final  String mobileNumber;
@override final  String newPassword;
@override final  String token;

/// Create a copy of SetPasswordParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangePasswordParamsCopyWith<ChangePasswordParams> get copyWith => _$ChangePasswordParamsCopyWithImpl<ChangePasswordParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePasswordParams&&(identical(other.idUser, idUser) || other.idUser == idUser)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,idUser,mobileNumber,newPassword,token);

@override
String toString() {
  return 'SetPasswordParams.changePassword(idUser: $idUser, mobileNumber: $mobileNumber, newPassword: $newPassword, token: $token)';
}


}

/// @nodoc
abstract mixin class $ChangePasswordParamsCopyWith<$Res> implements $SetPasswordParamsCopyWith<$Res> {
  factory $ChangePasswordParamsCopyWith(ChangePasswordParams value, $Res Function(ChangePasswordParams) _then) = _$ChangePasswordParamsCopyWithImpl;
@override @useResult
$Res call({
 int idUser, String mobileNumber, String newPassword, String token
});




}
/// @nodoc
class _$ChangePasswordParamsCopyWithImpl<$Res>
    implements $ChangePasswordParamsCopyWith<$Res> {
  _$ChangePasswordParamsCopyWithImpl(this._self, this._then);

  final ChangePasswordParams _self;
  final $Res Function(ChangePasswordParams) _then;

/// Create a copy of SetPasswordParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idUser = null,Object? mobileNumber = null,Object? newPassword = null,Object? token = null,}) {
  return _then(ChangePasswordParams(
idUser: null == idUser ? _self.idUser : idUser // ignore: cast_nullable_to_non_nullable
as int,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
