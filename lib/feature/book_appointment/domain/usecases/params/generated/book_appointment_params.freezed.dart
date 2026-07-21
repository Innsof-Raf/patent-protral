// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../book_appointment_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BookAppointmentParams {

@JsonKey(includeToJson: false) String get token;
/// Create a copy of BookAppointmentParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookAppointmentParamsCopyWith<BookAppointmentParams> get copyWith => _$BookAppointmentParamsCopyWithImpl<BookAppointmentParams>(this as BookAppointmentParams, _$identity);

  /// Serializes this BookAppointmentParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookAppointmentParams&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token);

@override
String toString() {
  return 'BookAppointmentParams(token: $token)';
}


}

/// @nodoc
abstract mixin class $BookAppointmentParamsCopyWith<$Res>  {
  factory $BookAppointmentParamsCopyWith(BookAppointmentParams value, $Res Function(BookAppointmentParams) _then) = _$BookAppointmentParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeToJson: false) String token
});




}
/// @nodoc
class _$BookAppointmentParamsCopyWithImpl<$Res>
    implements $BookAppointmentParamsCopyWith<$Res> {
  _$BookAppointmentParamsCopyWithImpl(this._self, this._then);

  final BookAppointmentParams _self;
  final $Res Function(BookAppointmentParams) _then;

/// Create a copy of BookAppointmentParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BookAppointmentParams].
extension BookAppointmentParamsPatterns on BookAppointmentParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetAvailableSlotsParams value)?  getAvailableSlots,TResult Function( _BookNewAppointmentParams value)?  bookAppointment,TResult Function( _RescheduleAppointmentParams value)?  rescheduleAppointment,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetAvailableSlotsParams() when getAvailableSlots != null:
return getAvailableSlots(_that);case _BookNewAppointmentParams() when bookAppointment != null:
return bookAppointment(_that);case _RescheduleAppointmentParams() when rescheduleAppointment != null:
return rescheduleAppointment(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetAvailableSlotsParams value)  getAvailableSlots,required TResult Function( _BookNewAppointmentParams value)  bookAppointment,required TResult Function( _RescheduleAppointmentParams value)  rescheduleAppointment,}){
final _that = this;
switch (_that) {
case _GetAvailableSlotsParams():
return getAvailableSlots(_that);case _BookNewAppointmentParams():
return bookAppointment(_that);case _RescheduleAppointmentParams():
return rescheduleAppointment(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetAvailableSlotsParams value)?  getAvailableSlots,TResult? Function( _BookNewAppointmentParams value)?  bookAppointment,TResult? Function( _RescheduleAppointmentParams value)?  rescheduleAppointment,}){
final _that = this;
switch (_that) {
case _GetAvailableSlotsParams() when getAvailableSlots != null:
return getAvailableSlots(_that);case _BookNewAppointmentParams() when bookAppointment != null:
return bookAppointment(_that);case _RescheduleAppointmentParams() when rescheduleAppointment != null:
return rescheduleAppointment(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function(@JsonKey(name: 'id_doctor')  int idDoctor, @JsonKey(includeToJson: false)  DateTime date, @JsonKey(includeToJson: false)  String token, @JsonKey(name: 'shift_dt')  String? shiftDt)?  getAvailableSlots,TResult Function(@JsonKey(name: 'id_employee')  int idDoctor, @JsonKey(name: 'appmnt_dttm')  DateTime appointmentDateTime, @JsonKey(name: 'mobile_no')  String mobileNo, @JsonKey(name: 'id_customer')  int idMember, @JsonKey(includeToJson: false)  String token,  int id, @JsonKey(name: 'id_busunit')  int idBusunit, @JsonKey(name: 'appmnt_mode')  String appmntMode, @JsonKey(name: 'appmnt_dt')  String? appmntDt, @JsonKey(name: 'appmnt_time')  String? appmntTime, @JsonKey(name: 'patient_mobileno')  String? patientMobileNo)?  bookAppointment,TResult Function(@JsonKey(name: 'appmnt_dttm')  DateTime appointmentDateTime, @JsonKey(name: 'id')  int idAppointment, @JsonKey(includeToJson: false)  String token, @JsonKey(name: 'appmnt_dt')  String? appmntDt, @JsonKey(name: 'appmnt_time')  String? appmntTime)?  rescheduleAppointment,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetAvailableSlotsParams() when getAvailableSlots != null:
return getAvailableSlots(_that.idDoctor,_that.date,_that.token,_that.shiftDt);case _BookNewAppointmentParams() when bookAppointment != null:
return bookAppointment(_that.idDoctor,_that.appointmentDateTime,_that.mobileNo,_that.idMember,_that.token,_that.id,_that.idBusunit,_that.appmntMode,_that.appmntDt,_that.appmntTime,_that.patientMobileNo);case _RescheduleAppointmentParams() when rescheduleAppointment != null:
return rescheduleAppointment(_that.appointmentDateTime,_that.idAppointment,_that.token,_that.appmntDt,_that.appmntTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function(@JsonKey(name: 'id_doctor')  int idDoctor, @JsonKey(includeToJson: false)  DateTime date, @JsonKey(includeToJson: false)  String token, @JsonKey(name: 'shift_dt')  String? shiftDt)  getAvailableSlots,required TResult Function(@JsonKey(name: 'id_employee')  int idDoctor, @JsonKey(name: 'appmnt_dttm')  DateTime appointmentDateTime, @JsonKey(name: 'mobile_no')  String mobileNo, @JsonKey(name: 'id_customer')  int idMember, @JsonKey(includeToJson: false)  String token,  int id, @JsonKey(name: 'id_busunit')  int idBusunit, @JsonKey(name: 'appmnt_mode')  String appmntMode, @JsonKey(name: 'appmnt_dt')  String? appmntDt, @JsonKey(name: 'appmnt_time')  String? appmntTime, @JsonKey(name: 'patient_mobileno')  String? patientMobileNo)  bookAppointment,required TResult Function(@JsonKey(name: 'appmnt_dttm')  DateTime appointmentDateTime, @JsonKey(name: 'id')  int idAppointment, @JsonKey(includeToJson: false)  String token, @JsonKey(name: 'appmnt_dt')  String? appmntDt, @JsonKey(name: 'appmnt_time')  String? appmntTime)  rescheduleAppointment,}) {final _that = this;
switch (_that) {
case _GetAvailableSlotsParams():
return getAvailableSlots(_that.idDoctor,_that.date,_that.token,_that.shiftDt);case _BookNewAppointmentParams():
return bookAppointment(_that.idDoctor,_that.appointmentDateTime,_that.mobileNo,_that.idMember,_that.token,_that.id,_that.idBusunit,_that.appmntMode,_that.appmntDt,_that.appmntTime,_that.patientMobileNo);case _RescheduleAppointmentParams():
return rescheduleAppointment(_that.appointmentDateTime,_that.idAppointment,_that.token,_that.appmntDt,_that.appmntTime);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function(@JsonKey(name: 'id_doctor')  int idDoctor, @JsonKey(includeToJson: false)  DateTime date, @JsonKey(includeToJson: false)  String token, @JsonKey(name: 'shift_dt')  String? shiftDt)?  getAvailableSlots,TResult? Function(@JsonKey(name: 'id_employee')  int idDoctor, @JsonKey(name: 'appmnt_dttm')  DateTime appointmentDateTime, @JsonKey(name: 'mobile_no')  String mobileNo, @JsonKey(name: 'id_customer')  int idMember, @JsonKey(includeToJson: false)  String token,  int id, @JsonKey(name: 'id_busunit')  int idBusunit, @JsonKey(name: 'appmnt_mode')  String appmntMode, @JsonKey(name: 'appmnt_dt')  String? appmntDt, @JsonKey(name: 'appmnt_time')  String? appmntTime, @JsonKey(name: 'patient_mobileno')  String? patientMobileNo)?  bookAppointment,TResult? Function(@JsonKey(name: 'appmnt_dttm')  DateTime appointmentDateTime, @JsonKey(name: 'id')  int idAppointment, @JsonKey(includeToJson: false)  String token, @JsonKey(name: 'appmnt_dt')  String? appmntDt, @JsonKey(name: 'appmnt_time')  String? appmntTime)?  rescheduleAppointment,}) {final _that = this;
switch (_that) {
case _GetAvailableSlotsParams() when getAvailableSlots != null:
return getAvailableSlots(_that.idDoctor,_that.date,_that.token,_that.shiftDt);case _BookNewAppointmentParams() when bookAppointment != null:
return bookAppointment(_that.idDoctor,_that.appointmentDateTime,_that.mobileNo,_that.idMember,_that.token,_that.id,_that.idBusunit,_that.appmntMode,_that.appmntDt,_that.appmntTime,_that.patientMobileNo);case _RescheduleAppointmentParams() when rescheduleAppointment != null:
return rescheduleAppointment(_that.appointmentDateTime,_that.idAppointment,_that.token,_that.appmntDt,_that.appmntTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createFactory: false)

class _GetAvailableSlotsParams implements BookAppointmentParams {
  const _GetAvailableSlotsParams({@JsonKey(name: 'id_doctor') required this.idDoctor, @JsonKey(includeToJson: false) required this.date, @JsonKey(includeToJson: false) required this.token, @JsonKey(name: 'shift_dt') this.shiftDt, final  String? $type}): $type = $type ?? 'getAvailableSlots';
  

@JsonKey(name: 'id_doctor') final  int idDoctor;
@JsonKey(includeToJson: false) final  DateTime date;
@override@JsonKey(includeToJson: false) final  String token;
@JsonKey(name: 'shift_dt') final  String? shiftDt;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of BookAppointmentParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAvailableSlotsParamsCopyWith<_GetAvailableSlotsParams> get copyWith => __$GetAvailableSlotsParamsCopyWithImpl<_GetAvailableSlotsParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetAvailableSlotsParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAvailableSlotsParams&&(identical(other.idDoctor, idDoctor) || other.idDoctor == idDoctor)&&(identical(other.date, date) || other.date == date)&&(identical(other.token, token) || other.token == token)&&(identical(other.shiftDt, shiftDt) || other.shiftDt == shiftDt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idDoctor,date,token,shiftDt);

@override
String toString() {
  return 'BookAppointmentParams.getAvailableSlots(idDoctor: $idDoctor, date: $date, token: $token, shiftDt: $shiftDt)';
}


}

/// @nodoc
abstract mixin class _$GetAvailableSlotsParamsCopyWith<$Res> implements $BookAppointmentParamsCopyWith<$Res> {
  factory _$GetAvailableSlotsParamsCopyWith(_GetAvailableSlotsParams value, $Res Function(_GetAvailableSlotsParams) _then) = __$GetAvailableSlotsParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id_doctor') int idDoctor,@JsonKey(includeToJson: false) DateTime date,@JsonKey(includeToJson: false) String token,@JsonKey(name: 'shift_dt') String? shiftDt
});




}
/// @nodoc
class __$GetAvailableSlotsParamsCopyWithImpl<$Res>
    implements _$GetAvailableSlotsParamsCopyWith<$Res> {
  __$GetAvailableSlotsParamsCopyWithImpl(this._self, this._then);

  final _GetAvailableSlotsParams _self;
  final $Res Function(_GetAvailableSlotsParams) _then;

/// Create a copy of BookAppointmentParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idDoctor = null,Object? date = null,Object? token = null,Object? shiftDt = freezed,}) {
  return _then(_GetAvailableSlotsParams(
idDoctor: null == idDoctor ? _self.idDoctor : idDoctor // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,shiftDt: freezed == shiftDt ? _self.shiftDt : shiftDt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable(createFactory: false)

class _BookNewAppointmentParams implements BookAppointmentParams {
  const _BookNewAppointmentParams({@JsonKey(name: 'id_employee') required this.idDoctor, @JsonKey(name: 'appmnt_dttm') required this.appointmentDateTime, @JsonKey(name: 'mobile_no') required this.mobileNo, @JsonKey(name: 'id_customer') required this.idMember, @JsonKey(includeToJson: false) required this.token, this.id = 0, @JsonKey(name: 'id_busunit') this.idBusunit = 1, @JsonKey(name: 'appmnt_mode') this.appmntMode = 'Offline', @JsonKey(name: 'appmnt_dt') this.appmntDt, @JsonKey(name: 'appmnt_time') this.appmntTime, @JsonKey(name: 'patient_mobileno') this.patientMobileNo, final  String? $type}): $type = $type ?? 'bookAppointment';
  

@JsonKey(name: 'id_employee') final  int idDoctor;
@JsonKey(name: 'appmnt_dttm') final  DateTime appointmentDateTime;
@JsonKey(name: 'mobile_no') final  String mobileNo;
@JsonKey(name: 'id_customer') final  int idMember;
@override@JsonKey(includeToJson: false) final  String token;
@JsonKey() final  int id;
@JsonKey(name: 'id_busunit') final  int idBusunit;
@JsonKey(name: 'appmnt_mode') final  String appmntMode;
@JsonKey(name: 'appmnt_dt') final  String? appmntDt;
@JsonKey(name: 'appmnt_time') final  String? appmntTime;
@JsonKey(name: 'patient_mobileno') final  String? patientMobileNo;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of BookAppointmentParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookNewAppointmentParamsCopyWith<_BookNewAppointmentParams> get copyWith => __$BookNewAppointmentParamsCopyWithImpl<_BookNewAppointmentParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookNewAppointmentParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookNewAppointmentParams&&(identical(other.idDoctor, idDoctor) || other.idDoctor == idDoctor)&&(identical(other.appointmentDateTime, appointmentDateTime) || other.appointmentDateTime == appointmentDateTime)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.idMember, idMember) || other.idMember == idMember)&&(identical(other.token, token) || other.token == token)&&(identical(other.id, id) || other.id == id)&&(identical(other.idBusunit, idBusunit) || other.idBusunit == idBusunit)&&(identical(other.appmntMode, appmntMode) || other.appmntMode == appmntMode)&&(identical(other.appmntDt, appmntDt) || other.appmntDt == appmntDt)&&(identical(other.appmntTime, appmntTime) || other.appmntTime == appmntTime)&&(identical(other.patientMobileNo, patientMobileNo) || other.patientMobileNo == patientMobileNo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idDoctor,appointmentDateTime,mobileNo,idMember,token,id,idBusunit,appmntMode,appmntDt,appmntTime,patientMobileNo);

@override
String toString() {
  return 'BookAppointmentParams.bookAppointment(idDoctor: $idDoctor, appointmentDateTime: $appointmentDateTime, mobileNo: $mobileNo, idMember: $idMember, token: $token, id: $id, idBusunit: $idBusunit, appmntMode: $appmntMode, appmntDt: $appmntDt, appmntTime: $appmntTime, patientMobileNo: $patientMobileNo)';
}


}

/// @nodoc
abstract mixin class _$BookNewAppointmentParamsCopyWith<$Res> implements $BookAppointmentParamsCopyWith<$Res> {
  factory _$BookNewAppointmentParamsCopyWith(_BookNewAppointmentParams value, $Res Function(_BookNewAppointmentParams) _then) = __$BookNewAppointmentParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id_employee') int idDoctor,@JsonKey(name: 'appmnt_dttm') DateTime appointmentDateTime,@JsonKey(name: 'mobile_no') String mobileNo,@JsonKey(name: 'id_customer') int idMember,@JsonKey(includeToJson: false) String token, int id,@JsonKey(name: 'id_busunit') int idBusunit,@JsonKey(name: 'appmnt_mode') String appmntMode,@JsonKey(name: 'appmnt_dt') String? appmntDt,@JsonKey(name: 'appmnt_time') String? appmntTime,@JsonKey(name: 'patient_mobileno') String? patientMobileNo
});




}
/// @nodoc
class __$BookNewAppointmentParamsCopyWithImpl<$Res>
    implements _$BookNewAppointmentParamsCopyWith<$Res> {
  __$BookNewAppointmentParamsCopyWithImpl(this._self, this._then);

  final _BookNewAppointmentParams _self;
  final $Res Function(_BookNewAppointmentParams) _then;

/// Create a copy of BookAppointmentParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idDoctor = null,Object? appointmentDateTime = null,Object? mobileNo = null,Object? idMember = null,Object? token = null,Object? id = null,Object? idBusunit = null,Object? appmntMode = null,Object? appmntDt = freezed,Object? appmntTime = freezed,Object? patientMobileNo = freezed,}) {
  return _then(_BookNewAppointmentParams(
idDoctor: null == idDoctor ? _self.idDoctor : idDoctor // ignore: cast_nullable_to_non_nullable
as int,appointmentDateTime: null == appointmentDateTime ? _self.appointmentDateTime : appointmentDateTime // ignore: cast_nullable_to_non_nullable
as DateTime,mobileNo: null == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String,idMember: null == idMember ? _self.idMember : idMember // ignore: cast_nullable_to_non_nullable
as int,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,idBusunit: null == idBusunit ? _self.idBusunit : idBusunit // ignore: cast_nullable_to_non_nullable
as int,appmntMode: null == appmntMode ? _self.appmntMode : appmntMode // ignore: cast_nullable_to_non_nullable
as String,appmntDt: freezed == appmntDt ? _self.appmntDt : appmntDt // ignore: cast_nullable_to_non_nullable
as String?,appmntTime: freezed == appmntTime ? _self.appmntTime : appmntTime // ignore: cast_nullable_to_non_nullable
as String?,patientMobileNo: freezed == patientMobileNo ? _self.patientMobileNo : patientMobileNo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable(createFactory: false)

class _RescheduleAppointmentParams implements BookAppointmentParams {
  const _RescheduleAppointmentParams({@JsonKey(name: 'appmnt_dttm') required this.appointmentDateTime, @JsonKey(name: 'id') required this.idAppointment, @JsonKey(includeToJson: false) required this.token, @JsonKey(name: 'appmnt_dt') this.appmntDt, @JsonKey(name: 'appmnt_time') this.appmntTime, final  String? $type}): $type = $type ?? 'rescheduleAppointment';
  

@JsonKey(name: 'appmnt_dttm') final  DateTime appointmentDateTime;
@JsonKey(name: 'id') final  int idAppointment;
@override@JsonKey(includeToJson: false) final  String token;
@JsonKey(name: 'appmnt_dt') final  String? appmntDt;
@JsonKey(name: 'appmnt_time') final  String? appmntTime;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of BookAppointmentParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RescheduleAppointmentParamsCopyWith<_RescheduleAppointmentParams> get copyWith => __$RescheduleAppointmentParamsCopyWithImpl<_RescheduleAppointmentParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RescheduleAppointmentParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RescheduleAppointmentParams&&(identical(other.appointmentDateTime, appointmentDateTime) || other.appointmentDateTime == appointmentDateTime)&&(identical(other.idAppointment, idAppointment) || other.idAppointment == idAppointment)&&(identical(other.token, token) || other.token == token)&&(identical(other.appmntDt, appmntDt) || other.appmntDt == appmntDt)&&(identical(other.appmntTime, appmntTime) || other.appmntTime == appmntTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,appointmentDateTime,idAppointment,token,appmntDt,appmntTime);

@override
String toString() {
  return 'BookAppointmentParams.rescheduleAppointment(appointmentDateTime: $appointmentDateTime, idAppointment: $idAppointment, token: $token, appmntDt: $appmntDt, appmntTime: $appmntTime)';
}


}

/// @nodoc
abstract mixin class _$RescheduleAppointmentParamsCopyWith<$Res> implements $BookAppointmentParamsCopyWith<$Res> {
  factory _$RescheduleAppointmentParamsCopyWith(_RescheduleAppointmentParams value, $Res Function(_RescheduleAppointmentParams) _then) = __$RescheduleAppointmentParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'appmnt_dttm') DateTime appointmentDateTime,@JsonKey(name: 'id') int idAppointment,@JsonKey(includeToJson: false) String token,@JsonKey(name: 'appmnt_dt') String? appmntDt,@JsonKey(name: 'appmnt_time') String? appmntTime
});




}
/// @nodoc
class __$RescheduleAppointmentParamsCopyWithImpl<$Res>
    implements _$RescheduleAppointmentParamsCopyWith<$Res> {
  __$RescheduleAppointmentParamsCopyWithImpl(this._self, this._then);

  final _RescheduleAppointmentParams _self;
  final $Res Function(_RescheduleAppointmentParams) _then;

/// Create a copy of BookAppointmentParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? appointmentDateTime = null,Object? idAppointment = null,Object? token = null,Object? appmntDt = freezed,Object? appmntTime = freezed,}) {
  return _then(_RescheduleAppointmentParams(
appointmentDateTime: null == appointmentDateTime ? _self.appointmentDateTime : appointmentDateTime // ignore: cast_nullable_to_non_nullable
as DateTime,idAppointment: null == idAppointment ? _self.idAppointment : idAppointment // ignore: cast_nullable_to_non_nullable
as int,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,appmntDt: freezed == appmntDt ? _self.appmntDt : appmntDt // ignore: cast_nullable_to_non_nullable
as String?,appmntTime: freezed == appmntTime ? _self.appmntTime : appmntTime // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
