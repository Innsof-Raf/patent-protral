// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../profile_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileParams {



  /// Serializes this ProfileParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileParams);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileParams()';
}


}

/// @nodoc
class $ProfileParamsCopyWith<$Res>  {
$ProfileParamsCopyWith(ProfileParams _, $Res Function(ProfileParams) __);
}


/// Adds pattern-matching-related methods to [ProfileParams].
extension ProfileParamsPatterns on ProfileParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( StoreUserDetailsParams value)?  storeUserDetails,TResult Function( AddMemberParams value)?  addMember,TResult Function( ChangeMemberInsuranceDetailsParams value)?  changeMemberInsuranceDetails,TResult Function( GetMemberDetailParams value)?  getMemberDetail,TResult Function( AddMemberToLocalParams value)?  addMemberToLocal,TResult Function( UpdateMemberInLocalParams value)?  updateMemberInLocal,required TResult orElse(),}){
final _that = this;
switch (_that) {
case StoreUserDetailsParams() when storeUserDetails != null:
return storeUserDetails(_that);case AddMemberParams() when addMember != null:
return addMember(_that);case ChangeMemberInsuranceDetailsParams() when changeMemberInsuranceDetails != null:
return changeMemberInsuranceDetails(_that);case GetMemberDetailParams() when getMemberDetail != null:
return getMemberDetail(_that);case AddMemberToLocalParams() when addMemberToLocal != null:
return addMemberToLocal(_that);case UpdateMemberInLocalParams() when updateMemberInLocal != null:
return updateMemberInLocal(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( StoreUserDetailsParams value)  storeUserDetails,required TResult Function( AddMemberParams value)  addMember,required TResult Function( ChangeMemberInsuranceDetailsParams value)  changeMemberInsuranceDetails,required TResult Function( GetMemberDetailParams value)  getMemberDetail,required TResult Function( AddMemberToLocalParams value)  addMemberToLocal,required TResult Function( UpdateMemberInLocalParams value)  updateMemberInLocal,}){
final _that = this;
switch (_that) {
case StoreUserDetailsParams():
return storeUserDetails(_that);case AddMemberParams():
return addMember(_that);case ChangeMemberInsuranceDetailsParams():
return changeMemberInsuranceDetails(_that);case GetMemberDetailParams():
return getMemberDetail(_that);case AddMemberToLocalParams():
return addMemberToLocal(_that);case UpdateMemberInLocalParams():
return updateMemberInLocal(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( StoreUserDetailsParams value)?  storeUserDetails,TResult? Function( AddMemberParams value)?  addMember,TResult? Function( ChangeMemberInsuranceDetailsParams value)?  changeMemberInsuranceDetails,TResult? Function( GetMemberDetailParams value)?  getMemberDetail,TResult? Function( AddMemberToLocalParams value)?  addMemberToLocal,TResult? Function( UpdateMemberInLocalParams value)?  updateMemberInLocal,}){
final _that = this;
switch (_that) {
case StoreUserDetailsParams() when storeUserDetails != null:
return storeUserDetails(_that);case AddMemberParams() when addMember != null:
return addMember(_that);case ChangeMemberInsuranceDetailsParams() when changeMemberInsuranceDetails != null:
return changeMemberInsuranceDetails(_that);case GetMemberDetailParams() when getMemberDetail != null:
return getMemberDetail(_that);case AddMemberToLocalParams() when addMemberToLocal != null:
return addMemberToLocal(_that);case UpdateMemberInLocalParams() when updateMemberInLocal != null:
return updateMemberInLocal(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function(@JsonKey(includeToJson: false, includeFromJson: false)  User user)?  storeUserDetails,TResult Function(@JsonKey(includeToJson: false, includeFromJson: false)  User? user,  String patientName,  String nationalId,  String? email,  String? mobileNumber,  String gender,  DateTime dob,  int? idInsurance,  String? memberNumber, @JsonKey(includeToJson: false, includeFromJson: false)  File? profileImage,  DateTime? expireDate,  String? otherInsuranceName)?  addMember,TResult Function(@JsonKey(includeToJson: false)  String? token, @JsonKey(name: 'id_insurance')  int idInsurance, @JsonKey(name: 'id_customer')  int memberId, @JsonKey(name: 'insurance_name')  String? insuranceName, @JsonKey(name: 'member_no')  String memberNumber, @JsonKey(name: 'expiry_dt')  DateTime expireDate)?  changeMemberInsuranceDetails,TResult Function(@JsonKey(name: 'id_customer')  int memberId, @JsonKey(includeToJson: false)  String? token)?  getMemberDetail,TResult Function(@JsonKey(includeToJson: false, includeFromJson: false)  Member member)?  addMemberToLocal,TResult Function(@JsonKey(includeToJson: false, includeFromJson: false)  Member member)?  updateMemberInLocal,required TResult orElse(),}) {final _that = this;
switch (_that) {
case StoreUserDetailsParams() when storeUserDetails != null:
return storeUserDetails(_that.user);case AddMemberParams() when addMember != null:
return addMember(_that.user,_that.patientName,_that.nationalId,_that.email,_that.mobileNumber,_that.gender,_that.dob,_that.idInsurance,_that.memberNumber,_that.profileImage,_that.expireDate,_that.otherInsuranceName);case ChangeMemberInsuranceDetailsParams() when changeMemberInsuranceDetails != null:
return changeMemberInsuranceDetails(_that.token,_that.idInsurance,_that.memberId,_that.insuranceName,_that.memberNumber,_that.expireDate);case GetMemberDetailParams() when getMemberDetail != null:
return getMemberDetail(_that.memberId,_that.token);case AddMemberToLocalParams() when addMemberToLocal != null:
return addMemberToLocal(_that.member);case UpdateMemberInLocalParams() when updateMemberInLocal != null:
return updateMemberInLocal(_that.member);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function(@JsonKey(includeToJson: false, includeFromJson: false)  User user)  storeUserDetails,required TResult Function(@JsonKey(includeToJson: false, includeFromJson: false)  User? user,  String patientName,  String nationalId,  String? email,  String? mobileNumber,  String gender,  DateTime dob,  int? idInsurance,  String? memberNumber, @JsonKey(includeToJson: false, includeFromJson: false)  File? profileImage,  DateTime? expireDate,  String? otherInsuranceName)  addMember,required TResult Function(@JsonKey(includeToJson: false)  String? token, @JsonKey(name: 'id_insurance')  int idInsurance, @JsonKey(name: 'id_customer')  int memberId, @JsonKey(name: 'insurance_name')  String? insuranceName, @JsonKey(name: 'member_no')  String memberNumber, @JsonKey(name: 'expiry_dt')  DateTime expireDate)  changeMemberInsuranceDetails,required TResult Function(@JsonKey(name: 'id_customer')  int memberId, @JsonKey(includeToJson: false)  String? token)  getMemberDetail,required TResult Function(@JsonKey(includeToJson: false, includeFromJson: false)  Member member)  addMemberToLocal,required TResult Function(@JsonKey(includeToJson: false, includeFromJson: false)  Member member)  updateMemberInLocal,}) {final _that = this;
switch (_that) {
case StoreUserDetailsParams():
return storeUserDetails(_that.user);case AddMemberParams():
return addMember(_that.user,_that.patientName,_that.nationalId,_that.email,_that.mobileNumber,_that.gender,_that.dob,_that.idInsurance,_that.memberNumber,_that.profileImage,_that.expireDate,_that.otherInsuranceName);case ChangeMemberInsuranceDetailsParams():
return changeMemberInsuranceDetails(_that.token,_that.idInsurance,_that.memberId,_that.insuranceName,_that.memberNumber,_that.expireDate);case GetMemberDetailParams():
return getMemberDetail(_that.memberId,_that.token);case AddMemberToLocalParams():
return addMemberToLocal(_that.member);case UpdateMemberInLocalParams():
return updateMemberInLocal(_that.member);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function(@JsonKey(includeToJson: false, includeFromJson: false)  User user)?  storeUserDetails,TResult? Function(@JsonKey(includeToJson: false, includeFromJson: false)  User? user,  String patientName,  String nationalId,  String? email,  String? mobileNumber,  String gender,  DateTime dob,  int? idInsurance,  String? memberNumber, @JsonKey(includeToJson: false, includeFromJson: false)  File? profileImage,  DateTime? expireDate,  String? otherInsuranceName)?  addMember,TResult? Function(@JsonKey(includeToJson: false)  String? token, @JsonKey(name: 'id_insurance')  int idInsurance, @JsonKey(name: 'id_customer')  int memberId, @JsonKey(name: 'insurance_name')  String? insuranceName, @JsonKey(name: 'member_no')  String memberNumber, @JsonKey(name: 'expiry_dt')  DateTime expireDate)?  changeMemberInsuranceDetails,TResult? Function(@JsonKey(name: 'id_customer')  int memberId, @JsonKey(includeToJson: false)  String? token)?  getMemberDetail,TResult? Function(@JsonKey(includeToJson: false, includeFromJson: false)  Member member)?  addMemberToLocal,TResult? Function(@JsonKey(includeToJson: false, includeFromJson: false)  Member member)?  updateMemberInLocal,}) {final _that = this;
switch (_that) {
case StoreUserDetailsParams() when storeUserDetails != null:
return storeUserDetails(_that.user);case AddMemberParams() when addMember != null:
return addMember(_that.user,_that.patientName,_that.nationalId,_that.email,_that.mobileNumber,_that.gender,_that.dob,_that.idInsurance,_that.memberNumber,_that.profileImage,_that.expireDate,_that.otherInsuranceName);case ChangeMemberInsuranceDetailsParams() when changeMemberInsuranceDetails != null:
return changeMemberInsuranceDetails(_that.token,_that.idInsurance,_that.memberId,_that.insuranceName,_that.memberNumber,_that.expireDate);case GetMemberDetailParams() when getMemberDetail != null:
return getMemberDetail(_that.memberId,_that.token);case AddMemberToLocalParams() when addMemberToLocal != null:
return addMemberToLocal(_that.member);case UpdateMemberInLocalParams() when updateMemberInLocal != null:
return updateMemberInLocal(_that.member);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createFactory: false)

class StoreUserDetailsParams implements ProfileParams {
  const StoreUserDetailsParams({@JsonKey(includeToJson: false, includeFromJson: false) required this.user, final  String? $type}): $type = $type ?? 'storeUserDetails';
  

@JsonKey(includeToJson: false, includeFromJson: false) final  User user;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ProfileParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreUserDetailsParamsCopyWith<StoreUserDetailsParams> get copyWith => _$StoreUserDetailsParamsCopyWithImpl<StoreUserDetailsParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreUserDetailsParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreUserDetailsParams&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'ProfileParams.storeUserDetails(user: $user)';
}


}

/// @nodoc
abstract mixin class $StoreUserDetailsParamsCopyWith<$Res> implements $ProfileParamsCopyWith<$Res> {
  factory $StoreUserDetailsParamsCopyWith(StoreUserDetailsParams value, $Res Function(StoreUserDetailsParams) _then) = _$StoreUserDetailsParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeToJson: false, includeFromJson: false) User user
});


$UserCopyWith<$Res> get user;

}
/// @nodoc
class _$StoreUserDetailsParamsCopyWithImpl<$Res>
    implements $StoreUserDetailsParamsCopyWith<$Res> {
  _$StoreUserDetailsParamsCopyWithImpl(this._self, this._then);

  final StoreUserDetailsParams _self;
  final $Res Function(StoreUserDetailsParams) _then;

/// Create a copy of ProfileParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(StoreUserDetailsParams(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}

/// Create a copy of ProfileParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc
@JsonSerializable(createFactory: false)

class AddMemberParams implements ProfileParams {
  const AddMemberParams({@JsonKey(includeToJson: false, includeFromJson: false) this.user, required this.patientName, required this.nationalId, this.email, this.mobileNumber, required this.gender, required this.dob, this.idInsurance, this.memberNumber, @JsonKey(includeToJson: false, includeFromJson: false) this.profileImage, this.expireDate, this.otherInsuranceName, final  String? $type}): $type = $type ?? 'addMember';
  

@JsonKey(includeToJson: false, includeFromJson: false) final  User? user;
 final  String patientName;
 final  String nationalId;
 final  String? email;
 final  String? mobileNumber;
 final  String gender;
 final  DateTime dob;
 final  int? idInsurance;
 final  String? memberNumber;
@JsonKey(includeToJson: false, includeFromJson: false) final  File? profileImage;
 final  DateTime? expireDate;
 final  String? otherInsuranceName;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ProfileParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddMemberParamsCopyWith<AddMemberParams> get copyWith => _$AddMemberParamsCopyWithImpl<AddMemberParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddMemberParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddMemberParams&&(identical(other.user, user) || other.user == user)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.nationalId, nationalId) || other.nationalId == nationalId)&&(identical(other.email, email) || other.email == email)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.idInsurance, idInsurance) || other.idInsurance == idInsurance)&&(identical(other.memberNumber, memberNumber) || other.memberNumber == memberNumber)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.expireDate, expireDate) || other.expireDate == expireDate)&&(identical(other.otherInsuranceName, otherInsuranceName) || other.otherInsuranceName == otherInsuranceName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,patientName,nationalId,email,mobileNumber,gender,dob,idInsurance,memberNumber,profileImage,expireDate,otherInsuranceName);

