// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../my_appointments_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MyAppointmentsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyAppointmentsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyAppointmentsEvent()';
}


}

/// @nodoc
class $MyAppointmentsEventCopyWith<$Res>  {
$MyAppointmentsEventCopyWith(MyAppointmentsEvent _, $Res Function(MyAppointmentsEvent) __);
}


/// Adds pattern-matching-related methods to [MyAppointmentsEvent].
extension MyAppointmentsEventPatterns on MyAppointmentsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetMyAppointments value)?  getMyAppointments,TResult Function( StoreBokkedApoointment value)?  storeBokkedApoointment,TResult Function( ChangeResheduledAppointmentDetails value)?  changeResheduledAppointmentDetails,TResult Function( CancelAppointment value)?  cancelAppointment,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetMyAppointments() when getMyAppointments != null:
return getMyAppointments(_that);case StoreBokkedApoointment() when storeBokkedApoointment != null:
return storeBokkedApoointment(_that);case ChangeResheduledAppointmentDetails() when changeResheduledAppointmentDetails != null:
return changeResheduledAppointmentDetails(_that);case CancelAppointment() when cancelAppointment != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetMyAppointments value)  getMyAppointments,required TResult Function( StoreBokkedApoointment value)  storeBokkedApoointment,required TResult Function( ChangeResheduledAppointmentDetails value)  changeResheduledAppointmentDetails,required TResult Function( CancelAppointment value)  cancelAppointment,}){
final _that = this;
switch (_that) {
case GetMyAppointments():
return getMyAppointments(_that);case StoreBokkedApoointment():
return storeBokkedApoointment(_that);case ChangeResheduledAppointmentDetails():
return changeResheduledAppointmentDetails(_that);case CancelAppointment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetMyAppointments value)?  getMyAppointments,TResult? Function( StoreBokkedApoointment value)?  storeBokkedApoointment,TResult? Function( ChangeResheduledAppointmentDetails value)?  changeResheduledAppointmentDetails,TResult? Function( CancelAppointment value)?  cancelAppointment,}){
final _that = this;
switch (_that) {
case GetMyAppointments() when getMyAppointments != null:
return getMyAppointments(_that);case StoreBokkedApoointment() when storeBokkedApoointment != null:
return storeBokkedApoointment(_that);case ChangeResheduledAppointmentDetails() when changeResheduledAppointmentDetails != null:
return changeResheduledAppointmentDetails(_that);case CancelAppointment() when cancelAppointment != null:
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
case GetMyAppointments() when getMyAppointments != null:
return getMyAppointments(_that.token,_that.mobileNumber);case StoreBokkedApoointment() when storeBokkedApoointment != null:
return storeBokkedApoointment(_that.appointment);case ChangeResheduledAppointmentDetails() when changeResheduledAppointmentDetails != null:
return changeResheduledAppointmentDetails(_that.appointment,_that.cureentSlot);case CancelAppointment() when cancelAppointment != null:
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
case GetMyAppointments():
return getMyAppointments(_that.token,_that.mobileNumber);case StoreBokkedApoointment():
return storeBokkedApoointment(_that.appointment);case ChangeResheduledAppointmentDetails():
return changeResheduledAppointmentDetails(_that.appointment,_that.cureentSlot);case CancelAppointment():
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
case GetMyAppointments() when getMyAppointments != null:
return getMyAppointments(_that.token,_that.mobileNumber);case StoreBokkedApoointment() when storeBokkedApoointment != null:
return storeBokkedApoointment(_that.appointment);case ChangeResheduledAppointmentDetails() when changeResheduledAppointmentDetails != null:
return changeResheduledAppointmentDetails(_that.appointment,_that.cureentSlot);case CancelAppointment() when cancelAppointment != null:
return cancelAppointment(_that.idAppointment,_that.token);case _:
  return null;

}
}

}

/// @nodoc


class GetMyAppointments implements MyAppointmentsEvent {
  const GetMyAppointments({required this.token, required this.mobileNumber});
  

 final  String token;
 final  String mobileNumber;

/// Create a copy of MyAppointmentsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetMyAppointmentsCopyWith<GetMyAppointments> get copyWith => _$GetMyAppointmentsCopyWithImpl<GetMyAppointments>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetMyAppointments&&(identical(other.token, token) || other.token == token)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber));
}


