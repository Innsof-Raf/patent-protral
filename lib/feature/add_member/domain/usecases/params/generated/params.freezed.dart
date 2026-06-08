// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddMemberParams {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddMemberParams);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddMemberParams()';
}


}

/// @nodoc
class $AddMemberParamsCopyWith<$Res>  {
$AddMemberParamsCopyWith(AddMemberParams _, $Res Function(AddMemberParams) __);
}


/// Adds pattern-matching-related methods to [AddMemberParams].
extension AddMemberParamsPatterns on AddMemberParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetInsurancesParams value)?  getInsurances,TResult Function( _AddMemberAddMemberParams value)?  addMember,TResult Function( _AddMemberUpdateInsuranceParams value)?  updateInsurance,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetInsurancesParams() when getInsurances != null:
return getInsurances(_that);case _AddMemberAddMemberParams() when addMember != null:
return addMember(_that);case _AddMemberUpdateInsuranceParams() when updateInsurance != null:
return updateInsurance(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetInsurancesParams value)  getInsurances,required TResult Function( _AddMemberAddMemberParams value)  addMember,required TResult Function( _AddMemberUpdateInsuranceParams value)  updateInsurance,}){
final _that = this;
switch (_that) {
case _GetInsurancesParams():
return getInsurances(_that);case _AddMemberAddMemberParams():
return addMember(_that);case _AddMemberUpdateInsuranceParams():
return updateInsurance(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetInsurancesParams value)?  getInsurances,TResult? Function( _AddMemberAddMemberParams value)?  addMember,TResult? Function( _AddMemberUpdateInsuranceParams value)?  updateInsurance,}){
final _that = this;
switch (_that) {
case _GetInsurancesParams() when getInsurances != null:
return getInsurances(_that);case _AddMemberAddMemberParams() when addMember != null:
return addMember(_that);case _AddMemberUpdateInsuranceParams() when updateInsurance != null:
return updateInsurance(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String token)?  getInsurances,TResult Function( String accessToken,  String mobileNumber,  String patientName,  String nationalId,  String gender,  DateTime dob,  String? email,  File? profileImage,  int? idInsurance,  String? memberNumber,  DateTime? expireDate,  String? otherInsuranceName)?  addMember,TResult Function( int memberId,  int idInsurance,  String? insuranceName,  String memberNumber,  DateTime expireDate,  String token)?  updateInsurance,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetInsurancesParams() when getInsurances != null:
return getInsurances(_that.token);case _AddMemberAddMemberParams() when addMember != null:
return addMember(_that.accessToken,_that.mobileNumber,_that.patientName,_that.nationalId,_that.gender,_that.dob,_that.email,_that.profileImage,_that.idInsurance,_that.memberNumber,_that.expireDate,_that.otherInsuranceName);case _AddMemberUpdateInsuranceParams() when updateInsurance != null:
return updateInsurance(_that.memberId,_that.idInsurance,_that.insuranceName,_that.memberNumber,_that.expireDate,_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String token)  getInsurances,required TResult Function( String accessToken,  String mobileNumber,  String patientName,  String nationalId,  String gender,  DateTime dob,  String? email,  File? profileImage,  int? idInsurance,  String? memberNumber,  DateTime? expireDate,  String? otherInsuranceName)  addMember,required TResult Function( int memberId,  int idInsurance,  String? insuranceName,  String memberNumber,  DateTime expireDate,  String token)  updateInsurance,}) {final _that = this;
switch (_that) {
case _GetInsurancesParams():
return getInsurances(_that.token);case _AddMemberAddMemberParams():
return addMember(_that.accessToken,_that.mobileNumber,_that.patientName,_that.nationalId,_that.gender,_that.dob,_that.email,_that.profileImage,_that.idInsurance,_that.memberNumber,_that.expireDate,_that.otherInsuranceName);case _AddMemberUpdateInsuranceParams():
return updateInsurance(_that.memberId,_that.idInsurance,_that.insuranceName,_that.memberNumber,_that.expireDate,_that.token);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String token)?  getInsurances,TResult? Function( String accessToken,  String mobileNumber,  String patientName,  String nationalId,  String gender,  DateTime dob,  String? email,  File? profileImage,  int? idInsurance,  String? memberNumber,  DateTime? expireDate,  String? otherInsuranceName)?  addMember,TResult? Function( int memberId,  int idInsurance,  String? insuranceName,  String memberNumber,  DateTime expireDate,  String token)?  updateInsurance,}) {final _that = this;
switch (_that) {
case _GetInsurancesParams() when getInsurances != null:
return getInsurances(_that.token);case _AddMemberAddMemberParams() when addMember != null:
return addMember(_that.accessToken,_that.mobileNumber,_that.patientName,_that.nationalId,_that.gender,_that.dob,_that.email,_that.profileImage,_that.idInsurance,_that.memberNumber,_that.expireDate,_that.otherInsuranceName);case _AddMemberUpdateInsuranceParams() when updateInsurance != null:
return updateInsurance(_that.memberId,_that.idInsurance,_that.insuranceName,_that.memberNumber,_that.expireDate,_that.token);case _:
  return null;

}
}

}

