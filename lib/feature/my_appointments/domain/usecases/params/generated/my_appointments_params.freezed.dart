// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../my_appointments_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MyAppointmentsParams {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyAppointmentsParams);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyAppointmentsParams()';
}


}

/// @nodoc
class $MyAppointmentsParamsCopyWith<$Res>  {
$MyAppointmentsParamsCopyWith(MyAppointmentsParams _, $Res Function(MyAppointmentsParams) __);
}


/// Adds pattern-matching-related methods to [MyAppointmentsParams].
extension MyAppointmentsParamsPatterns on MyAppointmentsParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetMyAppointmentsParams value)?  getMyAppointments,TResult Function( StoreBookedAppointmentParams value)?  storeBookedAppointment,TResult Function( ChangeRescheduledAppointmentDetailsParams value)?  changeRescheduledAppointmentDetails,TResult Function( CancelAppointmentParams value)?  cancelAppointment,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetMyAppointmentsParams() when getMyAppointments != null:
return getMyAppointments(_that);case StoreBookedAppointmentParams() when storeBookedAppointment != null:
return storeBookedAppointment(_that);case ChangeRescheduledAppointmentDetailsParams() when changeRescheduledAppointmentDetails != null:
return changeRescheduledAppointmentDetails(_that);case CancelAppointmentParams() when cancelAppointment != null:
return cancelAppointment(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetMyAppointmentsParams value)  getMyAppointments,required TResult Function( StoreBookedAppointmentParams value)  storeBookedAppointment,required TResult Function( ChangeRescheduledAppointmentDetailsParams value)  changeRescheduledAppointmentDetails,required TResult Function( CancelAppointmentParams value)  cancelAppointment,}){
final _that = this;
switch (_that) {
case GetMyAppointmentsParams():
return getMyAppointments(_that);case StoreBookedAppointmentParams():
return storeBookedAppointment(_that);case ChangeRescheduledAppointmentDetailsParams():
return changeRescheduledAppointmentDetails(_that);case CancelAppointmentParams():
return cancelAppointment(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetMyAppointmentsParams value)?  getMyAppointments,TResult? Function( StoreBookedAppointmentParams value)?  storeBookedAppointment,TResult? Function( ChangeRescheduledAppointmentDetailsParams value)?  changeRescheduledAppointmentDetails,TResult? Function( CancelAppointmentParams value)?  cancelAppointment,}){
final _that = this;
switch (_that) {
case GetMyAppointmentsParams() when getMyAppointments != null:
return getMyAppointments(_that);case StoreBookedAppointmentParams() when storeBookedAppointment != null:
return storeBookedAppointment(_that);case ChangeRescheduledAppointmentDetailsParams() when changeRescheduledAppointmentDetails != null:
return changeRescheduledAppointmentDetails(_that);case CancelAppointmentParams() when cancelAppointment != null:
return cancelAppointment(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String token,  String mobileNumber)?  getMyAppointments,TResult Function( MyAppointment appointment)?  storeBookedAppointment,TResult Function( MyAppointment appointment,  DateTime currentSlot)?  changeRescheduledAppointmentDetails,TResult Function( int appointmentId,  String token)?  cancelAppointment,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetMyAppointmentsParams() when getMyAppointments != null:
return getMyAppointments(_that.token,_that.mobileNumber);case StoreBookedAppointmentParams() when storeBookedAppointment != null:
return storeBookedAppointment(_that.appointment);case ChangeRescheduledAppointmentDetailsParams() when changeRescheduledAppointmentDetails != null:
return changeRescheduledAppointmentDetails(_that.appointment,_that.currentSlot);case CancelAppointmentParams() when cancelAppointment != null:
return cancelAppointment(_that.appointmentId,_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String token,  String mobileNumber)  getMyAppointments,required TResult Function( MyAppointment appointment)  storeBookedAppointment,required TResult Function( MyAppointment appointment,  DateTime currentSlot)  changeRescheduledAppointmentDetails,required TResult Function( int appointmentId,  String token)  cancelAppointment,}) {final _that = this;
switch (_that) {
case GetMyAppointmentsParams():
return getMyAppointments(_that.token,_that.mobileNumber);case StoreBookedAppointmentParams():
return storeBookedAppointment(_that.appointment);case ChangeRescheduledAppointmentDetailsParams():
return changeRescheduledAppointmentDetails(_that.appointment,_that.currentSlot);case CancelAppointmentParams():
return cancelAppointment(_that.appointmentId,_that.token);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String token,  String mobileNumber)?  getMyAppointments,TResult? Function( MyAppointment appointment)?  storeBookedAppointment,TResult? Function( MyAppointment appointment,  DateTime currentSlot)?  changeRescheduledAppointmentDetails,TResult? Function( int appointmentId,  String token)?  cancelAppointment,}) {final _that = this;
switch (_that) {
case GetMyAppointmentsParams() when getMyAppointments != null:
return getMyAppointments(_that.token,_that.mobileNumber);case StoreBookedAppointmentParams() when storeBookedAppointment != null:
return storeBookedAppointment(_that.appointment);case ChangeRescheduledAppointmentDetailsParams() when changeRescheduledAppointmentDetails != null:
return changeRescheduledAppointmentDetails(_that.appointment,_that.currentSlot);case CancelAppointmentParams() when cancelAppointment != null:
return cancelAppointment(_that.appointmentId,_that.token);case _:
  return null;

}
}

}