@override
int get hashCode => Object.hash(runtimeType,token,mobileNumber);

@override
String toString() {
  return 'MyAppointmentsEvent.getMyAppointments(token: $token, mobileNumber: $mobileNumber)';
}


}

/// @nodoc
abstract mixin class $GetMyAppointmentsCopyWith<$Res> implements $MyAppointmentsEventCopyWith<$Res> {
  factory $GetMyAppointmentsCopyWith(GetMyAppointments value, $Res Function(GetMyAppointments) _then) = _$GetMyAppointmentsCopyWithImpl;
@useResult
$Res call({
 String token, String mobileNumber
});




}
/// @nodoc
class _$GetMyAppointmentsCopyWithImpl<$Res>
    implements $GetMyAppointmentsCopyWith<$Res> {
  _$GetMyAppointmentsCopyWithImpl(this._self, this._then);

  final GetMyAppointments _self;
  final $Res Function(GetMyAppointments) _then;

/// Create a copy of MyAppointmentsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? token = null,Object? mobileNumber = null,}) {
  return _then(GetMyAppointments(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class StoreBokkedApoointment implements MyAppointmentsEvent {
  const StoreBokkedApoointment({required this.appointment});
  

 final  MyAppointmentModel appointment;

/// Create a copy of MyAppointmentsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreBokkedApoointmentCopyWith<StoreBokkedApoointment> get copyWith => _$StoreBokkedApoointmentCopyWithImpl<StoreBokkedApoointment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreBokkedApoointment&&(identical(other.appointment, appointment) || other.appointment == appointment));
}


@override
int get hashCode => Object.hash(runtimeType,appointment);

@override
String toString() {
  return 'MyAppointmentsEvent.storeBokkedApoointment(appointment: $appointment)';
}


}

/// @nodoc
abstract mixin class $StoreBokkedApoointmentCopyWith<$Res> implements $MyAppointmentsEventCopyWith<$Res> {
  factory $StoreBokkedApoointmentCopyWith(StoreBokkedApoointment value, $Res Function(StoreBokkedApoointment) _then) = _$StoreBokkedApoointmentCopyWithImpl;
@useResult
$Res call({
 MyAppointmentModel appointment
});


$MyAppointmentModelCopyWith<$Res> get appointment;

}
/// @nodoc
class _$StoreBokkedApoointmentCopyWithImpl<$Res>
    implements $StoreBokkedApoointmentCopyWith<$Res> {
  _$StoreBokkedApoointmentCopyWithImpl(this._self, this._then);

  final StoreBokkedApoointment _self;
  final $Res Function(StoreBokkedApoointment) _then;

/// Create a copy of MyAppointmentsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? appointment = null,}) {
  return _then(StoreBokkedApoointment(
appointment: null == appointment ? _self.appointment : appointment // ignore: cast_nullable_to_non_nullable
as MyAppointmentModel,
  ));
}

/// Create a copy of MyAppointmentsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyAppointmentModelCopyWith<$Res> get appointment {
  
  return $MyAppointmentModelCopyWith<$Res>(_self.appointment, (value) {
    return _then(_self.copyWith(appointment: value));
  });
}
}

/// @nodoc


class ChangeResheduledAppointmentDetails implements MyAppointmentsEvent {
  const ChangeResheduledAppointmentDetails({required this.appointment, required this.cureentSlot});
  

 final  MyAppointmentModel appointment;
 final  DateTime cureentSlot;

/// Create a copy of MyAppointmentsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeResheduledAppointmentDetailsCopyWith<ChangeResheduledAppointmentDetails> get copyWith => _$ChangeResheduledAppointmentDetailsCopyWithImpl<ChangeResheduledAppointmentDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeResheduledAppointmentDetails&&(identical(other.appointment, appointment) || other.appointment == appointment)&&(identical(other.cureentSlot, cureentSlot) || other.cureentSlot == cureentSlot));
}


@override
int get hashCode => Object.hash(runtimeType,appointment,cureentSlot);

@override
String toString() {
  return 'MyAppointmentsEvent.changeResheduledAppointmentDetails(appointment: $appointment, cureentSlot: $cureentSlot)';
}


}

