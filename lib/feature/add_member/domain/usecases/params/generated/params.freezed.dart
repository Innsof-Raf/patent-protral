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



  /// Serializes this AddMemberParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddMemberParams);
}

@JsonKey(includeFromJson: false, includeToJson: false)
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function(@JsonKey(includeToJson: false)  String token)?  getInsurances,TResult Function(@JsonKey(includeToJson: false)  String accessToken, @JsonKey(name: 'mobile_no')  String mobileNumber, @JsonKey(name: 'customer_name')  String patientName, @JsonKey(name: 'national_id')  String nationalId,  String gender,  DateTime dob,  String? email, @JsonKey(includeToJson: false, includeFromJson: false)  File? profileImage, @JsonKey(name: 'id_insurance')  int? idInsurance, @JsonKey(name: 'member_no')  String? memberNumber, @JsonKey(name: 'expiry_dt')  DateTime? expireDate, @JsonKey(name: 'others')  String? otherInsuranceName, @JsonKey(name: 'id_customer')  int idCustomer, @JsonKey(name: 'customer_id')  String customerId, @JsonKey(name: 'id_setid')  int idSetid, @JsonKey(name: 'customer_status')  String customerStatus, @JsonKey(name: 'customer_type')  String customerType)?  addMember,TResult Function(@JsonKey(name: 'id_customer')  int memberId, @JsonKey(name: 'id_insurance')  int idInsurance, @JsonKey(name: 'insurance_name')  String? insuranceName, @JsonKey(name: 'member_number')  String memberNumber, @JsonKey(name: 'expire_date')  DateTime expireDate, @JsonKey(includeToJson: false)  String token)?  updateInsurance,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetInsurancesParams() when getInsurances != null:
return getInsurances(_that.token);case _AddMemberAddMemberParams() when addMember != null:
return addMember(_that.accessToken,_that.mobileNumber,_that.patientName,_that.nationalId,_that.gender,_that.dob,_that.email,_that.profileImage,_that.idInsurance,_that.memberNumber,_that.expireDate,_that.otherInsuranceName,_that.idCustomer,_that.customerId,_that.idSetid,_that.customerStatus,_that.customerType);case _AddMemberUpdateInsuranceParams() when updateInsurance != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function(@JsonKey(includeToJson: false)  String token)  getInsurances,required TResult Function(@JsonKey(includeToJson: false)  String accessToken, @JsonKey(name: 'mobile_no')  String mobileNumber, @JsonKey(name: 'customer_name')  String patientName, @JsonKey(name: 'national_id')  String nationalId,  String gender,  DateTime dob,  String? email, @JsonKey(includeToJson: false, includeFromJson: false)  File? profileImage, @JsonKey(name: 'id_insurance')  int? idInsurance, @JsonKey(name: 'member_no')  String? memberNumber, @JsonKey(name: 'expiry_dt')  DateTime? expireDate, @JsonKey(name: 'others')  String? otherInsuranceName, @JsonKey(name: 'id_customer')  int idCustomer, @JsonKey(name: 'customer_id')  String customerId, @JsonKey(name: 'id_setid')  int idSetid, @JsonKey(name: 'customer_status')  String customerStatus, @JsonKey(name: 'customer_type')  String customerType)  addMember,required TResult Function(@JsonKey(name: 'id_customer')  int memberId, @JsonKey(name: 'id_insurance')  int idInsurance, @JsonKey(name: 'insurance_name')  String? insuranceName, @JsonKey(name: 'member_number')  String memberNumber, @JsonKey(name: 'expire_date')  DateTime expireDate, @JsonKey(includeToJson: false)  String token)  updateInsurance,}) {final _that = this;
switch (_that) {
case _GetInsurancesParams():
return getInsurances(_that.token);case _AddMemberAddMemberParams():
return addMember(_that.accessToken,_that.mobileNumber,_that.patientName,_that.nationalId,_that.gender,_that.dob,_that.email,_that.profileImage,_that.idInsurance,_that.memberNumber,_that.expireDate,_that.otherInsuranceName,_that.idCustomer,_that.customerId,_that.idSetid,_that.customerStatus,_that.customerType);case _AddMemberUpdateInsuranceParams():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function(@JsonKey(includeToJson: false)  String token)?  getInsurances,TResult? Function(@JsonKey(includeToJson: false)  String accessToken, @JsonKey(name: 'mobile_no')  String mobileNumber, @JsonKey(name: 'customer_name')  String patientName, @JsonKey(name: 'national_id')  String nationalId,  String gender,  DateTime dob,  String? email, @JsonKey(includeToJson: false, includeFromJson: false)  File? profileImage, @JsonKey(name: 'id_insurance')  int? idInsurance, @JsonKey(name: 'member_no')  String? memberNumber, @JsonKey(name: 'expiry_dt')  DateTime? expireDate, @JsonKey(name: 'others')  String? otherInsuranceName, @JsonKey(name: 'id_customer')  int idCustomer, @JsonKey(name: 'customer_id')  String customerId, @JsonKey(name: 'id_setid')  int idSetid, @JsonKey(name: 'customer_status')  String customerStatus, @JsonKey(name: 'customer_type')  String customerType)?  addMember,TResult? Function(@JsonKey(name: 'id_customer')  int memberId, @JsonKey(name: 'id_insurance')  int idInsurance, @JsonKey(name: 'insurance_name')  String? insuranceName, @JsonKey(name: 'member_number')  String memberNumber, @JsonKey(name: 'expire_date')  DateTime expireDate, @JsonKey(includeToJson: false)  String token)?  updateInsurance,}) {final _that = this;
switch (_that) {
case _GetInsurancesParams() when getInsurances != null:
return getInsurances(_that.token);case _AddMemberAddMemberParams() when addMember != null:
return addMember(_that.accessToken,_that.mobileNumber,_that.patientName,_that.nationalId,_that.gender,_that.dob,_that.email,_that.profileImage,_that.idInsurance,_that.memberNumber,_that.expireDate,_that.otherInsuranceName,_that.idCustomer,_that.customerId,_that.idSetid,_that.customerStatus,_that.customerType);case _AddMemberUpdateInsuranceParams() when updateInsurance != null:
return updateInsurance(_that.memberId,_that.idInsurance,_that.insuranceName,_that.memberNumber,_that.expireDate,_that.token);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createFactory: false)

class _GetInsurancesParams implements AddMemberParams {
  const _GetInsurancesParams({@JsonKey(includeToJson: false) required this.token, final  String? $type}): $type = $type ?? 'getInsurances';
  

@JsonKey(includeToJson: false) final  String token;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of AddMemberParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetInsurancesParamsCopyWith<_GetInsurancesParams> get copyWith => __$GetInsurancesParamsCopyWithImpl<_GetInsurancesParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetInsurancesParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetInsurancesParams&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
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
@JsonKey(includeToJson: false) String token
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
@JsonSerializable(createFactory: false)

class _AddMemberAddMemberParams implements AddMemberParams {
  const _AddMemberAddMemberParams({@JsonKey(includeToJson: false) required this.accessToken, @JsonKey(name: 'mobile_no') required this.mobileNumber, @JsonKey(name: 'customer_name') required this.patientName, @JsonKey(name: 'national_id') required this.nationalId, required this.gender, required this.dob, this.email, @JsonKey(includeToJson: false, includeFromJson: false) this.profileImage, @JsonKey(name: 'id_insurance') this.idInsurance, @JsonKey(name: 'member_no') this.memberNumber, @JsonKey(name: 'expiry_dt') this.expireDate, @JsonKey(name: 'others') this.otherInsuranceName, @JsonKey(name: 'id_customer') this.idCustomer = 0, @JsonKey(name: 'customer_id') this.customerId = 'New', @JsonKey(name: 'id_setid') this.idSetid = 4, @JsonKey(name: 'customer_status') this.customerStatus = 'ACTIVE', @JsonKey(name: 'customer_type') this.customerType = 'PATIENT', final  String? $type}): $type = $type ?? 'addMember';
  

@JsonKey(includeToJson: false) final  String accessToken;
@JsonKey(name: 'mobile_no') final  String mobileNumber;
@JsonKey(name: 'customer_name') final  String patientName;
@JsonKey(name: 'national_id') final  String nationalId;
 final  String gender;
 final  DateTime dob;
 final  String? email;
@JsonKey(includeToJson: false, includeFromJson: false) final  File? profileImage;
@JsonKey(name: 'id_insurance') final  int? idInsurance;
@JsonKey(name: 'member_no') final  String? memberNumber;
@JsonKey(name: 'expiry_dt') final  DateTime? expireDate;
@JsonKey(name: 'others') final  String? otherInsuranceName;
@JsonKey(name: 'id_customer') final  int idCustomer;
@JsonKey(name: 'customer_id') final  String customerId;
@JsonKey(name: 'id_setid') final  int idSetid;
@JsonKey(name: 'customer_status') final  String customerStatus;
@JsonKey(name: 'customer_type') final  String customerType;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of AddMemberParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddMemberAddMemberParamsCopyWith<_AddMemberAddMemberParams> get copyWith => __$AddMemberAddMemberParamsCopyWithImpl<_AddMemberAddMemberParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddMemberAddMemberParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddMemberAddMemberParams&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.nationalId, nationalId) || other.nationalId == nationalId)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.email, email) || other.email == email)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.idInsurance, idInsurance) || other.idInsurance == idInsurance)&&(identical(other.memberNumber, memberNumber) || other.memberNumber == memberNumber)&&(identical(other.expireDate, expireDate) || other.expireDate == expireDate)&&(identical(other.otherInsuranceName, otherInsuranceName) || other.otherInsuranceName == otherInsuranceName)&&(identical(other.idCustomer, idCustomer) || other.idCustomer == idCustomer)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.idSetid, idSetid) || other.idSetid == idSetid)&&(identical(other.customerStatus, customerStatus) || other.customerStatus == customerStatus)&&(identical(other.customerType, customerType) || other.customerType == customerType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,mobileNumber,patientName,nationalId,gender,dob,email,profileImage,idInsurance,memberNumber,expireDate,otherInsuranceName,idCustomer,customerId,idSetid,customerStatus,customerType);

