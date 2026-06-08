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

@JsonKey(name: 'Id') int get id;@JsonKey(name: 'id_customer') int get memberId;@JsonKey(name: 'customer_name') String get memberName;@JsonKey(name: 'email') String get email;@JsonKey(name: 'mobile_no') String get mobileNumber;@JsonKey(name: 'dept_name') String get departName;@JsonKey(name: 'employee_id') String get doctorId;@JsonKey(name: 'employee_name') String get doctorName;@JsonKey(name: 'speciality') String get speciality;@JsonKey(name: 'branch') String get branch;@JsonKey(name: 'profileurl') String get profileUrl;@JsonKey(name: 'busunit_name') String get busunitName;@JsonKey(name: 'Appmnt_Dttm') DateTime get appointmentDateTime;@JsonKey(name: 'id_employee') int get idDoctor; bool get isCanceling;
/// Create a copy of MyAppointmentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyAppointmentModelCopyWith<MyAppointmentModel> get copyWith => _$MyAppointmentModelCopyWithImpl<MyAppointmentModel>(this as MyAppointmentModel, _$identity);

  /// Serializes this MyAppointmentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyAppointmentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.memberName, memberName) || other.memberName == memberName)&&(identical(other.email, email) || other.email == email)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.departName, departName) || other.departName == departName)&&(identical(other.doctorId, doctorId) || other.doctorId == doctorId)&&(identical(other.doctorName, doctorName) || other.doctorName == doctorName)&&(identical(other.speciality, speciality) || other.speciality == speciality)&&(identical(other.branch, branch) || other.branch == branch)&&(identical(other.profileUrl, profileUrl) || other.profileUrl == profileUrl)&&(identical(other.busunitName, busunitName) || other.busunitName == busunitName)&&(identical(other.appointmentDateTime, appointmentDateTime) || other.appointmentDateTime == appointmentDateTime)&&(identical(other.idDoctor, idDoctor) || other.idDoctor == idDoctor)&&(identical(other.isCanceling, isCanceling) || other.isCanceling == isCanceling));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,memberId,memberName,email,mobileNumber,departName,doctorId,doctorName,speciality,branch,profileUrl,busunitName,appointmentDateTime,idDoctor,isCanceling);

@override
String toString() {
  return 'MyAppointmentModel(id: $id, memberId: $memberId, memberName: $memberName, email: $email, mobileNumber: $mobileNumber, departName: $departName, doctorId: $doctorId, doctorName: $doctorName, speciality: $speciality, branch: $branch, profileUrl: $profileUrl, busunitName: $busunitName, appointmentDateTime: $appointmentDateTime, idDoctor: $idDoctor, isCanceling: $isCanceling)';
}


}