/// @nodoc
abstract mixin class $ChangeResheduledAppointmentDetailsCopyWith<$Res> implements $MyAppointmentsEventCopyWith<$Res> {
  factory $ChangeResheduledAppointmentDetailsCopyWith(ChangeResheduledAppointmentDetails value, $Res Function(ChangeResheduledAppointmentDetails) _then) = _$ChangeResheduledAppointmentDetailsCopyWithImpl;
@useResult
$Res call({
 MyAppointmentModel appointment, DateTime cureentSlot
});


$MyAppointmentModelCopyWith<$Res> get appointment;

}
/// @nodoc
class _$ChangeResheduledAppointmentDetailsCopyWithImpl<$Res>
    implements $ChangeResheduledAppointmentDetailsCopyWith<$Res> {
  _$ChangeResheduledAppointmentDetailsCopyWithImpl(this._self, this._then);

  final ChangeResheduledAppointmentDetails _self;
  final $Res Function(ChangeResheduledAppointmentDetails) _then;

/// Create a copy of MyAppointmentsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? appointment = null,Object? cureentSlot = null,}) {
  return _then(ChangeResheduledAppointmentDetails(
appointment: null == appointment ? _self.appointment : appointment // ignore: cast_nullable_to_non_nullable
as MyAppointmentModel,cureentSlot: null == cureentSlot ? _self.cureentSlot : cureentSlot // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of MyAppointmentsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyAppointmentModelCopyWith<$Res> get appointment {
  
  return $MyAppointmentModelCopyWith<$Res>(_self.appointment, (value) {
    return _then(_self.copyWith(appointment: value));
  });
}
}

/// @nodoc


class CancelAppointment implements MyAppointmentsEvent {
  const CancelAppointment({required this.idAppointment, required this.token});
  

 final  int idAppointment;
 final  String token;

/// Create a copy of MyAppointmentsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CancelAppointmentCopyWith<CancelAppointment> get copyWith => _$CancelAppointmentCopyWithImpl<CancelAppointment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CancelAppointment&&(identical(other.idAppointment, idAppointment) || other.idAppointment == idAppointment)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,idAppointment,token);

@override
String toString() {
  return 'MyAppointmentsEvent.cancelAppointment(idAppointment: $idAppointment, token: $token)';
}


}

/// @nodoc
abstract mixin class $CancelAppointmentCopyWith<$Res> implements $MyAppointmentsEventCopyWith<$Res> {
  factory $CancelAppointmentCopyWith(CancelAppointment value, $Res Function(CancelAppointment) _then) = _$CancelAppointmentCopyWithImpl;
@useResult
$Res call({
 int idAppointment, String token
});




}
/// @nodoc
class _$CancelAppointmentCopyWithImpl<$Res>
    implements $CancelAppointmentCopyWith<$Res> {
  _$CancelAppointmentCopyWithImpl(this._self, this._then);

  final CancelAppointment _self;
  final $Res Function(CancelAppointment) _then;

/// Create a copy of MyAppointmentsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? idAppointment = null,Object? token = null,}) {
  return _then(CancelAppointment(
idAppointment: null == idAppointment ? _self.idAppointment : idAppointment // ignore: cast_nullable_to_non_nullable
as int,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$MyAppointmentsState {

 bool get isAppointmentsFetching; bool get isAppointmentsFetchingFailed; bool get isAppointmentsFetchingSuccess; ErrorModel get error; List<DateTime> get monthTimeLineListOfNotConsulted; List<MyAppointmentModel> get myNotConsultedAppointments; List<DateTime> get monthTimeLineListOfConsulted; List<MyAppointmentModel> get myConsultedAppointments; List<DateTime> get monthTimeLineList; bool get isAppointmentsCancelationFailed; bool get isAppointmentsCancelationSuccess; List<MyAppointmentModel> get myAppointments;
/// Create a copy of MyAppointmentsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyAppointmentsStateCopyWith<MyAppointmentsState> get copyWith => _$MyAppointmentsStateCopyWithImpl<MyAppointmentsState>(this as MyAppointmentsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyAppointmentsState&&(identical(other.isAppointmentsFetching, isAppointmentsFetching) || other.isAppointmentsFetching == isAppointmentsFetching)&&(identical(other.isAppointmentsFetchingFailed, isAppointmentsFetchingFailed) || other.isAppointmentsFetchingFailed == isAppointmentsFetchingFailed)&&(identical(other.isAppointmentsFetchingSuccess, isAppointmentsFetchingSuccess) || other.isAppointmentsFetchingSuccess == isAppointmentsFetchingSuccess)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other.monthTimeLineListOfNotConsulted, monthTimeLineListOfNotConsulted)&&const DeepCollectionEquality().equals(other.myNotConsultedAppointments, myNotConsultedAppointments)&&const DeepCollectionEquality().equals(other.monthTimeLineListOfConsulted, monthTimeLineListOfConsulted)&&const DeepCollectionEquality().equals(other.myConsultedAppointments, myConsultedAppointments)&&const DeepCollectionEquality().equals(other.monthTimeLineList, monthTimeLineList)&&(identical(other.isAppointmentsCancelationFailed, isAppointmentsCancelationFailed) || other.isAppointmentsCancelationFailed == isAppointmentsCancelationFailed)&&(identical(other.isAppointmentsCancelationSuccess, isAppointmentsCancelationSuccess) || other.isAppointmentsCancelationSuccess == isAppointmentsCancelationSuccess)&&const DeepCollectionEquality().equals(other.myAppointments, myAppointments));
}


@override
int get hashCode => Object.hash(runtimeType,isAppointmentsFetching,isAppointmentsFetchingFailed,isAppointmentsFetchingSuccess,error,const DeepCollectionEquality().hash(monthTimeLineListOfNotConsulted),const DeepCollectionEquality().hash(myNotConsultedAppointments),const DeepCollectionEquality().hash(monthTimeLineListOfConsulted),const DeepCollectionEquality().hash(myConsultedAppointments),const DeepCollectionEquality().hash(monthTimeLineList),isAppointmentsCancelationFailed,isAppointmentsCancelationSuccess,const DeepCollectionEquality().hash(myAppointments));

@override
String toString() {
  return 'MyAppointmentsState(isAppointmentsFetching: $isAppointmentsFetching, isAppointmentsFetchingFailed: $isAppointmentsFetchingFailed, isAppointmentsFetchingSuccess: $isAppointmentsFetchingSuccess, error: $error, monthTimeLineListOfNotConsulted: $monthTimeLineListOfNotConsulted, myNotConsultedAppointments: $myNotConsultedAppointments, monthTimeLineListOfConsulted: $monthTimeLineListOfConsulted, myConsultedAppointments: $myConsultedAppointments, monthTimeLineList: $monthTimeLineList, isAppointmentsCancelationFailed: $isAppointmentsCancelationFailed, isAppointmentsCancelationSuccess: $isAppointmentsCancelationSuccess, myAppointments: $myAppointments)';
}


}

/// @nodoc
abstract mixin class $MyAppointmentsStateCopyWith<$Res>  {
  factory $MyAppointmentsStateCopyWith(MyAppointmentsState value, $Res Function(MyAppointmentsState) _then) = _$MyAppointmentsStateCopyWithImpl;
@useResult
$Res call({
 bool isAppointmentsFetching, bool isAppointmentsFetchingFailed, bool isAppointmentsFetchingSuccess, ErrorModel error, List<DateTime> monthTimeLineListOfNotConsulted, List<MyAppointmentModel> myNotConsultedAppointments, List<DateTime> monthTimeLineListOfConsulted, List<MyAppointmentModel> myConsultedAppointments, List<DateTime> monthTimeLineList, bool isAppointmentsCancelationFailed, bool isAppointmentsCancelationSuccess, List<MyAppointmentModel> myAppointments
});




}
/// @nodoc
class _$MyAppointmentsStateCopyWithImpl<$Res>
    implements $MyAppointmentsStateCopyWith<$Res> {
  _$MyAppointmentsStateCopyWithImpl(this._self, this._then);

  final MyAppointmentsState _self;
  final $Res Function(MyAppointmentsState) _then;

/// Create a copy of MyAppointmentsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isAppointmentsFetching = null,Object? isAppointmentsFetchingFailed = null,Object? isAppointmentsFetchingSuccess = null,Object? error = null,Object? monthTimeLineListOfNotConsulted = null,Object? myNotConsultedAppointments = null,Object? monthTimeLineListOfConsulted = null,Object? myConsultedAppointments = null,Object? monthTimeLineList = null,Object? isAppointmentsCancelationFailed = null,Object? isAppointmentsCancelationSuccess = null,Object? myAppointments = null,}) {
  return _then(_self.copyWith(
isAppointmentsFetching: null == isAppointmentsFetching ? _self.isAppointmentsFetching : isAppointmentsFetching // ignore: cast_nullable_to_non_nullable
as bool,isAppointmentsFetchingFailed: null == isAppointmentsFetchingFailed ? _self.isAppointmentsFetchingFailed : isAppointmentsFetchingFailed // ignore: cast_nullable_to_non_nullable
as bool,isAppointmentsFetchingSuccess: null == isAppointmentsFetchingSuccess ? _self.isAppointmentsFetchingSuccess : isAppointmentsFetchingSuccess // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,monthTimeLineListOfNotConsulted: null == monthTimeLineListOfNotConsulted ? _self.monthTimeLineListOfNotConsulted : monthTimeLineListOfNotConsulted // ignore: cast_nullable_to_non_nullable
as List<DateTime>,myNotConsultedAppointments: null == myNotConsultedAppointments ? _self.myNotConsultedAppointments : myNotConsultedAppointments // ignore: cast_nullable_to_non_nullable
as List<MyAppointmentModel>,monthTimeLineListOfConsulted: null == monthTimeLineListOfConsulted ? _self.monthTimeLineListOfConsulted : monthTimeLineListOfConsulted // ignore: cast_nullable_to_non_nullable
as List<DateTime>,myConsultedAppointments: null == myConsultedAppointments ? _self.myConsultedAppointments : myConsultedAppointments // ignore: cast_nullable_to_non_nullable
as List<MyAppointmentModel>,monthTimeLineList: null == monthTimeLineList ? _self.monthTimeLineList : monthTimeLineList // ignore: cast_nullable_to_non_nullable
as List<DateTime>,isAppointmentsCancelationFailed: null == isAppointmentsCancelationFailed ? _self.isAppointmentsCancelationFailed : isAppointmentsCancelationFailed // ignore: cast_nullable_to_non_nullable
as bool,isAppointmentsCancelationSuccess: null == isAppointmentsCancelationSuccess ? _self.isAppointmentsCancelationSuccess : isAppointmentsCancelationSuccess // ignore: cast_nullable_to_non_nullable
as bool,myAppointments: null == myAppointments ? _self.myAppointments : myAppointments // ignore: cast_nullable_to_non_nullable
as List<MyAppointmentModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [MyAppointmentsState].
extension MyAppointmentsStatePatterns on MyAppointmentsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyAppointmentState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyAppointmentState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyAppointmentState value)  $default,){
final _that = this;
switch (_that) {
case _MyAppointmentState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyAppointmentState value)?  $default,){
final _that = this;
switch (_that) {
case _MyAppointmentState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isAppointmentsFetching,  bool isAppointmentsFetchingFailed,  bool isAppointmentsFetchingSuccess,  ErrorModel error,  List<DateTime> monthTimeLineListOfNotConsulted,  List<MyAppointmentModel> myNotConsultedAppointments,  List<DateTime> monthTimeLineListOfConsulted,  List<MyAppointmentModel> myConsultedAppointments,  List<DateTime> monthTimeLineList,  bool isAppointmentsCancelationFailed,  bool isAppointmentsCancelationSuccess,  List<MyAppointmentModel> myAppointments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyAppointmentState() when $default != null:
return $default(_that.isAppointmentsFetching,_that.isAppointmentsFetchingFailed,_that.isAppointmentsFetchingSuccess,_that.error,_that.monthTimeLineListOfNotConsulted,_that.myNotConsultedAppointments,_that.monthTimeLineListOfConsulted,_that.myConsultedAppointments,_that.monthTimeLineList,_that.isAppointmentsCancelationFailed,_that.isAppointmentsCancelationSuccess,_that.myAppointments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isAppointmentsFetching,  bool isAppointmentsFetchingFailed,  bool isAppointmentsFetchingSuccess,  ErrorModel error,  List<DateTime> monthTimeLineListOfNotConsulted,  List<MyAppointmentModel> myNotConsultedAppointments,  List<DateTime> monthTimeLineListOfConsulted,  List<MyAppointmentModel> myConsultedAppointments,  List<DateTime> monthTimeLineList,  bool isAppointmentsCancelationFailed,  bool isAppointmentsCancelationSuccess,  List<MyAppointmentModel> myAppointments)  $default,) {final _that = this;
switch (_that) {
case _MyAppointmentState():
return $default(_that.isAppointmentsFetching,_that.isAppointmentsFetchingFailed,_that.isAppointmentsFetchingSuccess,_that.error,_that.monthTimeLineListOfNotConsulted,_that.myNotConsultedAppointments,_that.monthTimeLineListOfConsulted,_that.myConsultedAppointments,_that.monthTimeLineList,_that.isAppointmentsCancelationFailed,_that.isAppointmentsCancelationSuccess,_that.myAppointments);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isAppointmentsFetching,  bool isAppointmentsFetchingFailed,  bool isAppointmentsFetchingSuccess,  ErrorModel error,  List<DateTime> monthTimeLineListOfNotConsulted,  List<MyAppointmentModel> myNotConsultedAppointments,  List<DateTime> monthTimeLineListOfConsulted,  List<MyAppointmentModel> myConsultedAppointments,  List<DateTime> monthTimeLineList,  bool isAppointmentsCancelationFailed,  bool isAppointmentsCancelationSuccess,  List<MyAppointmentModel> myAppointments)?  $default,) {final _that = this;
switch (_that) {
case _MyAppointmentState() when $default != null:
return $default(_that.isAppointmentsFetching,_that.isAppointmentsFetchingFailed,_that.isAppointmentsFetchingSuccess,_that.error,_that.monthTimeLineListOfNotConsulted,_that.myNotConsultedAppointments,_that.monthTimeLineListOfConsulted,_that.myConsultedAppointments,_that.monthTimeLineList,_that.isAppointmentsCancelationFailed,_that.isAppointmentsCancelationSuccess,_that.myAppointments);case _:
  return null;

}
}

}

/// @nodoc


class _MyAppointmentState implements MyAppointmentsState {
  const _MyAppointmentState({required this.isAppointmentsFetching, required this.isAppointmentsFetchingFailed, required this.isAppointmentsFetchingSuccess, required this.error, required final  List<DateTime> monthTimeLineListOfNotConsulted, required final  List<MyAppointmentModel> myNotConsultedAppointments, required final  List<DateTime> monthTimeLineListOfConsulted, required final  List<MyAppointmentModel> myConsultedAppointments, required final  List<DateTime> monthTimeLineList, required this.isAppointmentsCancelationFailed, required this.isAppointmentsCancelationSuccess, required final  List<MyAppointmentModel> myAppointments}): _monthTimeLineListOfNotConsulted = monthTimeLineListOfNotConsulted,_myNotConsultedAppointments = myNotConsultedAppointments,_monthTimeLineListOfConsulted = monthTimeLineListOfConsulted,_myConsultedAppointments = myConsultedAppointments,_monthTimeLineList = monthTimeLineList,_myAppointments = myAppointments;
  

@override final  bool isAppointmentsFetching;
@override final  bool isAppointmentsFetchingFailed;
@override final  bool isAppointmentsFetchingSuccess;
@override final  ErrorModel error;
 final  List<DateTime> _monthTimeLineListOfNotConsulted;
@override List<DateTime> get monthTimeLineListOfNotConsulted {
  if (_monthTimeLineListOfNotConsulted is EqualUnmodifiableListView) return _monthTimeLineListOfNotConsulted;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_monthTimeLineListOfNotConsulted);
}

 final  List<MyAppointmentModel> _myNotConsultedAppointments;
@override List<MyAppointmentModel> get myNotConsultedAppointments {
  if (_myNotConsultedAppointments is EqualUnmodifiableListView) return _myNotConsultedAppointments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_myNotConsultedAppointments);
}

 final  List<DateTime> _monthTimeLineListOfConsulted;
@override List<DateTime> get monthTimeLineListOfConsulted {
  if (_monthTimeLineListOfConsulted is EqualUnmodifiableListView) return _monthTimeLineListOfConsulted;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_monthTimeLineListOfConsulted);
}

 final  List<MyAppointmentModel> _myConsultedAppointments;
@override List<MyAppointmentModel> get myConsultedAppointments {
  if (_myConsultedAppointments is EqualUnmodifiableListView) return _myConsultedAppointments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_myConsultedAppointments);
}

 final  List<DateTime> _monthTimeLineList;
@override List<DateTime> get monthTimeLineList {
  if (_monthTimeLineList is EqualUnmodifiableListView) return _monthTimeLineList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_monthTimeLineList);
}

