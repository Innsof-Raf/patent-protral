// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../my_appointment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MyAppointmentModel {

@JsonKey(readValue: _readId, fromJson: intFromJson) int get id;@JsonKey(readValue: _readMemberId, fromJson: intFromJson) int get memberId;@JsonKey(readValue: _readMemberName, fromJson: stringFromJson) String get memberName;@JsonKey(fromJson: stringFromJson) String get email;@JsonKey(readValue: _readMobileNumber, fromJson: stringFromJson) String get mobileNumber;@JsonKey(name: 'dept_name') String get departName;@JsonKey(readValue: _readDoctorId, fromJson: stringFromJson) String get doctorId;@JsonKey(name: 'employee_name') String get doctorName; String get speciality; String get branch;@JsonKey(name: 'profileurl') String get profileUrl;@JsonKey(name: 'busunit_name') String get busUnitName;@JsonKey(name: 'Appmnt_Dttm', readValue: _readAppointmentDateTime, fromJson: _dateTimeFromJson) DateTime get appointmentDateTime;@JsonKey(name: 'id_employee', fromJson: intFromJson) int get idDoctor;@JsonKey(name: 'appmnt_status') String get status;@JsonKey(name: 'token_no') String get tokenNo;@JsonKey(fromJson: intFromJson) int get stars; bool get isCanceling;
/// Create a copy of MyAppointmentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyAppointmentModelCopyWith<MyAppointmentModel> get copyWith => _$MyAppointmentModelCopyWithImpl<MyAppointmentModel>(this as MyAppointmentModel, _$identity);

  /// Serializes this MyAppointmentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyAppointmentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.memberName, memberName) || other.memberName == memberName)&&(identical(other.email, email) || other.email == email)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.departName, departName) || other.departName == departName)&&(identical(other.doctorId, doctorId) || other.doctorId == doctorId)&&(identical(other.doctorName, doctorName) || other.doctorName == doctorName)&&(identical(other.speciality, speciality) || other.speciality == speciality)&&(identical(other.branch, branch) || other.branch == branch)&&(identical(other.profileUrl, profileUrl) || other.profileUrl == profileUrl)&&(identical(other.busUnitName, busUnitName) || other.busUnitName == busUnitName)&&(identical(other.appointmentDateTime, appointmentDateTime) || other.appointmentDateTime == appointmentDateTime)&&(identical(other.idDoctor, idDoctor) || other.idDoctor == idDoctor)&&(identical(other.status, status) || other.status == status)&&(identical(other.tokenNo, tokenNo) || other.tokenNo == tokenNo)&&(identical(other.stars, stars) || other.stars == stars)&&(identical(other.isCanceling, isCanceling) || other.isCanceling == isCanceling));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,memberId,memberName,email,mobileNumber,departName,doctorId,doctorName,speciality,branch,profileUrl,busUnitName,appointmentDateTime,idDoctor,status,tokenNo,stars,isCanceling);

@override
String toString() {
  return 'MyAppointmentModel(id: $id, memberId: $memberId, memberName: $memberName, email: $email, mobileNumber: $mobileNumber, departName: $departName, doctorId: $doctorId, doctorName: $doctorName, speciality: $speciality, branch: $branch, profileUrl: $profileUrl, busUnitName: $busUnitName, appointmentDateTime: $appointmentDateTime, idDoctor: $idDoctor, status: $status, tokenNo: $tokenNo, stars: $stars, isCanceling: $isCanceling)';
}


}