@override
String toString() {
  return 'ProfileParams.addMember(user: $user, patientName: $patientName, nationalId: $nationalId, email: $email, mobileNumber: $mobileNumber, gender: $gender, dob: $dob, idInsurance: $idInsurance, memberNumber: $memberNumber, profileImage: $profileImage, expireDate: $expireDate, otherInsuranceName: $otherInsuranceName)';
}


}

/// @nodoc
abstract mixin class $AddMemberParamsCopyWith<$Res> implements $ProfileParamsCopyWith<$Res> {
  factory $AddMemberParamsCopyWith(AddMemberParams value, $Res Function(AddMemberParams) _then) = _$AddMemberParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeToJson: false, includeFromJson: false) User? user, String patientName, String nationalId, String? email, String? mobileNumber, String gender, DateTime dob, int? idInsurance, String? memberNumber,@JsonKey(includeToJson: false, includeFromJson: false) File? profileImage, DateTime? expireDate, String? otherInsuranceName
});


$UserCopyWith<$Res>? get user;

}
/// @nodoc
class _$AddMemberParamsCopyWithImpl<$Res>
    implements $AddMemberParamsCopyWith<$Res> {
  _$AddMemberParamsCopyWithImpl(this._self, this._then);

  final AddMemberParams _self;
  final $Res Function(AddMemberParams) _then;

/// Create a copy of ProfileParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = freezed,Object? patientName = null,Object? nationalId = null,Object? email = freezed,Object? mobileNumber = freezed,Object? gender = null,Object? dob = null,Object? idInsurance = freezed,Object? memberNumber = freezed,Object? profileImage = freezed,Object? expireDate = freezed,Object? otherInsuranceName = freezed,}) {
  return _then(AddMemberParams(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,nationalId: null == nationalId ? _self.nationalId : nationalId // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,mobileNumber: freezed == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String?,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,dob: null == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as DateTime,idInsurance: freezed == idInsurance ? _self.idInsurance : idInsurance // ignore: cast_nullable_to_non_nullable
as int?,memberNumber: freezed == memberNumber ? _self.memberNumber : memberNumber // ignore: cast_nullable_to_non_nullable
as String?,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as File?,expireDate: freezed == expireDate ? _self.expireDate : expireDate // ignore: cast_nullable_to_non_nullable
as DateTime?,otherInsuranceName: freezed == otherInsuranceName ? _self.otherInsuranceName : otherInsuranceName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ProfileParams
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

/// @nodoc
@JsonSerializable(createFactory: false)

class ChangeMemberInsuranceDetailsParams implements ProfileParams {
  const ChangeMemberInsuranceDetailsParams({@JsonKey(includeToJson: false) this.token, @JsonKey(name: 'id_insurance') required this.idInsurance, @JsonKey(name: 'id_customer') required this.memberId, @JsonKey(name: 'insurance_name') required this.insuranceName, @JsonKey(name: 'member_no') required this.memberNumber, @JsonKey(name: 'expiry_dt') required this.expireDate, final  String? $type}): $type = $type ?? 'changeMemberInsuranceDetails';
  

@JsonKey(includeToJson: false) final  String? token;
@JsonKey(name: 'id_insurance') final  int idInsurance;
@JsonKey(name: 'id_customer') final  int memberId;
@JsonKey(name: 'insurance_name') final  String? insuranceName;
@JsonKey(name: 'member_no') final  String memberNumber;
@JsonKey(name: 'expiry_dt') final  DateTime expireDate;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ProfileParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeMemberInsuranceDetailsParamsCopyWith<ChangeMemberInsuranceDetailsParams> get copyWith => _$ChangeMemberInsuranceDetailsParamsCopyWithImpl<ChangeMemberInsuranceDetailsParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChangeMemberInsuranceDetailsParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeMemberInsuranceDetailsParams&&(identical(other.token, token) || other.token == token)&&(identical(other.idInsurance, idInsurance) || other.idInsurance == idInsurance)&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.insuranceName, insuranceName) || other.insuranceName == insuranceName)&&(identical(other.memberNumber, memberNumber) || other.memberNumber == memberNumber)&&(identical(other.expireDate, expireDate) || other.expireDate == expireDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,idInsurance,memberId,insuranceName,memberNumber,expireDate);

@override
String toString() {
  return 'ProfileParams.changeMemberInsuranceDetails(token: $token, idInsurance: $idInsurance, memberId: $memberId, insuranceName: $insuranceName, memberNumber: $memberNumber, expireDate: $expireDate)';
}


}

/// @nodoc
abstract mixin class $ChangeMemberInsuranceDetailsParamsCopyWith<$Res> implements $ProfileParamsCopyWith<$Res> {
  factory $ChangeMemberInsuranceDetailsParamsCopyWith(ChangeMemberInsuranceDetailsParams value, $Res Function(ChangeMemberInsuranceDetailsParams) _then) = _$ChangeMemberInsuranceDetailsParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeToJson: false) String? token,@JsonKey(name: 'id_insurance') int idInsurance,@JsonKey(name: 'id_customer') int memberId,@JsonKey(name: 'insurance_name') String? insuranceName,@JsonKey(name: 'member_no') String memberNumber,@JsonKey(name: 'expiry_dt') DateTime expireDate
});




}
/// @nodoc
class _$ChangeMemberInsuranceDetailsParamsCopyWithImpl<$Res>
    implements $ChangeMemberInsuranceDetailsParamsCopyWith<$Res> {
  _$ChangeMemberInsuranceDetailsParamsCopyWithImpl(this._self, this._then);

  final ChangeMemberInsuranceDetailsParams _self;
  final $Res Function(ChangeMemberInsuranceDetailsParams) _then;

/// Create a copy of ProfileParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? token = freezed,Object? idInsurance = null,Object? memberId = null,Object? insuranceName = freezed,Object? memberNumber = null,Object? expireDate = null,}) {
  return _then(ChangeMemberInsuranceDetailsParams(
token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,idInsurance: null == idInsurance ? _self.idInsurance : idInsurance // ignore: cast_nullable_to_non_nullable
as int,memberId: null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as int,insuranceName: freezed == insuranceName ? _self.insuranceName : insuranceName // ignore: cast_nullable_to_non_nullable
as String?,memberNumber: null == memberNumber ? _self.memberNumber : memberNumber // ignore: cast_nullable_to_non_nullable
as String,expireDate: null == expireDate ? _self.expireDate : expireDate // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc
@JsonSerializable(createFactory: false)

class GetMemberDetailParams implements ProfileParams {
  const GetMemberDetailParams({@JsonKey(name: 'id_customer') required this.memberId, @JsonKey(includeToJson: false) this.token, final  String? $type}): $type = $type ?? 'getMemberDetail';
  

@JsonKey(name: 'id_customer') final  int memberId;
@JsonKey(includeToJson: false) final  String? token;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ProfileParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetMemberDetailParamsCopyWith<GetMemberDetailParams> get copyWith => _$GetMemberDetailParamsCopyWithImpl<GetMemberDetailParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetMemberDetailParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetMemberDetailParams&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,memberId,token);

@override
String toString() {
  return 'ProfileParams.getMemberDetail(memberId: $memberId, token: $token)';
}


}

/// @nodoc
abstract mixin class $GetMemberDetailParamsCopyWith<$Res> implements $ProfileParamsCopyWith<$Res> {
  factory $GetMemberDetailParamsCopyWith(GetMemberDetailParams value, $Res Function(GetMemberDetailParams) _then) = _$GetMemberDetailParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id_customer') int memberId,@JsonKey(includeToJson: false) String? token
});




}
/// @nodoc
class _$GetMemberDetailParamsCopyWithImpl<$Res>
    implements $GetMemberDetailParamsCopyWith<$Res> {
  _$GetMemberDetailParamsCopyWithImpl(this._self, this._then);

  final GetMemberDetailParams _self;
  final $Res Function(GetMemberDetailParams) _then;

/// Create a copy of ProfileParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? memberId = null,Object? token = freezed,}) {
  return _then(GetMemberDetailParams(
memberId: null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as int,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable(createFactory: false)

class AddMemberToLocalParams implements ProfileParams {
  const AddMemberToLocalParams({@JsonKey(includeToJson: false, includeFromJson: false) required this.member, final  String? $type}): $type = $type ?? 'addMemberToLocal';
  

@JsonKey(includeToJson: false, includeFromJson: false) final  Member member;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ProfileParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddMemberToLocalParamsCopyWith<AddMemberToLocalParams> get copyWith => _$AddMemberToLocalParamsCopyWithImpl<AddMemberToLocalParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddMemberToLocalParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddMemberToLocalParams&&(identical(other.member, member) || other.member == member));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,member);

@override
String toString() {
  return 'ProfileParams.addMemberToLocal(member: $member)';
}


}

/// @nodoc
abstract mixin class $AddMemberToLocalParamsCopyWith<$Res> implements $ProfileParamsCopyWith<$Res> {
  factory $AddMemberToLocalParamsCopyWith(AddMemberToLocalParams value, $Res Function(AddMemberToLocalParams) _then) = _$AddMemberToLocalParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeToJson: false, includeFromJson: false) Member member
});