/// @nodoc
abstract mixin class $MyAppointmentModelCopyWith<$Res>  {
  factory $MyAppointmentModelCopyWith(MyAppointmentModel value, $Res Function(MyAppointmentModel) _then) = _$MyAppointmentModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Id') int id,@JsonKey(name: 'id_customer') int memberId,@JsonKey(name: 'customer_name') String memberName,@JsonKey(name: 'email') String email,@JsonKey(name: 'mobile_no') String mobileNumber,@JsonKey(name: 'dept_name') String departName,@JsonKey(name: 'employee_id') String doctorId,@JsonKey(name: 'employee_name') String doctorName,@JsonKey(name: 'speciality') String speciality,@JsonKey(name: 'branch') String branch,@JsonKey(name: 'profileurl') String profileUrl,@JsonKey(name: 'busunit_name') String busunitName,@JsonKey(name: 'Appmnt_Dttm') DateTime appointmentDateTime,@JsonKey(name: 'id_employee') int idDoctor, bool isCanceling
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? memberId = null,Object? memberName = null,Object? email = null,Object? mobileNumber = null,Object? departName = null,Object? doctorId = null,Object? doctorName = null,Object? speciality = null,Object? branch = null,Object? profileUrl = null,Object? busunitName = null,Object? appointmentDateTime = null,Object? idDoctor = null,Object? isCanceling = null,}) {
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
as String,busunitName: null == busunitName ? _self.busunitName : busunitName // ignore: cast_nullable_to_non_nullable
as String,appointmentDateTime: null == appointmentDateTime ? _self.appointmentDateTime : appointmentDateTime // ignore: cast_nullable_to_non_nullable
as DateTime,idDoctor: null == idDoctor ? _self.idDoctor : idDoctor // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  int id, @JsonKey(name: 'id_customer')  int memberId, @JsonKey(name: 'customer_name')  String memberName, @JsonKey(name: 'email')  String email, @JsonKey(name: 'mobile_no')  String mobileNumber, @JsonKey(name: 'dept_name')  String departName, @JsonKey(name: 'employee_id')  String doctorId, @JsonKey(name: 'employee_name')  String doctorName, @JsonKey(name: 'speciality')  String speciality, @JsonKey(name: 'branch')  String branch, @JsonKey(name: 'profileurl')  String profileUrl, @JsonKey(name: 'busunit_name')  String busunitName, @JsonKey(name: 'Appmnt_Dttm')  DateTime appointmentDateTime, @JsonKey(name: 'id_employee')  int idDoctor,  bool isCanceling)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyAppointmentModel() when $default != null:
return $default(_that.id,_that.memberId,_that.memberName,_that.email,_that.mobileNumber,_that.departName,_that.doctorId,_that.doctorName,_that.speciality,_that.branch,_that.profileUrl,_that.busunitName,_that.appointmentDateTime,_that.idDoctor,_that.isCanceling);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  int id, @JsonKey(name: 'id_customer')  int memberId, @JsonKey(name: 'customer_name')  String memberName, @JsonKey(name: 'email')  String email, @JsonKey(name: 'mobile_no')  String mobileNumber, @JsonKey(name: 'dept_name')  String departName, @JsonKey(name: 'employee_id')  String doctorId, @JsonKey(name: 'employee_name')  String doctorName, @JsonKey(name: 'speciality')  String speciality, @JsonKey(name: 'branch')  String branch, @JsonKey(name: 'profileurl')  String profileUrl, @JsonKey(name: 'busunit_name')  String busunitName, @JsonKey(name: 'Appmnt_Dttm')  DateTime appointmentDateTime, @JsonKey(name: 'id_employee')  int idDoctor,  bool isCanceling)  $default,) {final _that = this;
switch (_that) {
case _MyAppointmentModel():
return $default(_that.id,_that.memberId,_that.memberName,_that.email,_that.mobileNumber,_that.departName,_that.doctorId,_that.doctorName,_that.speciality,_that.branch,_that.profileUrl,_that.busunitName,_that.appointmentDateTime,_that.idDoctor,_that.isCanceling);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Id')  int id, @JsonKey(name: 'id_customer')  int memberId, @JsonKey(name: 'customer_name')  String memberName, @JsonKey(name: 'email')  String email, @JsonKey(name: 'mobile_no')  String mobileNumber, @JsonKey(name: 'dept_name')  String departName, @JsonKey(name: 'employee_id')  String doctorId, @JsonKey(name: 'employee_name')  String doctorName, @JsonKey(name: 'speciality')  String speciality, @JsonKey(name: 'branch')  String branch, @JsonKey(name: 'profileurl')  String profileUrl, @JsonKey(name: 'busunit_name')  String busunitName, @JsonKey(name: 'Appmnt_Dttm')  DateTime appointmentDateTime, @JsonKey(name: 'id_employee')  int idDoctor,  bool isCanceling)?  $default,) {final _that = this;
switch (_that) {
case _MyAppointmentModel() when $default != null:
return $default(_that.id,_that.memberId,_that.memberName,_that.email,_that.mobileNumber,_that.departName,_that.doctorId,_that.doctorName,_that.speciality,_that.branch,_that.profileUrl,_that.busunitName,_that.appointmentDateTime,_that.idDoctor,_that.isCanceling);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyAppointmentModel implements MyAppointmentModel {
  const _MyAppointmentModel({@JsonKey(name: 'Id') required this.id, @JsonKey(name: 'id_customer') required this.memberId, @JsonKey(name: 'customer_name') required this.memberName, @JsonKey(name: 'email') required this.email, @JsonKey(name: 'mobile_no') required this.mobileNumber, @JsonKey(name: 'dept_name') required this.departName, @JsonKey(name: 'employee_id') required this.doctorId, @JsonKey(name: 'employee_name') required this.doctorName, @JsonKey(name: 'speciality') required this.speciality, @JsonKey(name: 'branch') required this.branch, @JsonKey(name: 'profileurl') required this.profileUrl, @JsonKey(name: 'busunit_name') required this.busunitName, @JsonKey(name: 'Appmnt_Dttm') required this.appointmentDateTime, @JsonKey(name: 'id_employee') required this.idDoctor, this.isCanceling = false});
  factory _MyAppointmentModel.fromJson(Map<String, dynamic> json) => _$MyAppointmentModelFromJson(json);

@override@JsonKey(name: 'Id') final  int id;
@override@JsonKey(name: 'id_customer') final  int memberId;
@override@JsonKey(name: 'customer_name') final  String memberName;
@override@JsonKey(name: 'email') final  String email;
@override@JsonKey(name: 'mobile_no') final  String mobileNumber;
@override@JsonKey(name: 'dept_name') final  String departName;
@override@JsonKey(name: 'employee_id') final  String doctorId;
@override@JsonKey(name: 'employee_name') final  String doctorName;
@override@JsonKey(name: 'speciality') final  String speciality;
@override@JsonKey(name: 'branch') final  String branch;
@override@JsonKey(name: 'profileurl') final  String profileUrl;
@override@JsonKey(name: 'busunit_name') final  String busunitName;
@override@JsonKey(name: 'Appmnt_Dttm') final  DateTime appointmentDateTime;
@override@JsonKey(name: 'id_employee') final  int idDoctor;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyAppointmentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.memberName, memberName) || other.memberName == memberName)&&(identical(other.email, email) || other.email == email)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.departName, departName) || other.departName == departName)&&(identical(other.doctorId, doctorId) || other.doctorId == doctorId)&&(identical(other.doctorName, doctorName) || other.doctorName == doctorName)&&(identical(other.speciality, speciality) || other.speciality == speciality)&&(identical(other.branch, branch) || other.branch == branch)&&(identical(other.profileUrl, profileUrl) || other.profileUrl == profileUrl)&&(identical(other.busunitName, busunitName) || other.busunitName == busunitName)&&(identical(other.appointmentDateTime, appointmentDateTime) || other.appointmentDateTime == appointmentDateTime)&&(identical(other.idDoctor, idDoctor) || other.idDoctor == idDoctor)&&(identical(other.isCanceling, isCanceling) || other.isCanceling == isCanceling));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,memberId,memberName,email,mobileNumber,departName,doctorId,doctorName,speciality,branch,profileUrl,busunitName,appointmentDateTime,idDoctor,isCanceling);

