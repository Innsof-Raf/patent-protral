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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetMyAppointmentsParams value)?  getMyAppointments,TResult Function( StoreBokkedApoointmentParams value)?  storeBokkedApoointment,TResult Function( ChangeResheduledAppointmentDetailsParams value)?  changeResheduledAppointmentDetails,TResult Function( CancelAppointmentParams value)?  cancelAppointment,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetMyAppointmentsParams() when getMyAppointments != null:
return getMyAppointments(_that);case StoreBokkedApoointmentParams() when storeBokkedApoointment != null:
return storeBokkedApoointment(_that);case ChangeResheduledAppointmentDetailsParams() when changeResheduledAppointmentDetails != null:
return changeResheduledAppointmentDetails(_that);case CancelAppointmentParams() when cancelAppointment != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetMyAppointmentsParams value)  getMyAppointments,required TResult Function( StoreBokkedApoointmentParams value)  storeBokkedApoointment,required TResult Function( ChangeResheduledAppointmentDetailsParams value)  changeResheduledAppointmentDetails,required TResult Function( CancelAppointmentParams value)  cancelAppointment,}){
final _that = this;
switch (_that) {
case GetMyAppointmentsParams():
return getMyAppointments(_that);case StoreBokkedApoointmentParams():
return storeBokkedApoointment(_that);case ChangeResheduledAppointmentDetailsParams():
return changeResheduledAppointmentDetails(_that);case CancelAppointmentParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetMyAppointmentsParams value)?  getMyAppointments,TResult? Function( StoreBokkedApoointmentParams value)?  storeBokkedApoointment,TResult? Function( ChangeResheduledAppointmentDetailsParams value)?  changeResheduledAppointmentDetails,TResult? Function( CancelAppointmentParams value)?  cancelAppointment,}){
final _that = this;
switch (_that) {
case GetMyAppointmentsParams() when getMyAppointments != null:
return getMyAppointments(_that);case StoreBokkedApoointmentParams() when storeBokkedApoointment != null:
return storeBokkedApoointment(_that);case ChangeResheduledAppointmentDetailsParams() when changeResheduledAppointmentDetails != null:
return changeResheduledAppointmentDetails(_that);case CancelAppointmentParams() when cancelAppointment != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String token,  String mobileNumber)?  getMyAppointments,TResult Function( MyAppointmentModel appointment)?  storeBokkedApoointment,TResult Function( MyAppointmentModel appointment,  DateTime cureentSlot)?  changeResheduledAppointmentDetails,TResult Function( int idAppointment,  String token)?  cancelAppointment,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetMyAppointmentsParams() when getMyAppointments != null:
return getMyAppointments(_that.token,_that.mobileNumber);case StoreBokkedApoointmentParams() when storeBokkedApoointment != null:
return storeBokkedApoointment(_that.appointment);case ChangeResheduledAppointmentDetailsParams() when changeResheduledAppointmentDetails != null:
return changeResheduledAppointmentDetails(_that.appointment,_that.cureentSlot);case CancelAppointmentParams() when cancelAppointment != null:
return cancelAppointment(_that.idAppointment,_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String token,  String mobileNumber)  getMyAppointments,required TResult Function( MyAppointmentModel appointment)  storeBokkedApoointment,required TResult Function( MyAppointmentModel appointment,  DateTime cureentSlot)  changeResheduledAppointmentDetails,required TResult Function( int idAppointment,  String token)  cancelAppointment,}) {final _that = this;
switch (_that) {
case GetMyAppointmentsParams():
return getMyAppointments(_that.token,_that.mobileNumber);case StoreBokkedApoointmentParams():
return storeBokkedApoointment(_that.appointment);case ChangeResheduledAppointmentDetailsParams():
return changeResheduledAppointmentDetails(_that.appointment,_that.cureentSlot);case CancelAppointmentParams():
return cancelAppointment(_that.idAppointment,_that.token);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String token,  String mobileNumber)?  getMyAppointments,TResult? Function( MyAppointmentModel appointment)?  storeBokkedApoointment,TResult? Function( MyAppointmentModel appointment,  DateTime cureentSlot)?  changeResheduledAppointmentDetails,TResult? Function( int idAppointment,  String token)?  cancelAppointment,}) {final _that = this;
switch (_that) {
case GetMyAppointmentsParams() when getMyAppointments != null:
return getMyAppointments(_that.token,_that.mobileNumber);case StoreBokkedApoointmentParams() when storeBokkedApoointment != null:
return storeBokkedApoointment(_that.appointment);case ChangeResheduledAppointmentDetailsParams() when changeResheduledAppointmentDetails != null:
return changeResheduledAppointmentDetails(_that.appointment,_that.cureentSlot);case CancelAppointmentParams() when cancelAppointment != null:
return cancelAppointment(_that.idAppointment,_that.token);case _:
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


class StoreBokkedApoointmentParams implements MyAppointmentsParams {
  const StoreBokkedApoointmentParams({required this.appointment});
  

 final  MyAppointmentModel appointment;

/// Create a copy of MyAppointmentsParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreBokkedApoointmentParamsCopyWith<StoreBokkedApoointmentParams> get copyWith => _$StoreBokkedApoointmentParamsCopyWithImpl<StoreBokkedApoointmentParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreBokkedApoointmentParams&&(identical(other.appointment, appointment) || other.appointment == appointment));
}


@override
int get hashCode => Object.hash(runtimeType,appointment);

@override
String toString() {
  return 'MyAppointmentsParams.storeBokkedApoointment(appointment: $appointment)';
}


}

/// @nodoc
abstract mixin class $StoreBokkedApoointmentParamsCopyWith<$Res> implements $MyAppointmentsParamsCopyWith<$Res> {
  factory $StoreBokkedApoointmentParamsCopyWith(StoreBokkedApoointmentParams value, $Res Function(StoreBokkedApoointmentParams) _then) = _$StoreBokkedApoointmentParamsCopyWithImpl;
@useResult
$Res call({
 MyAppointmentModel appointment
});




}
/// @nodoc
class _$StoreBokkedApoointmentParamsCopyWithImpl<$Res>
    implements $StoreBokkedApoointmentParamsCopyWith<$Res> {
  _$StoreBokkedApoointmentParamsCopyWithImpl(this._self, this._then);

  final StoreBokkedApoointmentParams _self;
  final $Res Function(StoreBokkedApoointmentParams) _then;

/// Create a copy of MyAppointmentsParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? appointment = null,}) {
  return _then(StoreBokkedApoointmentParams(
appointment: null == appointment ? _self.appointment : appointment // ignore: cast_nullable_to_non_nullable
as MyAppointmentModel,
  ));
}


}