@override
String toString() {
  return 'AddMemberParams.addMember(accessToken: $accessToken, mobileNumber: $mobileNumber, patientName: $patientName, nationalId: $nationalId, gender: $gender, dob: $dob, email: $email, profileImage: $profileImage, idInsurance: $idInsurance, memberNumber: $memberNumber, expireDate: $expireDate, otherInsuranceName: $otherInsuranceName, idCustomer: $idCustomer, customerId: $customerId, idSetid: $idSetid, customerStatus: $customerStatus, customerType: $customerType)';
}


}

/// @nodoc
abstract mixin class _$AddMemberAddMemberParamsCopyWith<$Res> implements $AddMemberParamsCopyWith<$Res> {
  factory _$AddMemberAddMemberParamsCopyWith(_AddMemberAddMemberParams value, $Res Function(_AddMemberAddMemberParams) _then) = __$AddMemberAddMemberParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeToJson: false) String accessToken,@JsonKey(name: 'mobile_no') String mobileNumber,@JsonKey(name: 'customer_name') String patientName,@JsonKey(name: 'national_id') String nationalId, String gender, DateTime dob, String? email,@JsonKey(includeToJson: false, includeFromJson: false) File? profileImage,@JsonKey(name: 'id_insurance') int? idInsurance,@JsonKey(name: 'member_no') String? memberNumber,@JsonKey(name: 'expiry_dt') DateTime? expireDate,@JsonKey(name: 'others') String? otherInsuranceName,@JsonKey(name: 'id_customer') int idCustomer,@JsonKey(name: 'customer_id') String customerId,@JsonKey(name: 'id_setid') int idSetid,@JsonKey(name: 'customer_status') String customerStatus,@JsonKey(name: 'customer_type') String customerType
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
@pragma('vm:prefer-inline') $Res call({Object? accessToken = null,Object? mobileNumber = null,Object? patientName = null,Object? nationalId = null,Object? gender = null,Object? dob = null,Object? email = freezed,Object? profileImage = freezed,Object? idInsurance = freezed,Object? memberNumber = freezed,Object? expireDate = freezed,Object? otherInsuranceName = freezed,Object? idCustomer = null,Object? customerId = null,Object? idSetid = null,Object? customerStatus = null,Object? customerType = null,}) {
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
as String?,idCustomer: null == idCustomer ? _self.idCustomer : idCustomer // ignore: cast_nullable_to_non_nullable
as int,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,idSetid: null == idSetid ? _self.idSetid : idSetid // ignore: cast_nullable_to_non_nullable
as int,customerStatus: null == customerStatus ? _self.customerStatus : customerStatus // ignore: cast_nullable_to_non_nullable
as String,customerType: null == customerType ? _self.customerType : customerType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable(createFactory: false)

class _AddMemberUpdateInsuranceParams implements AddMemberParams {
  const _AddMemberUpdateInsuranceParams({@JsonKey(name: 'id_customer') required this.memberId, @JsonKey(name: 'id_insurance') required this.idInsurance, @JsonKey(name: 'insurance_name') required this.insuranceName, @JsonKey(name: 'member_number') required this.memberNumber, @JsonKey(name: 'expire_date') required this.expireDate, @JsonKey(includeToJson: false) required this.token, final  String? $type}): $type = $type ?? 'updateInsurance';
  

@JsonKey(name: 'id_customer') final  int memberId;
@JsonKey(name: 'id_insurance') final  int idInsurance;
@JsonKey(name: 'insurance_name') final  String? insuranceName;
@JsonKey(name: 'member_number') final  String memberNumber;
@JsonKey(name: 'expire_date') final  DateTime expireDate;
@JsonKey(includeToJson: false) final  String token;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of AddMemberParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddMemberUpdateInsuranceParamsCopyWith<_AddMemberUpdateInsuranceParams> get copyWith => __$AddMemberUpdateInsuranceParamsCopyWithImpl<_AddMemberUpdateInsuranceParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddMemberUpdateInsuranceParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddMemberUpdateInsuranceParams&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.idInsurance, idInsurance) || other.idInsurance == idInsurance)&&(identical(other.insuranceName, insuranceName) || other.insuranceName == insuranceName)&&(identical(other.memberNumber, memberNumber) || other.memberNumber == memberNumber)&&(identical(other.expireDate, expireDate) || other.expireDate == expireDate)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
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
@JsonKey(name: 'id_customer') int memberId,@JsonKey(name: 'id_insurance') int idInsurance,@JsonKey(name: 'insurance_name') String? insuranceName,@JsonKey(name: 'member_number') String memberNumber,@JsonKey(name: 'expire_date') DateTime expireDate,@JsonKey(includeToJson: false) String token
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