$MemberCopyWith<$Res> get member;

}
/// @nodoc
class _$AddMemberToLocalParamsCopyWithImpl<$Res>
    implements $AddMemberToLocalParamsCopyWith<$Res> {
  _$AddMemberToLocalParamsCopyWithImpl(this._self, this._then);

  final AddMemberToLocalParams _self;
  final $Res Function(AddMemberToLocalParams) _then;

/// Create a copy of ProfileParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? member = null,}) {
  return _then(AddMemberToLocalParams(
member: null == member ? _self.member : member // ignore: cast_nullable_to_non_nullable
as Member,
  ));
}

/// Create a copy of ProfileParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MemberCopyWith<$Res> get member {
  
  return $MemberCopyWith<$Res>(_self.member, (value) {
    return _then(_self.copyWith(member: value));
  });
}
}

/// @nodoc
@JsonSerializable(createFactory: false)

class UpdateMemberInLocalParams implements ProfileParams {
  const UpdateMemberInLocalParams({@JsonKey(includeToJson: false, includeFromJson: false) required this.member, final  String? $type}): $type = $type ?? 'updateMemberInLocal';
  

@JsonKey(includeToJson: false, includeFromJson: false) final  Member member;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ProfileParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateMemberInLocalParamsCopyWith<UpdateMemberInLocalParams> get copyWith => _$UpdateMemberInLocalParamsCopyWithImpl<UpdateMemberInLocalParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateMemberInLocalParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateMemberInLocalParams&&(identical(other.member, member) || other.member == member));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,member);

