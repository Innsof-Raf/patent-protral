// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../my_appointment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MyAppointment {

 int get id; int get memberId; String get memberName; String get email; String get mobileNumber; String get departName; String get doctorId; String get doctorName; String get speciality; String get branch; String get profileUrl; String get busUnitName; DateTime get appointmentDateTime; int get idDoctor; bool get isCanceling;
/// Create a copy of MyAppointment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyAppointmentCopyWith<MyAppointment> get copyWith => _$MyAppointmentCopyWithImpl<MyAppointment>(this as MyAppointment, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyAppointment&&(identical(other.id, id) || other.id == id)&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.memberName, memberName) || other.memberName == memberName)&&(identical(other.email, email) || other.email == email)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.departName, departName) || other.departName == departName)&&(identical(other.doctorId, doctorId) || other.doctorId == doctorId)&&(identical(other.doctorName, doctorName) || other.doctorName == doctorName)&&(identical(other.speciality, speciality) || other.speciality == speciality)&&(identical(other.branch, branch) || other.branch == branch)&&(identical(other.profileUrl, profileUrl) || other.profileUrl == profileUrl)&&(identical(other.busUnitName, busUnitName) || other.busUnitName == busUnitName)&&(identical(other.appointmentDateTime, appointmentDateTime) || other.appointmentDateTime == appointmentDateTime)&&(identical(other.idDoctor, idDoctor) || other.idDoctor == idDoctor)&&(identical(other.isCanceling, isCanceling) || other.isCanceling == isCanceling));
}


@override
int get hashCode => Object.hash(runtimeType,id,memberId,memberName,email,mobileNumber,departName,doctorId,doctorName,speciality,branch,profileUrl,busUnitName,appointmentDateTime,idDoctor,isCanceling);

@override
String toString() {
  return 'MyAppointment(id: $id, memberId: $memberId, memberName: $memberName, email: $email, mobileNumber: $mobileNumber, departName: $departName, doctorId: $doctorId, doctorName: $doctorName, speciality: $speciality, branch: $branch, profileUrl: $profileUrl, busUnitName: $busUnitName, appointmentDateTime: $appointmentDateTime, idDoctor: $idDoctor, isCanceling: $isCanceling)';
}


}

/// @nodoc
abstract mixin class $MyAppointmentCopyWith<$Res>  {
  factory $MyAppointmentCopyWith(MyAppointment value, $Res Function(MyAppointment) _then) = _$MyAppointmentCopyWithImpl;
@useResult
$Res call({
 int id, int memberId, String memberName, String email, String mobileNumber, String departName, String doctorId, String doctorName, String speciality, String branch, String profileUrl, String busUnitName, DateTime appointmentDateTime, int idDoctor, bool isCanceling
});




}
/// @nodoc
class _$MyAppointmentCopyWithImpl<$Res>
    implements $MyAppointmentCopyWith<$Res> {
  _$MyAppointmentCopyWithImpl(this._self, this._then);

  final MyAppointment _self;
  final $Res Function(MyAppointment) _then;

/// Create a copy of MyAppointment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? memberId = null,Object? memberName = null,Object? email = null,Object? mobileNumber = null,Object? departName = null,Object? doctorId = null,Object? doctorName = null,Object? speciality = null,Object? branch = null,Object? profileUrl = null,Object? busUnitName = null,Object? appointmentDateTime = null,Object? idDoctor = null,Object? isCanceling = null,}) {
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
as int,isCanceling: null == isCanceling ? _self.isCanceling : isCanceling // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MyAppointment].
extension MyAppointmentPatterns on MyAppointment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyAppointment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyAppointment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyAppointment value)  $default,){
final _that = this;
switch (_that) {
case _MyAppointment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyAppointment value)?  $default,){
final _that = this;
switch (_that) {
case _MyAppointment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int memberId,  String memberName,  String email,  String mobileNumber,  String departName,  String doctorId,  String doctorName,  String speciality,  String branch,  String profileUrl,  String busUnitName,  DateTime appointmentDateTime,  int idDoctor,  bool isCanceling)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyAppointment() when $default != null:
return $default(_that.id,_that.memberId,_that.memberName,_that.email,_that.mobileNumber,_that.departName,_that.doctorId,_that.doctorName,_that.speciality,_that.branch,_that.profileUrl,_that.busUnitName,_that.appointmentDateTime,_that.idDoctor,_that.isCanceling);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int memberId,  String memberName,  String email,  String mobileNumber,  String departName,  String doctorId,  String doctorName,  String speciality,  String branch,  String profileUrl,  String busUnitName,  DateTime appointmentDateTime,  int idDoctor,  bool isCanceling)  $default,) {final _that = this;
switch (_that) {
case _MyAppointment():
return $default(_that.id,_that.memberId,_that.memberName,_that.email,_that.mobileNumber,_that.departName,_that.doctorId,_that.doctorName,_that.speciality,_that.branch,_that.profileUrl,_that.busUnitName,_that.appointmentDateTime,_that.idDoctor,_that.isCanceling);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int memberId,  String memberName,  String email,  String mobileNumber,  String departName,  String doctorId,  String doctorName,  String speciality,  String branch,  String profileUrl,  String busUnitName,  DateTime appointmentDateTime,  int idDoctor,  bool isCanceling)?  $default,) {final _that = this;
switch (_that) {
case _MyAppointment() when $default != null:
return $default(_that.id,_that.memberId,_that.memberName,_that.email,_that.mobileNumber,_that.departName,_that.doctorId,_that.doctorName,_that.speciality,_that.branch,_that.profileUrl,_that.busUnitName,_that.appointmentDateTime,_that.idDoctor,_that.isCanceling);case _:
  return null;

}
}

}