/// @nodoc


class _GetInsurancesParams implements AddMemberParams {
  const _GetInsurancesParams({required this.token});
  

 final  String token;

/// Create a copy of AddMemberParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetInsurancesParamsCopyWith<_GetInsurancesParams> get copyWith => __$GetInsurancesParamsCopyWithImpl<_GetInsurancesParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetInsurancesParams&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,token);

@override
String toString() {
  return 'AddMemberParams.getInsurances(token: $token)';
}


}

/// @nodoc
abstract mixin class _$GetInsurancesParamsCopyWith<$Res> implements $AddMemberParamsCopyWith<$Res> {
  factory _$GetInsurancesParamsCopyWith(_GetInsurancesParams value, $Res Function(_GetInsurancesParams) _then) = __$GetInsurancesParamsCopyWithImpl;
@useResult
$Res call({
 String token
});




}
/// @nodoc
class __$GetInsurancesParamsCopyWithImpl<$Res>
    implements _$GetInsurancesParamsCopyWith<$Res> {
  __$GetInsurancesParamsCopyWithImpl(this._self, this._then);

  final _GetInsurancesParams _self;
  final $Res Function(_GetInsurancesParams) _then;

/// Create a copy of AddMemberParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? token = null,}) {
  return _then(_GetInsurancesParams(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _AddMemberAddMemberParams implements AddMemberParams {
  const _AddMemberAddMemberParams({required this.accessToken, required this.mobileNumber, required this.patientName, required this.nationalId, required this.gender, required this.dob, this.email, this.profileImage, this.idInsurance, this.memberNumber, this.expireDate, this.otherInsuranceName});
  

 final  String accessToken;
 final  String mobileNumber;
 final  String patientName;
 final  String nationalId;
 final  String gender;
 final  DateTime dob;
 final  String? email;
 final  File? profileImage;
 final  int? idInsurance;
 final  String? memberNumber;
 final  DateTime? expireDate;
 final  String? otherInsuranceName;

/// Create a copy of AddMemberParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddMemberAddMemberParamsCopyWith<_AddMemberAddMemberParams> get copyWith => __$AddMemberAddMemberParamsCopyWithImpl<_AddMemberAddMemberParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddMemberAddMemberParams&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.nationalId, nationalId) || other.nationalId == nationalId)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.email, email) || other.email == email)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.idInsurance, idInsurance) || other.idInsurance == idInsurance)&&(identical(other.memberNumber, memberNumber) || other.memberNumber == memberNumber)&&(identical(other.expireDate, expireDate) || other.expireDate == expireDate)&&(identical(other.otherInsuranceName, otherInsuranceName) || other.otherInsuranceName == otherInsuranceName));
}


@override
int get hashCode => Object.hash(runtimeType,accessToken,mobileNumber,patientName,nationalId,gender,dob,email,profileImage,idInsurance,memberNumber,expireDate,otherInsuranceName);

@override
String toString() {
  return 'AddMemberParams.addMember(accessToken: $accessToken, mobileNumber: $mobileNumber, patientName: $patientName, nationalId: $nationalId, gender: $gender, dob: $dob, email: $email, profileImage: $profileImage, idInsurance: $idInsurance, memberNumber: $memberNumber, expireDate: $expireDate, otherInsuranceName: $otherInsuranceName)';
}


}

/// @nodoc
abstract mixin class _$AddMemberAddMemberParamsCopyWith<$Res> implements $AddMemberParamsCopyWith<$Res> {
  factory _$AddMemberAddMemberParamsCopyWith(_AddMemberAddMemberParams value, $Res Function(_AddMemberAddMemberParams) _then) = __$AddMemberAddMemberParamsCopyWithImpl;
@useResult
$Res call({
 String accessToken, String mobileNumber, String patientName, String nationalId, String gender, DateTime dob, String? email, File? profileImage, int? idInsurance, String? memberNumber, DateTime? expireDate, String? otherInsuranceName
});




}
/// @nodoc
class __$AddMemberAddMemberParamsCopyWithImpl<$Res>
    implements _$AddMemberAddMemberParamsCopyWith<$Res> {
  __$AddMemberAddMemberParamsCopyWithImpl(this._self, this._then);

  final _AddMemberAddMemberParams _self;
  final $Res Function(_AddMemberAddMemberParams) _then;

/// Create a copy of AddMemberParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? accessToken = null,Object? mobileNumber = null,Object? patientName = null,Object? nationalId = null,Object? gender = null,Object? dob = null,Object? email = freezed,Object? profileImage = freezed,Object? idInsurance = freezed,Object? memberNumber = freezed,Object? expireDate = freezed,Object? otherInsuranceName = freezed,}) {
  return _then(_AddMemberAddMemberParams(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,nationalId: null == nationalId ? _self.nationalId : nationalId // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,dob: null == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as DateTime,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as File?,idInsurance: freezed == idInsurance ? _self.idInsurance : idInsurance // ignore: cast_nullable_to_non_nullable
as int?,memberNumber: freezed == memberNumber ? _self.memberNumber : memberNumber // ignore: cast_nullable_to_non_nullable
as String?,expireDate: freezed == expireDate ? _self.expireDate : expireDate // ignore: cast_nullable_to_non_nullable
as DateTime?,otherInsuranceName: freezed == otherInsuranceName ? _self.otherInsuranceName : otherInsuranceName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _AddMemberUpdateInsuranceParams implements AddMemberParams {
  const _AddMemberUpdateInsuranceParams({required this.memberId, required this.idInsurance, required this.insuranceName, required this.memberNumber, required this.expireDate, required this.token});
  

 final  int memberId;
 final  int idInsurance;
 final  String? insuranceName;
 final  String memberNumber;
 final  DateTime expireDate;
 final  String token;

/// Create a copy of AddMemberParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddMemberUpdateInsuranceParamsCopyWith<_AddMemberUpdateInsuranceParams> get copyWith => __$AddMemberUpdateInsuranceParamsCopyWithImpl<_AddMemberUpdateInsuranceParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddMemberUpdateInsuranceParams&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.idInsurance, idInsurance) || other.idInsurance == idInsurance)&&(identical(other.insuranceName, insuranceName) || other.insuranceName == insuranceName)&&(identical(other.memberNumber, memberNumber) || other.memberNumber == memberNumber)&&(identical(other.expireDate, expireDate) || other.expireDate == expireDate)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,memberId,idInsurance,insuranceName,memberNumber,expireDate,token);

@override
String toString() {
  return 'AddMemberParams.updateInsurance(memberId: $memberId, idInsurance: $idInsurance, insuranceName: $insuranceName, memberNumber: $memberNumber, expireDate: $expireDate, token: $token)';
}


}

/// @nodoc
abstract mixin class _$AddMemberUpdateInsuranceParamsCopyWith<$Res> implements $AddMemberParamsCopyWith<$Res> {
  factory _$AddMemberUpdateInsuranceParamsCopyWith(_AddMemberUpdateInsuranceParams value, $Res Function(_AddMemberUpdateInsuranceParams) _then) = __$AddMemberUpdateInsuranceParamsCopyWithImpl;
@useResult
$Res call({
 int memberId, int idInsurance, String? insuranceName, String memberNumber, DateTime expireDate, String token
});




}
/// @nodoc
class __$AddMemberUpdateInsuranceParamsCopyWithImpl<$Res>
    implements _$AddMemberUpdateInsuranceParamsCopyWith<$Res> {
  __$AddMemberUpdateInsuranceParamsCopyWithImpl(this._self, this._then);

  final _AddMemberUpdateInsuranceParams _self;
  final $Res Function(_AddMemberUpdateInsuranceParams) _then;

/// Create a copy of AddMemberParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? memberId = null,Object? idInsurance = null,Object? insuranceName = freezed,Object? memberNumber = null,Object? expireDate = null,Object? token = null,}) {
  return _then(_AddMemberUpdateInsuranceParams(
memberId: null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as int,idInsurance: null == idInsurance ? _self.idInsurance : idInsurance // ignore: cast_nullable_to_non_nullable
as int,insuranceName: freezed == insuranceName ? _self.insuranceName : insuranceName // ignore: cast_nullable_to_non_nullable
as String?,memberNumber: null == memberNumber ? _self.memberNumber : memberNumber // ignore: cast_nullable_to_non_nullable
as String,expireDate: null == expireDate ? _self.expireDate : expireDate // ignore: cast_nullable_to_non_nullable
as DateTime,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