@override final  bool isAppointmentsCancelationFailed;
@override final  bool isAppointmentsCancelationSuccess;
 final  List<MyAppointmentModel> _myAppointments;
@override List<MyAppointmentModel> get myAppointments {
  if (_myAppointments is EqualUnmodifiableListView) return _myAppointments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_myAppointments);
}


/// Create a copy of MyAppointmentsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyAppointmentStateCopyWith<_MyAppointmentState> get copyWith => __$MyAppointmentStateCopyWithImpl<_MyAppointmentState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyAppointmentState&&(identical(other.isAppointmentsFetching, isAppointmentsFetching) || other.isAppointmentsFetching == isAppointmentsFetching)&&(identical(other.isAppointmentsFetchingFailed, isAppointmentsFetchingFailed) || other.isAppointmentsFetchingFailed == isAppointmentsFetchingFailed)&&(identical(other.isAppointmentsFetchingSuccess, isAppointmentsFetchingSuccess) || other.isAppointmentsFetchingSuccess == isAppointmentsFetchingSuccess)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other._monthTimeLineListOfNotConsulted, _monthTimeLineListOfNotConsulted)&&const DeepCollectionEquality().equals(other._myNotConsultedAppointments, _myNotConsultedAppointments)&&const DeepCollectionEquality().equals(other._monthTimeLineListOfConsulted, _monthTimeLineListOfConsulted)&&const DeepCollectionEquality().equals(other._myConsultedAppointments, _myConsultedAppointments)&&const DeepCollectionEquality().equals(other._monthTimeLineList, _monthTimeLineList)&&(identical(other.isAppointmentsCancelationFailed, isAppointmentsCancelationFailed) || other.isAppointmentsCancelationFailed == isAppointmentsCancelationFailed)&&(identical(other.isAppointmentsCancelationSuccess, isAppointmentsCancelationSuccess) || other.isAppointmentsCancelationSuccess == isAppointmentsCancelationSuccess)&&const DeepCollectionEquality().equals(other._myAppointments, _myAppointments));
}