@override
String toString() {
  return 'MyAppointmentModel(id: $id, memberId: $memberId, memberName: $memberName, email: $email, mobileNumber: $mobileNumber, departName: $departName, doctorId: $doctorId, doctorName: $doctorName, speciality: $speciality, branch: $branch, profileUrl: $profileUrl, busunitName: $busunitName, appointmentDateTime: $appointmentDateTime, idDoctor: $idDoctor, isCanceling: $isCanceling)';
}


}

/// @nodoc
abstract mixin class _$MyAppointmentModelCopyWith<$Res> implements $MyAppointmentModelCopyWith<$Res> {
  factory _$MyAppointmentModelCopyWith(_MyAppointmentModel value, $Res Function(_MyAppointmentModel) _then) = __$MyAppointmentModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Id') int id,@JsonKey(name: 'id_customer') int memberId,@JsonKey(name: 'customer_name') String memberName,@JsonKey(name: 'email') String email,@JsonKey(name: 'mobile_no') String mobileNumber,@JsonKey(name: 'dept_name') String departName,@JsonKey(name: 'employee_id') String doctorId,@JsonKey(name: 'employee_name') String doctorName,@JsonKey(name: 'speciality') String speciality,@JsonKey(name: 'branch') String branch,@JsonKey(name: 'profileurl') String profileUrl,@JsonKey(name: 'busunit_name') String busunitName,@JsonKey(name: 'Appmnt_Dttm') DateTime appointmentDateTime,@JsonKey(name: 'id_employee') int idDoctor, bool isCanceling
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? memberId = null,Object? memberName = null,Object? email = null,Object? mobileNumber = null,Object? departName = null,Object? doctorId = null,Object? doctorName = null,Object? speciality = null,Object? branch = null,Object? profileUrl = null,Object? busunitName = null,Object? appointmentDateTime = null,Object? idDoctor = null,Object? isCanceling = null,}) {
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
as String,busunitName: null == busunitName ? _self.busunitName : busunitName // ignore: cast_nullable_to_non_nullable
as String,appointmentDateTime: null == appointmentDateTime ? _self.appointmentDateTime : appointmentDateTime // ignore: cast_nullable_to_non_nullable
as DateTime,idDoctor: null == idDoctor ? _self.idDoctor : idDoctor // ignore: cast_nullable_to_non_nullable
as int,isCanceling: null == isCanceling ? _self.isCanceling : isCanceling // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
