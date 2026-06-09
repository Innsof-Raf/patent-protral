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

 String get token;
/// Create a copy of BookAppointmentParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookAppointmentParamsCopyWith<BookAppointmentParams> get copyWith => _$BookAppointmentParamsCopyWithImpl<BookAppointmentParams>(this as BookAppointmentParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookAppointmentParams&&(identical(other.token, token) || other.token == token));
}


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
 String token
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetAvailableSlotsParams value)?  getAvailableSlots,TResult Function( _BookAppointmentParams value)?  bookAppointment,TResult Function( _RescheduleAppointmentParams value)?  rescheduleAppointment,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetAvailableSlotsParams() when getAvailableSlots != null:
return getAvailableSlots(_that);case _BookAppointmentParams() when bookAppointment != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetAvailableSlotsParams value)  getAvailableSlots,required TResult Function( _BookAppointmentParams value)  bookAppointment,required TResult Function( _RescheduleAppointmentParams value)  rescheduleAppointment,}){
final _that = this;
switch (_that) {
case _GetAvailableSlotsParams():
return getAvailableSlots(_that);case _BookAppointmentParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetAvailableSlotsParams value)?  getAvailableSlots,TResult? Function( _BookAppointmentParams value)?  bookAppointment,TResult? Function( _RescheduleAppointmentParams value)?  rescheduleAppointment,}){
final _that = this;
switch (_that) {
case _GetAvailableSlotsParams() when getAvailableSlots != null:
return getAvailableSlots(_that);case _BookAppointmentParams() when bookAppointment != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( DateTime date,  int idDoctor,  String token)?  getAvailableSlots,TResult Function( int idDoctor,  DateTime appointmentDateTime,  String mobileNo,  int idMember,  String token)?  bookAppointment,TResult Function( DateTime appointmentDateTime,  int idAppointment,  String token)?  rescheduleAppointment,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetAvailableSlotsParams() when getAvailableSlots != null:
return getAvailableSlots(_that.date,_that.idDoctor,_that.token);case _BookAppointmentParams() when bookAppointment != null:
return bookAppointment(_that.idDoctor,_that.appointmentDateTime,_that.mobileNo,_that.idMember,_that.token);case _RescheduleAppointmentParams() when rescheduleAppointment != null:
return rescheduleAppointment(_that.appointmentDateTime,_that.idAppointment,_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( DateTime date,  int idDoctor,  String token)  getAvailableSlots,required TResult Function( int idDoctor,  DateTime appointmentDateTime,  String mobileNo,  int idMember,  String token)  bookAppointment,required TResult Function( DateTime appointmentDateTime,  int idAppointment,  String token)  rescheduleAppointment,}) {final _that = this;
switch (_that) {
case _GetAvailableSlotsParams():
return getAvailableSlots(_that.date,_that.idDoctor,_that.token);case _BookAppointmentParams():
return bookAppointment(_that.idDoctor,_that.appointmentDateTime,_that.mobileNo,_that.idMember,_that.token);case _RescheduleAppointmentParams():
return rescheduleAppointment(_that.appointmentDateTime,_that.idAppointment,_that.token);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( DateTime date,  int idDoctor,  String token)?  getAvailableSlots,TResult? Function( int idDoctor,  DateTime appointmentDateTime,  String mobileNo,  int idMember,  String token)?  bookAppointment,TResult? Function( DateTime appointmentDateTime,  int idAppointment,  String token)?  rescheduleAppointment,}) {final _that = this;
switch (_that) {
case _GetAvailableSlotsParams() when getAvailableSlots != null:
return getAvailableSlots(_that.date,_that.idDoctor,_that.token);case _BookAppointmentParams() when bookAppointment != null:
return bookAppointment(_that.idDoctor,_that.appointmentDateTime,_that.mobileNo,_that.idMember,_that.token);case _RescheduleAppointmentParams() when rescheduleAppointment != null:
return rescheduleAppointment(_that.appointmentDateTime,_that.idAppointment,_that.token);case _:
  return null;

}
}

}

/// @nodoc


class _GetAvailableSlotsParams implements BookAppointmentParams {
  const _GetAvailableSlotsParams({required this.date, required this.idDoctor, required this.token});
  

 final  DateTime date;
 final  int idDoctor;
@override final  String token;

/// Create a copy of BookAppointmentParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAvailableSlotsParamsCopyWith<_GetAvailableSlotsParams> get copyWith => __$GetAvailableSlotsParamsCopyWithImpl<_GetAvailableSlotsParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAvailableSlotsParams&&(identical(other.date, date) || other.date == date)&&(identical(other.idDoctor, idDoctor) || other.idDoctor == idDoctor)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,date,idDoctor,token);

@override
String toString() {
  return 'BookAppointmentParams.getAvailableSlots(date: $date, idDoctor: $idDoctor, token: $token)';
}


}