@override
int get hashCode => Object.hash(runtimeType,isAppointmentsFetching,isAppointmentsFetchingFailed,isAppointmentsFetchingSuccess,error,const DeepCollectionEquality().hash(_monthTimeLineListOfNotConsulted),const DeepCollectionEquality().hash(_myNotConsultedAppointments),const DeepCollectionEquality().hash(_monthTimeLineListOfConsulted),const DeepCollectionEquality().hash(_myConsultedAppointments),const DeepCollectionEquality().hash(_monthTimeLineList),isAppointmentsCancelationFailed,isAppointmentsCancelationSuccess,const DeepCollectionEquality().hash(_myAppointments));

@override
String toString() {
  return 'MyAppointmentsState(isAppointmentsFetching: $isAppointmentsFetching, isAppointmentsFetchingFailed: $isAppointmentsFetchingFailed, isAppointmentsFetchingSuccess: $isAppointmentsFetchingSuccess, error: $error, monthTimeLineListOfNotConsulted: $monthTimeLineListOfNotConsulted, myNotConsultedAppointments: $myNotConsultedAppointments, monthTimeLineListOfConsulted: $monthTimeLineListOfConsulted, myConsultedAppointments: $myConsultedAppointments, monthTimeLineList: $monthTimeLineList, isAppointmentsCancelationFailed: $isAppointmentsCancelationFailed, isAppointmentsCancelationSuccess: $isAppointmentsCancelationSuccess, myAppointments: $myAppointments)';
}


}