@override
String toString() {
  return 'ProfileParams.updateMemberInLocal(member: $member)';
}


}

/// @nodoc
abstract mixin class $UpdateMemberInLocalParamsCopyWith<$Res> implements $ProfileParamsCopyWith<$Res> {
  factory $UpdateMemberInLocalParamsCopyWith(UpdateMemberInLocalParams value, $Res Function(UpdateMemberInLocalParams) _then) = _$UpdateMemberInLocalParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeToJson: false, includeFromJson: false) Member member
});


$MemberCopyWith<$Res> get member;

}
/// @nodoc
class _$UpdateMemberInLocalParamsCopyWithImpl<$Res>
    implements $UpdateMemberInLocalParamsCopyWith<$Res> {
  _$UpdateMemberInLocalParamsCopyWithImpl(this._self, this._then);

  final UpdateMemberInLocalParams _self;
  final $Res Function(UpdateMemberInLocalParams) _then;

/// Create a copy of ProfileParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? member = null,}) {
  return _then(UpdateMemberInLocalParams(
member: null == member ? _self.member : member // ignore: cast_nullable_to_non_nullable
as Member,
  ));
}

/// Create a copy of ProfileParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MemberCopyWith<$Res> get member {
  
  return $MemberCopyWith<$Res>(_self.member, (value) {
    return _then(_self.copyWith(member: value));
  });
}
}

// dart format on