/// @nodoc
abstract mixin class _$GetAvailableSlotsParamsCopyWith<$Res> implements $BookAppointmentParamsCopyWith<$Res> {
  factory _$GetAvailableSlotsParamsCopyWith(_GetAvailableSlotsParams value, $Res Function(_GetAvailableSlotsParams) _then) = __$GetAvailableSlotsParamsCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, int idDoctor, String token
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
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? idDoctor = null,Object? token = null,}) {
  return _then(_GetAvailableSlotsParams(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,idDoctor: null == idDoctor ? _self.idDoctor : idDoctor // ignore: cast_nullable_to_non_nullable
as int,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _BookAppointmentParams implements BookAppointmentParams {
  const _BookAppointmentParams({required this.idDoctor, required this.appointmentDateTime, required this.mobileNo, required this.idMember, required this.token});
  

 final  int idDoctor;
 final  DateTime appointmentDateTime;
 final  String mobileNo;
 final  int idMember;
@override final  String token;

/// Create a copy of BookAppointmentParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookAppointmentParamsCopyWith<_BookAppointmentParams> get copyWith => __$BookAppointmentParamsCopyWithImpl<_BookAppointmentParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookAppointmentParams&&(identical(other.idDoctor, idDoctor) || other.idDoctor == idDoctor)&&(identical(other.appointmentDateTime, appointmentDateTime) || other.appointmentDateTime == appointmentDateTime)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.idMember, idMember) || other.idMember == idMember)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,idDoctor,appointmentDateTime,mobileNo,idMember,token);

@override
String toString() {
  return 'BookAppointmentParams.bookAppointment(idDoctor: $idDoctor, appointmentDateTime: $appointmentDateTime, mobileNo: $mobileNo, idMember: $idMember, token: $token)';
}


}

/// @nodoc
abstract mixin class _$BookAppointmentParamsCopyWith<$Res> implements $BookAppointmentParamsCopyWith<$Res> {
  factory _$BookAppointmentParamsCopyWith(_BookAppointmentParams value, $Res Function(_BookAppointmentParams) _then) = __$BookAppointmentParamsCopyWithImpl;
@override @useResult
$Res call({
 int idDoctor, DateTime appointmentDateTime, String mobileNo, int idMember, String token
});




}
/// @nodoc
class __$BookAppointmentParamsCopyWithImpl<$Res>
    implements _$BookAppointmentParamsCopyWith<$Res> {
  __$BookAppointmentParamsCopyWithImpl(this._self, this._then);

  final _BookAppointmentParams _self;
  final $Res Function(_BookAppointmentParams) _then;

/// Create a copy of BookAppointmentParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idDoctor = null,Object? appointmentDateTime = null,Object? mobileNo = null,Object? idMember = null,Object? token = null,}) {
  return _then(_BookAppointmentParams(
idDoctor: null == idDoctor ? _self.idDoctor : idDoctor // ignore: cast_nullable_to_non_nullable
as int,appointmentDateTime: null == appointmentDateTime ? _self.appointmentDateTime : appointmentDateTime // ignore: cast_nullable_to_non_nullable
as DateTime,mobileNo: null == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String,idMember: null == idMember ? _self.idMember : idMember // ignore: cast_nullable_to_non_nullable
as int,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _RescheduleAppointmentParams implements BookAppointmentParams {
  const _RescheduleAppointmentParams({required this.appointmentDateTime, required this.idAppointment, required this.token});
  

 final  DateTime appointmentDateTime;
 final  int idAppointment;
@override final  String token;

/// Create a copy of BookAppointmentParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RescheduleAppointmentParamsCopyWith<_RescheduleAppointmentParams> get copyWith => __$RescheduleAppointmentParamsCopyWithImpl<_RescheduleAppointmentParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RescheduleAppointmentParams&&(identical(other.appointmentDateTime, appointmentDateTime) || other.appointmentDateTime == appointmentDateTime)&&(identical(other.idAppointment, idAppointment) || other.idAppointment == idAppointment)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,appointmentDateTime,idAppointment,token);

@override
String toString() {
  return 'BookAppointmentParams.rescheduleAppointment(appointmentDateTime: $appointmentDateTime, idAppointment: $idAppointment, token: $token)';
}


}

/// @nodoc
abstract mixin class _$RescheduleAppointmentParamsCopyWith<$Res> implements $BookAppointmentParamsCopyWith<$Res> {
  factory _$RescheduleAppointmentParamsCopyWith(_RescheduleAppointmentParams value, $Res Function(_RescheduleAppointmentParams) _then) = __$RescheduleAppointmentParamsCopyWithImpl;
@override @useResult
$Res call({
 DateTime appointmentDateTime, int idAppointment, String token
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
@override @pragma('vm:prefer-inline') $Res call({Object? appointmentDateTime = null,Object? idAppointment = null,Object? token = null,}) {
  return _then(_RescheduleAppointmentParams(
appointmentDateTime: null == appointmentDateTime ? _self.appointmentDateTime : appointmentDateTime // ignore: cast_nullable_to_non_nullable
as DateTime,idAppointment: null == idAppointment ? _self.idAppointment : idAppointment // ignore: cast_nullable_to_non_nullable
as int,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