/// @nodoc
abstract mixin class _$MyAppointmentStateCopyWith<$Res> implements $MyAppointmentsStateCopyWith<$Res> {
  factory _$MyAppointmentStateCopyWith(_MyAppointmentState value, $Res Function(_MyAppointmentState) _then) = __$MyAppointmentStateCopyWithImpl;
@override @useResult
$Res call({
 bool isAppointmentsFetching, bool isAppointmentsFetchingFailed, bool isAppointmentsFetchingSuccess, ErrorModel error, List<DateTime> monthTimeLineListOfNotConsulted, List<MyAppointmentModel> myNotConsultedAppointments, List<DateTime> monthTimeLineListOfConsulted, List<MyAppointmentModel> myConsultedAppointments, List<DateTime> monthTimeLineList, bool isAppointmentsCancelationFailed, bool isAppointmentsCancelationSuccess, List<MyAppointmentModel> myAppointments
});




}
/// @nodoc
class __$MyAppointmentStateCopyWithImpl<$Res>
    implements _$MyAppointmentStateCopyWith<$Res> {
  __$MyAppointmentStateCopyWithImpl(this._self, this._then);

  final _MyAppointmentState _self;
  final $Res Function(_MyAppointmentState) _then;

/// Create a copy of MyAppointmentsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isAppointmentsFetching = null,Object? isAppointmentsFetchingFailed = null,Object? isAppointmentsFetchingSuccess = null,Object? error = null,Object? monthTimeLineListOfNotConsulted = null,Object? myNotConsultedAppointments = null,Object? monthTimeLineListOfConsulted = null,Object? myConsultedAppointments = null,Object? monthTimeLineList = null,Object? isAppointmentsCancelationFailed = null,Object? isAppointmentsCancelationSuccess = null,Object? myAppointments = null,}) {
  return _then(_MyAppointmentState(
isAppointmentsFetching: null == isAppointmentsFetching ? _self.isAppointmentsFetching : isAppointmentsFetching // ignore: cast_nullable_to_non_nullable
as bool,isAppointmentsFetchingFailed: null == isAppointmentsFetchingFailed ? _self.isAppointmentsFetchingFailed : isAppointmentsFetchingFailed // ignore: cast_nullable_to_non_nullable
as bool,isAppointmentsFetchingSuccess: null == isAppointmentsFetchingSuccess ? _self.isAppointmentsFetchingSuccess : isAppointmentsFetchingSuccess // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,monthTimeLineListOfNotConsulted: null == monthTimeLineListOfNotConsulted ? _self._monthTimeLineListOfNotConsulted : monthTimeLineListOfNotConsulted // ignore: cast_nullable_to_non_nullable
as List<DateTime>,myNotConsultedAppointments: null == myNotConsultedAppointments ? _self._myNotConsultedAppointments : myNotConsultedAppointments // ignore: cast_nullable_to_non_nullable
as List<MyAppointmentModel>,monthTimeLineListOfConsulted: null == monthTimeLineListOfConsulted ? _self._monthTimeLineListOfConsulted : monthTimeLineListOfConsulted // ignore: cast_nullable_to_non_nullable
as List<DateTime>,myConsultedAppointments: null == myConsultedAppointments ? _self._myConsultedAppointments : myConsultedAppointments // ignore: cast_nullable_to_non_nullable
as List<MyAppointmentModel>,monthTimeLineList: null == monthTimeLineList ? _self._monthTimeLineList : monthTimeLineList // ignore: cast_nullable_to_non_nullable
as List<DateTime>,isAppointmentsCancelationFailed: null == isAppointmentsCancelationFailed ? _self.isAppointmentsCancelationFailed : isAppointmentsCancelationFailed // ignore: cast_nullable_to_non_nullable
as bool,isAppointmentsCancelationSuccess: null == isAppointmentsCancelationSuccess ? _self.isAppointmentsCancelationSuccess : isAppointmentsCancelationSuccess // ignore: cast_nullable_to_non_nullable
as bool,myAppointments: null == myAppointments ? _self._myAppointments : myAppointments // ignore: cast_nullable_to_non_nullable
as List<MyAppointmentModel>,
  ));
}


}

// dart format on