/// @nodoc


class GetMyAppointmentsParams implements MyAppointmentsParams {
  const GetMyAppointmentsParams({required this.token, required this.mobileNumber});
  

 final  String token;
 final  String mobileNumber;

/// Create a copy of MyAppointmentsParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetMyAppointmentsParamsCopyWith<GetMyAppointmentsParams> get copyWith => _$GetMyAppointmentsParamsCopyWithImpl<GetMyAppointmentsParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetMyAppointmentsParams&&(identical(other.token, token) || other.token == token)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber));
}


@override
int get hashCode => Object.hash(runtimeType,token,mobileNumber);

@override
String toString() {
  return 'MyAppointmentsParams.getMyAppointments(token: $token, mobileNumber: $mobileNumber)';
}


}

/// @nodoc
abstract mixin class $GetMyAppointmentsParamsCopyWith<$Res> implements $MyAppointmentsParamsCopyWith<$Res> {
  factory $GetMyAppointmentsParamsCopyWith(GetMyAppointmentsParams value, $Res Function(GetMyAppointmentsParams) _then) = _$GetMyAppointmentsParamsCopyWithImpl;
@useResult
$Res call({
 String token, String mobileNumber
});




}
/// @nodoc
class _$GetMyAppointmentsParamsCopyWithImpl<$Res>
    implements $GetMyAppointmentsParamsCopyWith<$Res> {
  _$GetMyAppointmentsParamsCopyWithImpl(this._self, this._then);

  final GetMyAppointmentsParams _self;
  final $Res Function(GetMyAppointmentsParams) _then;

/// Create a copy of MyAppointmentsParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? token = null,Object? mobileNumber = null,}) {
  return _then(GetMyAppointmentsParams(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class StoreBookedAppointmentParams implements MyAppointmentsParams {
  const StoreBookedAppointmentParams({required this.appointment});
  

 final  MyAppointment appointment;

/// Create a copy of MyAppointmentsParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreBookedAppointmentParamsCopyWith<StoreBookedAppointmentParams> get copyWith => _$StoreBookedAppointmentParamsCopyWithImpl<StoreBookedAppointmentParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreBookedAppointmentParams&&(identical(other.appointment, appointment) || other.appointment == appointment));
}


@override
int get hashCode => Object.hash(runtimeType,appointment);

@override
String toString() {
  return 'MyAppointmentsParams.storeBookedAppointment(appointment: $appointment)';
}


}

/// @nodoc
abstract mixin class $StoreBookedAppointmentParamsCopyWith<$Res> implements $MyAppointmentsParamsCopyWith<$Res> {
  factory $StoreBookedAppointmentParamsCopyWith(StoreBookedAppointmentParams value, $Res Function(StoreBookedAppointmentParams) _then) = _$StoreBookedAppointmentParamsCopyWithImpl;
@useResult
$Res call({
 MyAppointment appointment
});


$MyAppointmentCopyWith<$Res> get appointment;

}
/// @nodoc
class _$StoreBookedAppointmentParamsCopyWithImpl<$Res>
    implements $StoreBookedAppointmentParamsCopyWith<$Res> {
  _$StoreBookedAppointmentParamsCopyWithImpl(this._self, this._then);

  final StoreBookedAppointmentParams _self;
  final $Res Function(StoreBookedAppointmentParams) _then;

/// Create a copy of MyAppointmentsParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? appointment = null,}) {
  return _then(StoreBookedAppointmentParams(
appointment: null == appointment ? _self.appointment : appointment // ignore: cast_nullable_to_non_nullable
as MyAppointment,
  ));
}

/// Create a copy of MyAppointmentsParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyAppointmentCopyWith<$Res> get appointment {
  
  return $MyAppointmentCopyWith<$Res>(_self.appointment, (value) {
    return _then(_self.copyWith(appointment: value));
  });
}
}