/// @nodoc


class ChangeResheduledAppointmentDetailsParams implements MyAppointmentsParams {
  const ChangeResheduledAppointmentDetailsParams({required this.appointment, required this.cureentSlot});
  

 final  MyAppointmentModel appointment;
 final  DateTime cureentSlot;

/// Create a copy of MyAppointmentsParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeResheduledAppointmentDetailsParamsCopyWith<ChangeResheduledAppointmentDetailsParams> get copyWith => _$ChangeResheduledAppointmentDetailsParamsCopyWithImpl<ChangeResheduledAppointmentDetailsParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeResheduledAppointmentDetailsParams&&(identical(other.appointment, appointment) || other.appointment == appointment)&&(identical(other.cureentSlot, cureentSlot) || other.cureentSlot == cureentSlot));
}


@override
int get hashCode => Object.hash(runtimeType,appointment,cureentSlot);

@override
String toString() {
  return 'MyAppointmentsParams.changeResheduledAppointmentDetails(appointment: $appointment, cureentSlot: $cureentSlot)';
}


}

/// @nodoc
abstract mixin class $ChangeResheduledAppointmentDetailsParamsCopyWith<$Res> implements $MyAppointmentsParamsCopyWith<$Res> {
  factory $ChangeResheduledAppointmentDetailsParamsCopyWith(ChangeResheduledAppointmentDetailsParams value, $Res Function(ChangeResheduledAppointmentDetailsParams) _then) = _$ChangeResheduledAppointmentDetailsParamsCopyWithImpl;
@useResult
$Res call({
 MyAppointmentModel appointment, DateTime cureentSlot
});




}
/// @nodoc
class _$ChangeResheduledAppointmentDetailsParamsCopyWithImpl<$Res>
    implements $ChangeResheduledAppointmentDetailsParamsCopyWith<$Res> {
  _$ChangeResheduledAppointmentDetailsParamsCopyWithImpl(this._self, this._then);

  final ChangeResheduledAppointmentDetailsParams _self;
  final $Res Function(ChangeResheduledAppointmentDetailsParams) _then;

/// Create a copy of MyAppointmentsParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? appointment = null,Object? cureentSlot = null,}) {
  return _then(ChangeResheduledAppointmentDetailsParams(
appointment: null == appointment ? _self.appointment : appointment // ignore: cast_nullable_to_non_nullable
as MyAppointmentModel,cureentSlot: null == cureentSlot ? _self.cureentSlot : cureentSlot // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class CancelAppointmentParams implements MyAppointmentsParams {
  const CancelAppointmentParams({required this.idAppointment, required this.token});
  

 final  int idAppointment;
 final  String token;

/// Create a copy of MyAppointmentsParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CancelAppointmentParamsCopyWith<CancelAppointmentParams> get copyWith => _$CancelAppointmentParamsCopyWithImpl<CancelAppointmentParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CancelAppointmentParams&&(identical(other.idAppointment, idAppointment) || other.idAppointment == idAppointment)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,idAppointment,token);

@override
String toString() {
  return 'MyAppointmentsParams.cancelAppointment(idAppointment: $idAppointment, token: $token)';
}


}

/// @nodoc
abstract mixin class $CancelAppointmentParamsCopyWith<$Res> implements $MyAppointmentsParamsCopyWith<$Res> {
  factory $CancelAppointmentParamsCopyWith(CancelAppointmentParams value, $Res Function(CancelAppointmentParams) _then) = _$CancelAppointmentParamsCopyWithImpl;
@useResult
$Res call({
 int idAppointment, String token
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
@pragma('vm:prefer-inline') $Res call({Object? idAppointment = null,Object? token = null,}) {
  return _then(CancelAppointmentParams(
idAppointment: null == idAppointment ? _self.idAppointment : idAppointment // ignore: cast_nullable_to_non_nullable
as int,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