/// @nodoc
abstract mixin class $MyAppointmentModelCopyWith<$Res>  {
  factory $MyAppointmentModelCopyWith(MyAppointmentModel value, $Res Function(MyAppointmentModel) _then) = _$MyAppointmentModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(readValue: _readId, fromJson: intFromJson) int id,@JsonKey(readValue: _readMemberId, fromJson: intFromJson) int memberId,@JsonKey(readValue: _readMemberName, fromJson: stringFromJson) String memberName,@JsonKey(fromJson: stringFromJson) String email,@JsonKey(readValue: _readMobileNumber, fromJson: stringFromJson) String mobileNumber,@JsonKey(name: 'dept_name') String departName,@JsonKey(readValue: _readDoctorId, fromJson: stringFromJson) String doctorId,@JsonKey(name: 'employee_name') String doctorName, String speciality, String branch,@JsonKey(name: 'profileurl') String profileUrl,@JsonKey(name: 'busunit_name') String busUnitName,@JsonKey(name: 'Appmnt_Dttm', readValue: _readAppointmentDateTime, fromJson: _dateTimeFromJson) DateTime appointmentDateTime,@JsonKey(name: 'id_employee', fromJson: intFromJson) int idDoctor,@JsonKey(name: 'appmnt_status') String status,@JsonKey(name: 'token_no') String tokenNo,@JsonKey(fromJson: intFromJson) int stars, bool isCanceling
});




}
/// @nodoc
class _$MyAppointmentModelCopyWithImpl<$Res>
    implements $MyAppointmentModelCopyWith<$Res> {
  _$MyAppointmentModelCopyWithImpl(this._self, this._then);

  final MyAppointmentModel _self;
  final $Res Function(MyAppointmentModel) _then;

/// Create a copy of MyAppointmentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? memberId = null,Object? memberName = null,Object? email = null,Object? mobileNumber = null,Object? departName = null,Object? doctorId = null,Object? doctorName = null,Object? speciality = null,Object? branch = null,Object? profileUrl = null,Object? busUnitName = null,Object? appointmentDateTime = null,Object? idDoctor = null,Object? status = null,Object? tokenNo = null,Object? stars = null,Object? isCanceling = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,memberId: null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as int,memberName: null == memberName ? _self.memberName : memberName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,departName: null == departName ? _self.departName : departName // ignore: cast_nullable_to_non_nullable
as String,doctorId: null == doctorId ? _self.doctorId : doctorId // ignore: cast_nullable_to_non_nullable
as String,doctorName: null == doctorName ? _self.doctorName : doctorName // ignore: cast_nullable_to_non_nullable
as String,speciality: null == speciality ? _self.speciality : speciality // ignore: cast_nullable_to_non_nullable
as String,branch: null == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as String,profileUrl: null == profileUrl ? _self.profileUrl : profileUrl // ignore: cast_nullable_to_non_nullable
as String,busUnitName: null == busUnitName ? _self.busUnitName : busUnitName // ignore: cast_nullable_to_non_nullable
as String,appointmentDateTime: null == appointmentDateTime ? _self.appointmentDateTime : appointmentDateTime // ignore: cast_nullable_to_non_nullable
as DateTime,idDoctor: null == idDoctor ? _self.idDoctor : idDoctor // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,tokenNo: null == tokenNo ? _self.tokenNo : tokenNo // ignore: cast_nullable_to_non_nullable
as String,stars: null == stars ? _self.stars : stars // ignore: cast_nullable_to_non_nullable
as int,isCanceling: null == isCanceling ? _self.isCanceling : isCanceling // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MyAppointmentModel].
extension MyAppointmentModelPatterns on MyAppointmentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyAppointmentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyAppointmentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyAppointmentModel value)  $default,){
final _that = this;
switch (_that) {
case _MyAppointmentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyAppointmentModel value)?  $default,){
final _that = this;
switch (_that) {
case _MyAppointmentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readId, fromJson: intFromJson)  int id, @JsonKey(readValue: _readMemberId, fromJson: intFromJson)  int memberId, @JsonKey(readValue: _readMemberName, fromJson: stringFromJson)  String memberName, @JsonKey(fromJson: stringFromJson)  String email, @JsonKey(readValue: _readMobileNumber, fromJson: stringFromJson)  String mobileNumber, @JsonKey(name: 'dept_name')  String departName, @JsonKey(readValue: _readDoctorId, fromJson: stringFromJson)  String doctorId, @JsonKey(name: 'employee_name')  String doctorName,  String speciality,  String branch, @JsonKey(name: 'profileurl')  String profileUrl, @JsonKey(name: 'busunit_name')  String busUnitName, @JsonKey(name: 'Appmnt_Dttm', readValue: _readAppointmentDateTime, fromJson: _dateTimeFromJson)  DateTime appointmentDateTime, @JsonKey(name: 'id_employee', fromJson: intFromJson)  int idDoctor, @JsonKey(name: 'appmnt_status')  String status, @JsonKey(name: 'token_no')  String tokenNo, @JsonKey(fromJson: intFromJson)  int stars,  bool isCanceling)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyAppointmentModel() when $default != null:
return $default(_that.id,_that.memberId,_that.memberName,_that.email,_that.mobileNumber,_that.departName,_that.doctorId,_that.doctorName,_that.speciality,_that.branch,_that.profileUrl,_that.busUnitName,_that.appointmentDateTime,_that.idDoctor,_that.status,_that.tokenNo,_that.stars,_that.isCanceling);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readId, fromJson: intFromJson)  int id, @JsonKey(readValue: _readMemberId, fromJson: intFromJson)  int memberId, @JsonKey(readValue: _readMemberName, fromJson: stringFromJson)  String memberName, @JsonKey(fromJson: stringFromJson)  String email, @JsonKey(readValue: _readMobileNumber, fromJson: stringFromJson)  String mobileNumber, @JsonKey(name: 'dept_name')  String departName, @JsonKey(readValue: _readDoctorId, fromJson: stringFromJson)  String doctorId, @JsonKey(name: 'employee_name')  String doctorName,  String speciality,  String branch, @JsonKey(name: 'profileurl')  String profileUrl, @JsonKey(name: 'busunit_name')  String busUnitName, @JsonKey(name: 'Appmnt_Dttm', readValue: _readAppointmentDateTime, fromJson: _dateTimeFromJson)  DateTime appointmentDateTime, @JsonKey(name: 'id_employee', fromJson: intFromJson)  int idDoctor, @JsonKey(name: 'appmnt_status')  String status, @JsonKey(name: 'token_no')  String tokenNo, @JsonKey(fromJson: intFromJson)  int stars,  bool isCanceling)  $default,) {final _that = this;
switch (_that) {
case _MyAppointmentModel():
return $default(_that.id,_that.memberId,_that.memberName,_that.email,_that.mobileNumber,_that.departName,_that.doctorId,_that.doctorName,_that.speciality,_that.branch,_that.profileUrl,_that.busUnitName,_that.appointmentDateTime,_that.idDoctor,_that.status,_that.tokenNo,_that.stars,_that.isCanceling);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(readValue: _readId, fromJson: intFromJson)  int id, @JsonKey(readValue: _readMemberId, fromJson: intFromJson)  int memberId, @JsonKey(readValue: _readMemberName, fromJson: stringFromJson)  String memberName, @JsonKey(fromJson: stringFromJson)  String email, @JsonKey(readValue: _readMobileNumber, fromJson: stringFromJson)  String mobileNumber, @JsonKey(name: 'dept_name')  String departName, @JsonKey(readValue: _readDoctorId, fromJson: stringFromJson)  String doctorId, @JsonKey(name: 'employee_name')  String doctorName,  String speciality,  String branch, @JsonKey(name: 'profileurl')  String profileUrl, @JsonKey(name: 'busunit_name')  String busUnitName, @JsonKey(name: 'Appmnt_Dttm', readValue: _readAppointmentDateTime, fromJson: _dateTimeFromJson)  DateTime appointmentDateTime, @JsonKey(name: 'id_employee', fromJson: intFromJson)  int idDoctor, @JsonKey(name: 'appmnt_status')  String status, @JsonKey(name: 'token_no')  String tokenNo, @JsonKey(fromJson: intFromJson)  int stars,  bool isCanceling)?  $default,) {final _that = this;
switch (_that) {
case _MyAppointmentModel() when $default != null:
return $default(_that.id,_that.memberId,_that.memberName,_that.email,_that.mobileNumber,_that.departName,_that.doctorId,_that.doctorName,_that.speciality,_that.branch,_that.profileUrl,_that.busUnitName,_that.appointmentDateTime,_that.idDoctor,_that.status,_that.tokenNo,_that.stars,_that.isCanceling);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyAppointmentModel extends MyAppointmentModel {
  const _MyAppointmentModel({@JsonKey(readValue: _readId, fromJson: intFromJson) required this.id, @JsonKey(readValue: _readMemberId, fromJson: intFromJson) required this.memberId, @JsonKey(readValue: _readMemberName, fromJson: stringFromJson) required this.memberName, @JsonKey(fromJson: stringFromJson) this.email = '', @JsonKey(readValue: _readMobileNumber, fromJson: stringFromJson) required this.mobileNumber, @JsonKey(name: 'dept_name') this.departName = '', @JsonKey(readValue: _readDoctorId, fromJson: stringFromJson) this.doctorId = '', @JsonKey(name: 'employee_name') this.doctorName = '', this.speciality = '', this.branch = '', @JsonKey(name: 'profileurl') this.profileUrl = '', @JsonKey(name: 'busunit_name') this.busUnitName = '', @JsonKey(name: 'Appmnt_Dttm', readValue: _readAppointmentDateTime, fromJson: _dateTimeFromJson) required this.appointmentDateTime, @JsonKey(name: 'id_employee', fromJson: intFromJson) this.idDoctor = 0, @JsonKey(name: 'appmnt_status') this.status = '', @JsonKey(name: 'token_no') this.tokenNo = '', @JsonKey(fromJson: intFromJson) this.stars = 0, this.isCanceling = false}): super._();
  factory _MyAppointmentModel.fromJson(Map<String, dynamic> json) => _$MyAppointmentModelFromJson(json);

@override@JsonKey(readValue: _readId, fromJson: intFromJson) final  int id;
@override@JsonKey(readValue: _readMemberId, fromJson: intFromJson) final  int memberId;
@override@JsonKey(readValue: _readMemberName, fromJson: stringFromJson) final  String memberName;
@override@JsonKey(fromJson: stringFromJson) final  String email;
@override@JsonKey(readValue: _readMobileNumber, fromJson: stringFromJson) final  String mobileNumber;
@override@JsonKey(name: 'dept_name') final  String departName;
@override@JsonKey(readValue: _readDoctorId, fromJson: stringFromJson) final  String doctorId;
@override@JsonKey(name: 'employee_name') final  String doctorName;
@override@JsonKey() final  String speciality;
@override@JsonKey() final  String branch;
@override@JsonKey(name: 'profileurl') final  String profileUrl;
@override@JsonKey(name: 'busunit_name') final  String busUnitName;
@override@JsonKey(name: 'Appmnt_Dttm', readValue: _readAppointmentDateTime, fromJson: _dateTimeFromJson) final  DateTime appointmentDateTime;
@override@JsonKey(name: 'id_employee', fromJson: intFromJson) final  int idDoctor;
@override@JsonKey(name: 'appmnt_status') final  String status;
@override@JsonKey(name: 'token_no') final  String tokenNo;
@override@JsonKey(fromJson: intFromJson) final  int stars;
@override@JsonKey() final  bool isCanceling;

/// Create a copy of MyAppointmentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyAppointmentModelCopyWith<_MyAppointmentModel> get copyWith => __$MyAppointmentModelCopyWithImpl<_MyAppointmentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyAppointmentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyAppointmentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.memberName, memberName) || other.memberName == memberName)&&(identical(other.email, email) || other.email == email)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.departName, departName) || other.departName == departName)&&(identical(other.doctorId, doctorId) || other.doctorId == doctorId)&&(identical(other.doctorName, doctorName) || other.doctorName == doctorName)&&(identical(other.speciality, speciality) || other.speciality == speciality)&&(identical(other.branch, branch) || other.branch == branch)&&(identical(other.profileUrl, profileUrl) || other.profileUrl == profileUrl)&&(identical(other.busUnitName, busUnitName) || other.busUnitName == busUnitName)&&(identical(other.appointmentDateTime, appointmentDateTime) || other.appointmentDateTime == appointmentDateTime)&&(identical(other.idDoctor, idDoctor) || other.idDoctor == idDoctor)&&(identical(other.status, status) || other.status == status)&&(identical(other.tokenNo, tokenNo) || other.tokenNo == tokenNo)&&(identical(other.stars, stars) || other.stars == stars)&&(identical(other.isCanceling, isCanceling) || other.isCanceling == isCanceling));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,memberId,memberName,email,mobileNumber,departName,doctorId,doctorName,speciality,branch,profileUrl,busUnitName,appointmentDateTime,idDoctor,status,tokenNo,stars,isCanceling);

@override
String toString() {
  return 'MyAppointmentModel(id: $id, memberId: $memberId, memberName: $memberName, email: $email, mobileNumber: $mobileNumber, departName: $departName, doctorId: $doctorId, doctorName: $doctorName, speciality: $speciality, branch: $branch, profileUrl: $profileUrl, busUnitName: $busUnitName, appointmentDateTime: $appointmentDateTime, idDoctor: $idDoctor, status: $status, tokenNo: $tokenNo, stars: $stars, isCanceling: $isCanceling)';
}


}

/// @nodoc
abstract mixin class _$MyAppointmentModelCopyWith<$Res> implements $MyAppointmentModelCopyWith<$Res> {
  factory _$MyAppointmentModelCopyWith(_MyAppointmentModel value, $Res Function(_MyAppointmentModel) _then) = __$MyAppointmentModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(readValue: _readId, fromJson: intFromJson) int id,@JsonKey(readValue: _readMemberId, fromJson: intFromJson) int memberId,@JsonKey(readValue: _readMemberName, fromJson: stringFromJson) String memberName,@JsonKey(fromJson: stringFromJson) String email,@JsonKey(readValue: _readMobileNumber, fromJson: stringFromJson) String mobileNumber,@JsonKey(name: 'dept_name') String departName,@JsonKey(readValue: _readDoctorId, fromJson: stringFromJson) String doctorId,@JsonKey(name: 'employee_name') String doctorName, String speciality, String branch,@JsonKey(name: 'profileurl') String profileUrl,@JsonKey(name: 'busunit_name') String busUnitName,@JsonKey(name: 'Appmnt_Dttm', readValue: _readAppointmentDateTime, fromJson: _dateTimeFromJson) DateTime appointmentDateTime,@JsonKey(name: 'id_employee', fromJson: intFromJson) int idDoctor,@JsonKey(name: 'appmnt_status') String status,@JsonKey(name: 'token_no') String tokenNo,@JsonKey(fromJson: intFromJson) int stars, bool isCanceling
});




}
/// @nodoc
class __$MyAppointmentModelCopyWithImpl<$Res>
    implements _$MyAppointmentModelCopyWith<$Res> {
  __$MyAppointmentModelCopyWithImpl(this._self, this._then);

  final _MyAppointmentModel _self;
  final $Res Function(_MyAppointmentModel) _then;

/// Create a copy of MyAppointmentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? memberId = null,Object? memberName = null,Object? email = null,Object? mobileNumber = null,Object? departName = null,Object? doctorId = null,Object? doctorName = null,Object? speciality = null,Object? branch = null,Object? profileUrl = null,Object? busUnitName = null,Object? appointmentDateTime = null,Object? idDoctor = null,Object? status = null,Object? tokenNo = null,Object? stars = null,Object? isCanceling = null,}) {
  return _then(_MyAppointmentModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,memberId: null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as int,memberName: null == memberName ? _self.memberName : memberName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,departName: null == departName ? _self.departName : departName // ignore: cast_nullable_to_non_nullable
as String,doctorId: null == doctorId ? _self.doctorId : doctorId // ignore: cast_nullable_to_non_nullable
as String,doctorName: null == doctorName ? _self.doctorName : doctorName // ignore: cast_nullable_to_non_nullable
as String,speciality: null == speciality ? _self.speciality : speciality // ignore: cast_nullable_to_non_nullable
as String,branch: null == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as String,profileUrl: null == profileUrl ? _self.profileUrl : profileUrl // ignore: cast_nullable_to_non_nullable
as String,busUnitName: null == busUnitName ? _self.busUnitName : busUnitName // ignore: cast_nullable_to_non_nullable
as String,appointmentDateTime: null == appointmentDateTime ? _self.appointmentDateTime : appointmentDateTime // ignore: cast_nullable_to_non_nullable
as DateTime,idDoctor: null == idDoctor ? _self.idDoctor : idDoctor // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,tokenNo: null == tokenNo ? _self.tokenNo : tokenNo // ignore: cast_nullable_to_non_nullable
as String,stars: null == stars ? _self.stars : stars // ignore: cast_nullable_to_non_nullable
as int,isCanceling: null == isCanceling ? _self.isCanceling : isCanceling // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