/// @nodoc


class ChangeRescheduledAppointmentDetailsParams implements MyAppointmentsParams {
  const ChangeRescheduledAppointmentDetailsParams({required this.appointment, required this.currentSlot});
  

 final  MyAppointment appointment;
 final  DateTime currentSlot;

/// Create a copy of MyAppointmentsParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeRescheduledAppointmentDetailsParamsCopyWith<ChangeRescheduledAppointmentDetailsParams> get copyWith => _$ChangeRescheduledAppointmentDetailsParamsCopyWithImpl<ChangeRescheduledAppointmentDetailsParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeRescheduledAppointmentDetailsParams&&(identical(other.appointment, appointment) || other.appointment == appointment)&&(identical(other.currentSlot, currentSlot) || other.currentSlot == currentSlot));
}


@override
int get hashCode => Object.hash(runtimeType,appointment,currentSlot);

@override
String toString() {
  return 'MyAppointmentsParams.changeRescheduledAppointmentDetails(appointment: $appointment, currentSlot: $currentSlot)';
}


}

/// @nodoc
abstract mixin class $ChangeRescheduledAppointmentDetailsParamsCopyWith<$Res> implements $MyAppointmentsParamsCopyWith<$Res> {
  factory $ChangeRescheduledAppointmentDetailsParamsCopyWith(ChangeRescheduledAppointmentDetailsParams value, $Res Function(ChangeRescheduledAppointmentDetailsParams) _then) = _$ChangeRescheduledAppointmentDetailsParamsCopyWithImpl;
@useResult
$Res call({
 MyAppointment appointment, DateTime currentSlot
});


$MyAppointmentCopyWith<$Res> get appointment;

}
/// @nodoc
class _$ChangeRescheduledAppointmentDetailsParamsCopyWithImpl<$Res>
    implements $ChangeRescheduledAppointmentDetailsParamsCopyWith<$Res> {
  _$ChangeRescheduledAppointmentDetailsParamsCopyWithImpl(this._self, this._then);

  final ChangeRescheduledAppointmentDetailsParams _self;
  final $Res Function(ChangeRescheduledAppointmentDetailsParams) _then;

/// Create a copy of MyAppointmentsParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? appointment = null,Object? currentSlot = null,}) {
  return _then(ChangeRescheduledAppointmentDetailsParams(
appointment: null == appointment ? _self.appointment : appointment // ignore: cast_nullable_to_non_nullable
as MyAppointment,currentSlot: null == currentSlot ? _self.currentSlot : currentSlot // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of MyAppointmentsParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyAppointmentCopyWith<$Res> get appointment {
  
  return $MyAppointmentCopyWith<$Res>(_self.appointment, (value) {
    return _then(_self.copyWith(appointment: value));
  });
}
}

/// @nodoc


class CancelAppointmentParams implements MyAppointmentsParams {
  const CancelAppointmentParams({required this.appointmentId, required this.token});
  

 final  int appointmentId;
 final  String token;

/// Create a copy of MyAppointmentsParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CancelAppointmentParamsCopyWith<CancelAppointmentParams> get copyWith => _$CancelAppointmentParamsCopyWithImpl<CancelAppointmentParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CancelAppointmentParams&&(identical(other.appointmentId, appointmentId) || other.appointmentId == appointmentId)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,appointmentId,token);

@override
String toString() {
  return 'MyAppointmentsParams.cancelAppointment(appointmentId: $appointmentId, token: $token)';
}


}

/// @nodoc
abstract mixin class $CancelAppointmentParamsCopyWith<$Res> implements $MyAppointmentsParamsCopyWith<$Res> {
  factory $CancelAppointmentParamsCopyWith(CancelAppointmentParams value, $Res Function(CancelAppointmentParams) _then) = _$CancelAppointmentParamsCopyWithImpl;
@useResult
$Res call({
 int appointmentId, String token
});




}
/// @nodoc
class _$CancelAppointmentParamsCopyWithImpl<$Res>
    implements $CancelAppointmentParamsCopyWith<$Res> {
  _$CancelAppointmentParamsCopyWithImpl(this._self, this._then);

  final CancelAppointmentParams _self;
  final $Res Function(CancelAppointmentParams) _then;

/// Create a copy of MyAppointmentsParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? appointmentId = null,Object? token = null,}) {
  return _then(CancelAppointmentParams(
appointmentId: null == appointmentId ? _self.appointmentId : appointmentId // ignore: cast_nullable_to_non_nullable
as int,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
