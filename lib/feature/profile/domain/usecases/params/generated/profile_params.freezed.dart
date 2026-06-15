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





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileParams);
}


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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( User user)?  storeUserDetails,TResult Function( User? user,  String patientName,  String nationalId,  String? email,  String? mobileNumber,  String gender,  DateTime dob,  int? idInsurance,  String? memberNumber,  File? profileImage,  DateTime? expireDate,  String? otherInsuranceName)?  addMember,TResult Function( String? token,  int idInsurance,  int memberId,  String? insuranceName,  String memberNumber,  DateTime expireDate)?  changeMemberInsuranceDetails,TResult Function( int memberId,  String? token)?  getMemberDetail,TResult Function( Member member)?  addMemberToLocal,TResult Function( Member member)?  updateMemberInLocal,required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( User user)  storeUserDetails,required TResult Function( User? user,  String patientName,  String nationalId,  String? email,  String? mobileNumber,  String gender,  DateTime dob,  int? idInsurance,  String? memberNumber,  File? profileImage,  DateTime? expireDate,  String? otherInsuranceName)  addMember,required TResult Function( String? token,  int idInsurance,  int memberId,  String? insuranceName,  String memberNumber,  DateTime expireDate)  changeMemberInsuranceDetails,required TResult Function( int memberId,  String? token)  getMemberDetail,required TResult Function( Member member)  addMemberToLocal,required TResult Function( Member member)  updateMemberInLocal,}) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( User user)?  storeUserDetails,TResult? Function( User? user,  String patientName,  String nationalId,  String? email,  String? mobileNumber,  String gender,  DateTime dob,  int? idInsurance,  String? memberNumber,  File? profileImage,  DateTime? expireDate,  String? otherInsuranceName)?  addMember,TResult? Function( String? token,  int idInsurance,  int memberId,  String? insuranceName,  String memberNumber,  DateTime expireDate)?  changeMemberInsuranceDetails,TResult? Function( int memberId,  String? token)?  getMemberDetail,TResult? Function( Member member)?  addMemberToLocal,TResult? Function( Member member)?  updateMemberInLocal,}) {final _that = this;
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


class StoreUserDetailsParams implements ProfileParams {
  const StoreUserDetailsParams({required this.user});
  

 final  User user;

/// Create a copy of ProfileParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreUserDetailsParamsCopyWith<StoreUserDetailsParams> get copyWith => _$StoreUserDetailsParamsCopyWithImpl<StoreUserDetailsParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreUserDetailsParams&&(identical(other.user, user) || other.user == user));
}


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
 User user
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


class AddMemberParams implements ProfileParams {
  const AddMemberParams({this.user, required this.patientName, required this.nationalId, this.email, this.mobileNumber, required this.gender, required this.dob, this.idInsurance, this.memberNumber, this.profileImage, this.expireDate, this.otherInsuranceName});
  

 final  User? user;
 final  String patientName;
 final  String nationalId;
 final  String? email;
 final  String? mobileNumber;
 final  String gender;
 final  DateTime dob;
 final  int? idInsurance;
 final  String? memberNumber;
 final  File? profileImage;
 final  DateTime? expireDate;
 final  String? otherInsuranceName;

/// Create a copy of ProfileParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddMemberParamsCopyWith<AddMemberParams> get copyWith => _$AddMemberParamsCopyWithImpl<AddMemberParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddMemberParams&&(identical(other.user, user) || other.user == user)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.nationalId, nationalId) || other.nationalId == nationalId)&&(identical(other.email, email) || other.email == email)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.idInsurance, idInsurance) || other.idInsurance == idInsurance)&&(identical(other.memberNumber, memberNumber) || other.memberNumber == memberNumber)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.expireDate, expireDate) || other.expireDate == expireDate)&&(identical(other.otherInsuranceName, otherInsuranceName) || other.otherInsuranceName == otherInsuranceName));
}


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
 User? user, String patientName, String nationalId, String? email, String? mobileNumber, String gender, DateTime dob, int? idInsurance, String? memberNumber, File? profileImage, DateTime? expireDate, String? otherInsuranceName
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


class ChangeMemberInsuranceDetailsParams implements ProfileParams {
  const ChangeMemberInsuranceDetailsParams({this.token, required this.idInsurance, required this.memberId, required this.insuranceName, required this.memberNumber, required this.expireDate});
  

 final  String? token;
 final  int idInsurance;
 final  int memberId;
 final  String? insuranceName;
 final  String memberNumber;
 final  DateTime expireDate;

/// Create a copy of ProfileParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeMemberInsuranceDetailsParamsCopyWith<ChangeMemberInsuranceDetailsParams> get copyWith => _$ChangeMemberInsuranceDetailsParamsCopyWithImpl<ChangeMemberInsuranceDetailsParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeMemberInsuranceDetailsParams&&(identical(other.token, token) || other.token == token)&&(identical(other.idInsurance, idInsurance) || other.idInsurance == idInsurance)&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.insuranceName, insuranceName) || other.insuranceName == insuranceName)&&(identical(other.memberNumber, memberNumber) || other.memberNumber == memberNumber)&&(identical(other.expireDate, expireDate) || other.expireDate == expireDate));
}


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
 String? token, int idInsurance, int memberId, String? insuranceName, String memberNumber, DateTime expireDate
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


class GetMemberDetailParams implements ProfileParams {
  const GetMemberDetailParams({required this.memberId, this.token});
  

 final  int memberId;
 final  String? token;

/// Create a copy of ProfileParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetMemberDetailParamsCopyWith<GetMemberDetailParams> get copyWith => _$GetMemberDetailParamsCopyWithImpl<GetMemberDetailParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetMemberDetailParams&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.token, token) || other.token == token));
}


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
 int memberId, String? token
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


class AddMemberToLocalParams implements ProfileParams {
  const AddMemberToLocalParams({required this.member});
  

 final  Member member;

/// Create a copy of ProfileParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddMemberToLocalParamsCopyWith<AddMemberToLocalParams> get copyWith => _$AddMemberToLocalParamsCopyWithImpl<AddMemberToLocalParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddMemberToLocalParams&&(identical(other.member, member) || other.member == member));
}


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
 Member member
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


class UpdateMemberInLocalParams implements ProfileParams {
  const UpdateMemberInLocalParams({required this.member});
  

 final  Member member;

/// Create a copy of ProfileParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateMemberInLocalParamsCopyWith<UpdateMemberInLocalParams> get copyWith => _$UpdateMemberInLocalParamsCopyWithImpl<UpdateMemberInLocalParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateMemberInLocalParams&&(identical(other.member, member) || other.member == member));
}


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
 Member member
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
