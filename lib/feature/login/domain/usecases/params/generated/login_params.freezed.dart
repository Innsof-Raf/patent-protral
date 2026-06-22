// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../login_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
LoginParams _$LoginParamsFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'generateOtp':
          return GenerateOtpParams.fromJson(
            json
          );
                case 'verifyOtp':
          return VerifyOtpParams.fromJson(
            json
          );
                case 'loginWithPassword':
          return LoginWithPasswordParams.fromJson(
            json
          );
                case 'refreshToken':
          return RefreshTokenParams.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'LoginParams',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$LoginParams {

@JsonKey(name: 'mobileNo')@JsonKey(name: 'username')@JsonKey(name: 'MobileNo') String get mobileNumber;
/// Create a copy of LoginParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginParamsCopyWith<LoginParams> get copyWith => _$LoginParamsCopyWithImpl<LoginParams>(this as LoginParams, _$identity);

  /// Serializes this LoginParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginParams&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mobileNumber);

@override
String toString() {
  return 'LoginParams(mobileNumber: $mobileNumber)';
}


}

/// @nodoc
abstract mixin class $LoginParamsCopyWith<$Res>  {
  factory $LoginParamsCopyWith(LoginParams value, $Res Function(LoginParams) _then) = _$LoginParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'mobileNo') String mobileNumber
});




}
/// @nodoc
class _$LoginParamsCopyWithImpl<$Res>
    implements $LoginParamsCopyWith<$Res> {
  _$LoginParamsCopyWithImpl(this._self, this._then);

  final LoginParams _self;
  final $Res Function(LoginParams) _then;

/// Create a copy of LoginParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mobileNumber = null,}) {
  return _then(_self.copyWith(
mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginParams].
extension LoginParamsPatterns on LoginParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GenerateOtpParams value)?  generateOtp,TResult Function( VerifyOtpParams value)?  verifyOtp,TResult Function( LoginWithPasswordParams value)?  loginWithPassword,TResult Function( RefreshTokenParams value)?  refreshToken,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GenerateOtpParams() when generateOtp != null:
return generateOtp(_that);case VerifyOtpParams() when verifyOtp != null:
return verifyOtp(_that);case LoginWithPasswordParams() when loginWithPassword != null:
return loginWithPassword(_that);case RefreshTokenParams() when refreshToken != null:
return refreshToken(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GenerateOtpParams value)  generateOtp,required TResult Function( VerifyOtpParams value)  verifyOtp,required TResult Function( LoginWithPasswordParams value)  loginWithPassword,required TResult Function( RefreshTokenParams value)  refreshToken,}){
final _that = this;
switch (_that) {
case GenerateOtpParams():
return generateOtp(_that);case VerifyOtpParams():
return verifyOtp(_that);case LoginWithPasswordParams():
return loginWithPassword(_that);case RefreshTokenParams():
return refreshToken(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GenerateOtpParams value)?  generateOtp,TResult? Function( VerifyOtpParams value)?  verifyOtp,TResult? Function( LoginWithPasswordParams value)?  loginWithPassword,TResult? Function( RefreshTokenParams value)?  refreshToken,}){
final _that = this;
switch (_that) {
case GenerateOtpParams() when generateOtp != null:
return generateOtp(_that);case VerifyOtpParams() when verifyOtp != null:
return verifyOtp(_that);case LoginWithPasswordParams() when loginWithPassword != null:
return loginWithPassword(_that);case RefreshTokenParams() when refreshToken != null:
return refreshToken(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function(@JsonKey(name: 'mobileNo')  String mobileNumber)?  generateOtp,TResult Function(@JsonKey(name: 'id_otp')  String idOtp, @JsonKey(name: 'mobileNo')  String mobileNumber,  String otp)?  verifyOtp,TResult Function(@JsonKey(name: 'username')  String mobileNumber,  String password)?  loginWithPassword,TResult Function(@JsonKey(name: 'Id')  int id, @JsonKey(name: 'MobileNo')  String mobileNumber, @JsonKey(name: 'Token')  String token)?  refreshToken,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GenerateOtpParams() when generateOtp != null:
return generateOtp(_that.mobileNumber);case VerifyOtpParams() when verifyOtp != null:
return verifyOtp(_that.idOtp,_that.mobileNumber,_that.otp);case LoginWithPasswordParams() when loginWithPassword != null:
return loginWithPassword(_that.mobileNumber,_that.password);case RefreshTokenParams() when refreshToken != null:
return refreshToken(_that.id,_that.mobileNumber,_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function(@JsonKey(name: 'mobileNo')  String mobileNumber)  generateOtp,required TResult Function(@JsonKey(name: 'id_otp')  String idOtp, @JsonKey(name: 'mobileNo')  String mobileNumber,  String otp)  verifyOtp,required TResult Function(@JsonKey(name: 'username')  String mobileNumber,  String password)  loginWithPassword,required TResult Function(@JsonKey(name: 'Id')  int id, @JsonKey(name: 'MobileNo')  String mobileNumber, @JsonKey(name: 'Token')  String token)  refreshToken,}) {final _that = this;
switch (_that) {
case GenerateOtpParams():
return generateOtp(_that.mobileNumber);case VerifyOtpParams():
return verifyOtp(_that.idOtp,_that.mobileNumber,_that.otp);case LoginWithPasswordParams():
return loginWithPassword(_that.mobileNumber,_that.password);case RefreshTokenParams():
return refreshToken(_that.id,_that.mobileNumber,_that.token);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function(@JsonKey(name: 'mobileNo')  String mobileNumber)?  generateOtp,TResult? Function(@JsonKey(name: 'id_otp')  String idOtp, @JsonKey(name: 'mobileNo')  String mobileNumber,  String otp)?  verifyOtp,TResult? Function(@JsonKey(name: 'username')  String mobileNumber,  String password)?  loginWithPassword,TResult? Function(@JsonKey(name: 'Id')  int id, @JsonKey(name: 'MobileNo')  String mobileNumber, @JsonKey(name: 'Token')  String token)?  refreshToken,}) {final _that = this;
switch (_that) {
case GenerateOtpParams() when generateOtp != null:
return generateOtp(_that.mobileNumber);case VerifyOtpParams() when verifyOtp != null:
return verifyOtp(_that.idOtp,_that.mobileNumber,_that.otp);case LoginWithPasswordParams() when loginWithPassword != null:
return loginWithPassword(_that.mobileNumber,_that.password);case RefreshTokenParams() when refreshToken != null:
return refreshToken(_that.id,_that.mobileNumber,_that.token);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class GenerateOtpParams implements LoginParams {
  const GenerateOtpParams({@JsonKey(name: 'mobileNo') required this.mobileNumber, final  String? $type}): $type = $type ?? 'generateOtp';
  factory GenerateOtpParams.fromJson(Map<String, dynamic> json) => _$GenerateOtpParamsFromJson(json);

@override@JsonKey(name: 'mobileNo') final  String mobileNumber;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of LoginParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenerateOtpParamsCopyWith<GenerateOtpParams> get copyWith => _$GenerateOtpParamsCopyWithImpl<GenerateOtpParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GenerateOtpParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerateOtpParams&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mobileNumber);

@override
String toString() {
  return 'LoginParams.generateOtp(mobileNumber: $mobileNumber)';
}


}

/// @nodoc
abstract mixin class $GenerateOtpParamsCopyWith<$Res> implements $LoginParamsCopyWith<$Res> {
  factory $GenerateOtpParamsCopyWith(GenerateOtpParams value, $Res Function(GenerateOtpParams) _then) = _$GenerateOtpParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'mobileNo') String mobileNumber
});




}
/// @nodoc
class _$GenerateOtpParamsCopyWithImpl<$Res>
    implements $GenerateOtpParamsCopyWith<$Res> {
  _$GenerateOtpParamsCopyWithImpl(this._self, this._then);

  final GenerateOtpParams _self;
  final $Res Function(GenerateOtpParams) _then;

/// Create a copy of LoginParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mobileNumber = null,}) {
  return _then(GenerateOtpParams(
mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class VerifyOtpParams implements LoginParams {
  const VerifyOtpParams({@JsonKey(name: 'id_otp') required this.idOtp, @JsonKey(name: 'mobileNo') required this.mobileNumber, required this.otp, final  String? $type}): $type = $type ?? 'verifyOtp';
  factory VerifyOtpParams.fromJson(Map<String, dynamic> json) => _$VerifyOtpParamsFromJson(json);

@JsonKey(name: 'id_otp') final  String idOtp;
@override@JsonKey(name: 'mobileNo') final  String mobileNumber;
 final  String otp;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of LoginParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyOtpParamsCopyWith<VerifyOtpParams> get copyWith => _$VerifyOtpParamsCopyWithImpl<VerifyOtpParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VerifyOtpParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyOtpParams&&(identical(other.idOtp, idOtp) || other.idOtp == idOtp)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.otp, otp) || other.otp == otp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idOtp,mobileNumber,otp);

@override
String toString() {
  return 'LoginParams.verifyOtp(idOtp: $idOtp, mobileNumber: $mobileNumber, otp: $otp)';
}


}

/// @nodoc
abstract mixin class $VerifyOtpParamsCopyWith<$Res> implements $LoginParamsCopyWith<$Res> {
  factory $VerifyOtpParamsCopyWith(VerifyOtpParams value, $Res Function(VerifyOtpParams) _then) = _$VerifyOtpParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id_otp') String idOtp,@JsonKey(name: 'mobileNo') String mobileNumber, String otp
});




}
/// @nodoc
class _$VerifyOtpParamsCopyWithImpl<$Res>
    implements $VerifyOtpParamsCopyWith<$Res> {
  _$VerifyOtpParamsCopyWithImpl(this._self, this._then);

  final VerifyOtpParams _self;
  final $Res Function(VerifyOtpParams) _then;

/// Create a copy of LoginParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idOtp = null,Object? mobileNumber = null,Object? otp = null,}) {
  return _then(VerifyOtpParams(
idOtp: null == idOtp ? _self.idOtp : idOtp // ignore: cast_nullable_to_non_nullable
as String,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class LoginWithPasswordParams implements LoginParams {
  const LoginWithPasswordParams({@JsonKey(name: 'username') required this.mobileNumber, required this.password, final  String? $type}): $type = $type ?? 'loginWithPassword';
  factory LoginWithPasswordParams.fromJson(Map<String, dynamic> json) => _$LoginWithPasswordParamsFromJson(json);

@override@JsonKey(name: 'username') final  String mobileNumber;
 final  String password;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of LoginParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginWithPasswordParamsCopyWith<LoginWithPasswordParams> get copyWith => _$LoginWithPasswordParamsCopyWithImpl<LoginWithPasswordParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginWithPasswordParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginWithPasswordParams&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mobileNumber,password);

@override
String toString() {
  return 'LoginParams.loginWithPassword(mobileNumber: $mobileNumber, password: $password)';
}


}

/// @nodoc
abstract mixin class $LoginWithPasswordParamsCopyWith<$Res> implements $LoginParamsCopyWith<$Res> {
  factory $LoginWithPasswordParamsCopyWith(LoginWithPasswordParams value, $Res Function(LoginWithPasswordParams) _then) = _$LoginWithPasswordParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'username') String mobileNumber, String password
});




}
/// @nodoc
class _$LoginWithPasswordParamsCopyWithImpl<$Res>
    implements $LoginWithPasswordParamsCopyWith<$Res> {
  _$LoginWithPasswordParamsCopyWithImpl(this._self, this._then);

  final LoginWithPasswordParams _self;
  final $Res Function(LoginWithPasswordParams) _then;

/// Create a copy of LoginParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mobileNumber = null,Object? password = null,}) {
  return _then(LoginWithPasswordParams(
mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class RefreshTokenParams implements LoginParams {
  const RefreshTokenParams({@JsonKey(name: 'Id') required this.id, @JsonKey(name: 'MobileNo') required this.mobileNumber, @JsonKey(name: 'Token') required this.token, final  String? $type}): $type = $type ?? 'refreshToken';
  factory RefreshTokenParams.fromJson(Map<String, dynamic> json) => _$RefreshTokenParamsFromJson(json);

@JsonKey(name: 'Id') final  int id;
@override@JsonKey(name: 'MobileNo') final  String mobileNumber;
@JsonKey(name: 'Token') final  String token;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of LoginParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefreshTokenParamsCopyWith<RefreshTokenParams> get copyWith => _$RefreshTokenParamsCopyWithImpl<RefreshTokenParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RefreshTokenParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshTokenParams&&(identical(other.id, id) || other.id == id)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,mobileNumber,token);

@override
String toString() {
  return 'LoginParams.refreshToken(id: $id, mobileNumber: $mobileNumber, token: $token)';
}


}

/// @nodoc
abstract mixin class $RefreshTokenParamsCopyWith<$Res> implements $LoginParamsCopyWith<$Res> {
  factory $RefreshTokenParamsCopyWith(RefreshTokenParams value, $Res Function(RefreshTokenParams) _then) = _$RefreshTokenParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Id') int id,@JsonKey(name: 'MobileNo') String mobileNumber,@JsonKey(name: 'Token') String token
});




}
/// @nodoc
class _$RefreshTokenParamsCopyWithImpl<$Res>
    implements $RefreshTokenParamsCopyWith<$Res> {
  _$RefreshTokenParamsCopyWithImpl(this._self, this._then);

  final RefreshTokenParams _self;
  final $Res Function(RefreshTokenParams) _then;

/// Create a copy of LoginParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? mobileNumber = null,Object? token = null,}) {
  return _then(RefreshTokenParams(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