/// @nodoc


class _MyAppointment implements MyAppointment {
  const _MyAppointment({required this.id, required this.memberId, required this.memberName, required this.email, required this.mobileNumber, required this.departName, required this.doctorId, required this.doctorName, required this.speciality, required this.branch, required this.profileUrl, required this.busUnitName, required this.appointmentDateTime, required this.idDoctor, this.isCanceling = false});
  

@override final  int id;
@override final  int memberId;
@override final  String memberName;
@override final  String email;
@override final  String mobileNumber;
@override final  String departName;
@override final  String doctorId;
@override final  String doctorName;
@override final  String speciality;
@override final  String branch;
@override final  String profileUrl;
@override final  String busUnitName;
@override final  DateTime appointmentDateTime;
@override final  int idDoctor;
@override@JsonKey() final  bool isCanceling;

/// Create a copy of MyAppointment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyAppointmentCopyWith<_MyAppointment> get copyWith => __$MyAppointmentCopyWithImpl<_MyAppointment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyAppointment&&(identical(other.id, id) || other.id == id)&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.memberName, memberName) || other.memberName == memberName)&&(identical(other.email, email) || other.email == email)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.departName, departName) || other.departName == departName)&&(identical(other.doctorId, doctorId) || other.doctorId == doctorId)&&(identical(other.doctorName, doctorName) || other.doctorName == doctorName)&&(identical(other.speciality, speciality) || other.speciality == speciality)&&(identical(other.branch, branch) || other.branch == branch)&&(identical(other.profileUrl, profileUrl) || other.profileUrl == profileUrl)&&(identical(other.busUnitName, busUnitName) || other.busUnitName == busUnitName)&&(identical(other.appointmentDateTime, appointmentDateTime) || other.appointmentDateTime == appointmentDateTime)&&(identical(other.idDoctor, idDoctor) || other.idDoctor == idDoctor)&&(identical(other.isCanceling, isCanceling) || other.isCanceling == isCanceling));
}


@override
int get hashCode => Object.hash(runtimeType,id,memberId,memberName,email,mobileNumber,departName,doctorId,doctorName,speciality,branch,profileUrl,busUnitName,appointmentDateTime,idDoctor,isCanceling);

@override
String toString() {
  return 'MyAppointment(id: $id, memberId: $memberId, memberName: $memberName, email: $email, mobileNumber: $mobileNumber, departName: $departName, doctorId: $doctorId, doctorName: $doctorName, speciality: $speciality, branch: $branch, profileUrl: $profileUrl, busUnitName: $busUnitName, appointmentDateTime: $appointmentDateTime, idDoctor: $idDoctor, isCanceling: $isCanceling)';
}


}

/// @nodoc
abstract mixin class _$MyAppointmentCopyWith<$Res> implements $MyAppointmentCopyWith<$Res> {
  factory _$MyAppointmentCopyWith(_MyAppointment value, $Res Function(_MyAppointment) _then) = __$MyAppointmentCopyWithImpl;
@override @useResult
$Res call({
 int id, int memberId, String memberName, String email, String mobileNumber, String departName, String doctorId, String doctorName, String speciality, String branch, String profileUrl, String busUnitName, DateTime appointmentDateTime, int idDoctor, bool isCanceling
});




}
/// @nodoc
class __$MyAppointmentCopyWithImpl<$Res>
    implements _$MyAppointmentCopyWith<$Res> {
  __$MyAppointmentCopyWithImpl(this._self, this._then);

  final _MyAppointment _self;
  final $Res Function(_MyAppointment) _then;

/// Create a copy of MyAppointment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? memberId = null,Object? memberName = null,Object? email = null,Object? mobileNumber = null,Object? departName = null,Object? doctorId = null,Object? doctorName = null,Object? speciality = null,Object? branch = null,Object? profileUrl = null,Object? busUnitName = null,Object? appointmentDateTime = null,Object? idDoctor = null,Object? isCanceling = null,}) {
  return _then(_MyAppointment(
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
as int,isCanceling: null == isCanceling ? _self.isCanceling : isCanceling // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
