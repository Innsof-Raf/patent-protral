// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../book_appointment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BookAppointmentEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookAppointmentEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookAppointmentEvent()';
}


}

/// @nodoc
class $BookAppointmentEventCopyWith<$Res>  {
$BookAppointmentEventCopyWith(BookAppointmentEvent _, $Res Function(BookAppointmentEvent) __);
}


/// Adds pattern-matching-related methods to [BookAppointmentEvent].
extension BookAppointmentEventPatterns on BookAppointmentEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( BookNewAppointment value)?  bookNewAppointment,TResult Function( RescheduleAppointment value)?  rescheduleAppointment,TResult Function( GetAvailableSlots value)?  getAvailableSlots,TResult Function( ChangeBookedSlotState value)?  changeBookedSlotState,TResult Function( ChangeRescheduledSlotState value)?  changeRescheduledSlotState,required TResult orElse(),}){
final _that = this;
switch (_that) {
case BookNewAppointment() when bookNewAppointment != null:
return bookNewAppointment(_that);case RescheduleAppointment() when rescheduleAppointment != null:
return rescheduleAppointment(_that);case GetAvailableSlots() when getAvailableSlots != null:
return getAvailableSlots(_that);case ChangeBookedSlotState() when changeBookedSlotState != null:
return changeBookedSlotState(_that);case ChangeRescheduledSlotState() when changeRescheduledSlotState != null:
return changeRescheduledSlotState(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( BookNewAppointment value)  bookNewAppointment,required TResult Function( RescheduleAppointment value)  rescheduleAppointment,required TResult Function( GetAvailableSlots value)  getAvailableSlots,required TResult Function( ChangeBookedSlotState value)  changeBookedSlotState,required TResult Function( ChangeRescheduledSlotState value)  changeRescheduledSlotState,}){
final _that = this;
switch (_that) {
case BookNewAppointment():
return bookNewAppointment(_that);case RescheduleAppointment():
return rescheduleAppointment(_that);case GetAvailableSlots():
return getAvailableSlots(_that);case ChangeBookedSlotState():
return changeBookedSlotState(_that);case ChangeRescheduledSlotState():
return changeRescheduledSlotState(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( BookNewAppointment value)?  bookNewAppointment,TResult? Function( RescheduleAppointment value)?  rescheduleAppointment,TResult? Function( GetAvailableSlots value)?  getAvailableSlots,TResult? Function( ChangeBookedSlotState value)?  changeBookedSlotState,TResult? Function( ChangeRescheduledSlotState value)?  changeRescheduledSlotState,}){
final _that = this;
switch (_that) {
case BookNewAppointment() when bookNewAppointment != null:
return bookNewAppointment(_that);case RescheduleAppointment() when rescheduleAppointment != null:
return rescheduleAppointment(_that);case GetAvailableSlots() when getAvailableSlots != null:
return getAvailableSlots(_that);case ChangeBookedSlotState() when changeBookedSlotState != null:
return changeBookedSlotState(_that);case ChangeRescheduledSlotState() when changeRescheduledSlotState != null:
return changeRescheduledSlotState(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int idDoctor,  DateTime appointmentDateTime,  String mobileNo,  int idMember,  String token)?  bookNewAppointment,TResult Function( int idAppointment,  DateTime appointmentDateTime,  String token)?  rescheduleAppointment,TResult Function( int idDoctor,  DateTime date,  String token)?  getAvailableSlots,TResult Function( DateTime slotTime)?  changeBookedSlotState,TResult Function( DateTime oldSlot,  DateTime currentSlot)?  changeRescheduledSlotState,required TResult orElse(),}) {final _that = this;
switch (_that) {
case BookNewAppointment() when bookNewAppointment != null:
return bookNewAppointment(_that.idDoctor,_that.appointmentDateTime,_that.mobileNo,_that.idMember,_that.token);case RescheduleAppointment() when rescheduleAppointment != null:
return rescheduleAppointment(_that.idAppointment,_that.appointmentDateTime,_that.token);case GetAvailableSlots() when getAvailableSlots != null:
return getAvailableSlots(_that.idDoctor,_that.date,_that.token);case ChangeBookedSlotState() when changeBookedSlotState != null:
return changeBookedSlotState(_that.slotTime);case ChangeRescheduledSlotState() when changeRescheduledSlotState != null:
return changeRescheduledSlotState(_that.oldSlot,_that.currentSlot);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int idDoctor,  DateTime appointmentDateTime,  String mobileNo,  int idMember,  String token)  bookNewAppointment,required TResult Function( int idAppointment,  DateTime appointmentDateTime,  String token)  rescheduleAppointment,required TResult Function( int idDoctor,  DateTime date,  String token)  getAvailableSlots,required TResult Function( DateTime slotTime)  changeBookedSlotState,required TResult Function( DateTime oldSlot,  DateTime currentSlot)  changeRescheduledSlotState,}) {final _that = this;
switch (_that) {
case BookNewAppointment():
return bookNewAppointment(_that.idDoctor,_that.appointmentDateTime,_that.mobileNo,_that.idMember,_that.token);case RescheduleAppointment():
return rescheduleAppointment(_that.idAppointment,_that.appointmentDateTime,_that.token);case GetAvailableSlots():
return getAvailableSlots(_that.idDoctor,_that.date,_that.token);case ChangeBookedSlotState():
return changeBookedSlotState(_that.slotTime);case ChangeRescheduledSlotState():
return changeRescheduledSlotState(_that.oldSlot,_that.currentSlot);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int idDoctor,  DateTime appointmentDateTime,  String mobileNo,  int idMember,  String token)?  bookNewAppointment,TResult? Function( int idAppointment,  DateTime appointmentDateTime,  String token)?  rescheduleAppointment,TResult? Function( int idDoctor,  DateTime date,  String token)?  getAvailableSlots,TResult? Function( DateTime slotTime)?  changeBookedSlotState,TResult? Function( DateTime oldSlot,  DateTime currentSlot)?  changeRescheduledSlotState,}) {final _that = this;
switch (_that) {
case BookNewAppointment() when bookNewAppointment != null:
return bookNewAppointment(_that.idDoctor,_that.appointmentDateTime,_that.mobileNo,_that.idMember,_that.token);case RescheduleAppointment() when rescheduleAppointment != null:
return rescheduleAppointment(_that.idAppointment,_that.appointmentDateTime,_that.token);case GetAvailableSlots() when getAvailableSlots != null:
return getAvailableSlots(_that.idDoctor,_that.date,_that.token);case ChangeBookedSlotState() when changeBookedSlotState != null:
return changeBookedSlotState(_that.slotTime);case ChangeRescheduledSlotState() when changeRescheduledSlotState != null:
return changeRescheduledSlotState(_that.oldSlot,_that.currentSlot);case _:
  return null;

}
}

}

/// @nodoc


class BookNewAppointment implements BookAppointmentEvent {
  const BookNewAppointment({required this.idDoctor, required this.appointmentDateTime, required this.mobileNo, required this.idMember, required this.token});
  

 final  int idDoctor;
 final  DateTime appointmentDateTime;
 final  String mobileNo;
 final  int idMember;
 final  String token;

/// Create a copy of BookAppointmentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookNewAppointmentCopyWith<BookNewAppointment> get copyWith => _$BookNewAppointmentCopyWithImpl<BookNewAppointment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookNewAppointment&&(identical(other.idDoctor, idDoctor) || other.idDoctor == idDoctor)&&(identical(other.appointmentDateTime, appointmentDateTime) || other.appointmentDateTime == appointmentDateTime)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.idMember, idMember) || other.idMember == idMember)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,idDoctor,appointmentDateTime,mobileNo,idMember,token);

@override
String toString() {
  return 'BookAppointmentEvent.bookNewAppointment(idDoctor: $idDoctor, appointmentDateTime: $appointmentDateTime, mobileNo: $mobileNo, idMember: $idMember, token: $token)';
}


}

/// @nodoc
abstract mixin class $BookNewAppointmentCopyWith<$Res> implements $BookAppointmentEventCopyWith<$Res> {
  factory $BookNewAppointmentCopyWith(BookNewAppointment value, $Res Function(BookNewAppointment) _then) = _$BookNewAppointmentCopyWithImpl;
@useResult
$Res call({
 int idDoctor, DateTime appointmentDateTime, String mobileNo, int idMember, String token
});




}
/// @nodoc
class _$BookNewAppointmentCopyWithImpl<$Res>
    implements $BookNewAppointmentCopyWith<$Res> {
  _$BookNewAppointmentCopyWithImpl(this._self, this._then);

  final BookNewAppointment _self;
  final $Res Function(BookNewAppointment) _then;

/// Create a copy of BookAppointmentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? idDoctor = null,Object? appointmentDateTime = null,Object? mobileNo = null,Object? idMember = null,Object? token = null,}) {
  return _then(BookNewAppointment(
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


class RescheduleAppointment implements BookAppointmentEvent {
  const RescheduleAppointment({required this.idAppointment, required this.appointmentDateTime, required this.token});
  

 final  int idAppointment;
 final  DateTime appointmentDateTime;
 final  String token;

/// Create a copy of BookAppointmentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RescheduleAppointmentCopyWith<RescheduleAppointment> get copyWith => _$RescheduleAppointmentCopyWithImpl<RescheduleAppointment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RescheduleAppointment&&(identical(other.idAppointment, idAppointment) || other.idAppointment == idAppointment)&&(identical(other.appointmentDateTime, appointmentDateTime) || other.appointmentDateTime == appointmentDateTime)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,idAppointment,appointmentDateTime,token);

@override
String toString() {
  return 'BookAppointmentEvent.rescheduleAppointment(idAppointment: $idAppointment, appointmentDateTime: $appointmentDateTime, token: $token)';
}


}

/// @nodoc
abstract mixin class $RescheduleAppointmentCopyWith<$Res> implements $BookAppointmentEventCopyWith<$Res> {
  factory $RescheduleAppointmentCopyWith(RescheduleAppointment value, $Res Function(RescheduleAppointment) _then) = _$RescheduleAppointmentCopyWithImpl;
@useResult
$Res call({
 int idAppointment, DateTime appointmentDateTime, String token
});




}
/// @nodoc
class _$RescheduleAppointmentCopyWithImpl<$Res>
    implements $RescheduleAppointmentCopyWith<$Res> {
  _$RescheduleAppointmentCopyWithImpl(this._self, this._then);

  final RescheduleAppointment _self;
  final $Res Function(RescheduleAppointment) _then;

/// Create a copy of BookAppointmentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? idAppointment = null,Object? appointmentDateTime = null,Object? token = null,}) {
  return _then(RescheduleAppointment(
idAppointment: null == idAppointment ? _self.idAppointment : idAppointment // ignore: cast_nullable_to_non_nullable
as int,appointmentDateTime: null == appointmentDateTime ? _self.appointmentDateTime : appointmentDateTime // ignore: cast_nullable_to_non_nullable
as DateTime,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetAvailableSlots implements BookAppointmentEvent {
  const GetAvailableSlots({required this.idDoctor, required this.date, required this.token});
  

 final  int idDoctor;
 final  DateTime date;
 final  String token;

/// Create a copy of BookAppointmentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAvailableSlotsCopyWith<GetAvailableSlots> get copyWith => _$GetAvailableSlotsCopyWithImpl<GetAvailableSlots>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAvailableSlots&&(identical(other.idDoctor, idDoctor) || other.idDoctor == idDoctor)&&(identical(other.date, date) || other.date == date)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,idDoctor,date,token);

@override
String toString() {
  return 'BookAppointmentEvent.getAvailableSlots(idDoctor: $idDoctor, date: $date, token: $token)';
}


}

/// @nodoc
abstract mixin class $GetAvailableSlotsCopyWith<$Res> implements $BookAppointmentEventCopyWith<$Res> {
  factory $GetAvailableSlotsCopyWith(GetAvailableSlots value, $Res Function(GetAvailableSlots) _then) = _$GetAvailableSlotsCopyWithImpl;
@useResult
$Res call({
 int idDoctor, DateTime date, String token
});




}
/// @nodoc
class _$GetAvailableSlotsCopyWithImpl<$Res>
    implements $GetAvailableSlotsCopyWith<$Res> {
  _$GetAvailableSlotsCopyWithImpl(this._self, this._then);

  final GetAvailableSlots _self;
  final $Res Function(GetAvailableSlots) _then;

/// Create a copy of BookAppointmentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? idDoctor = null,Object? date = null,Object? token = null,}) {
  return _then(GetAvailableSlots(
idDoctor: null == idDoctor ? _self.idDoctor : idDoctor // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ChangeBookedSlotState implements BookAppointmentEvent {
  const ChangeBookedSlotState({required this.slotTime});
  

 final  DateTime slotTime;

/// Create a copy of BookAppointmentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeBookedSlotStateCopyWith<ChangeBookedSlotState> get copyWith => _$ChangeBookedSlotStateCopyWithImpl<ChangeBookedSlotState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeBookedSlotState&&(identical(other.slotTime, slotTime) || other.slotTime == slotTime));
}


@override
int get hashCode => Object.hash(runtimeType,slotTime);

@override
String toString() {
  return 'BookAppointmentEvent.changeBookedSlotState(slotTime: $slotTime)';
}


}

/// @nodoc
abstract mixin class $ChangeBookedSlotStateCopyWith<$Res> implements $BookAppointmentEventCopyWith<$Res> {
  factory $ChangeBookedSlotStateCopyWith(ChangeBookedSlotState value, $Res Function(ChangeBookedSlotState) _then) = _$ChangeBookedSlotStateCopyWithImpl;
@useResult
$Res call({
 DateTime slotTime
});




}
/// @nodoc
class _$ChangeBookedSlotStateCopyWithImpl<$Res>
    implements $ChangeBookedSlotStateCopyWith<$Res> {
  _$ChangeBookedSlotStateCopyWithImpl(this._self, this._then);

  final ChangeBookedSlotState _self;
  final $Res Function(ChangeBookedSlotState) _then;

/// Create a copy of BookAppointmentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? slotTime = null,}) {
  return _then(ChangeBookedSlotState(
slotTime: null == slotTime ? _self.slotTime : slotTime // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class ChangeRescheduledSlotState implements BookAppointmentEvent {
  const ChangeRescheduledSlotState({required this.oldSlot, required this.currentSlot});
  

 final  DateTime oldSlot;
 final  DateTime currentSlot;

/// Create a copy of BookAppointmentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeRescheduledSlotStateCopyWith<ChangeRescheduledSlotState> get copyWith => _$ChangeRescheduledSlotStateCopyWithImpl<ChangeRescheduledSlotState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeRescheduledSlotState&&(identical(other.oldSlot, oldSlot) || other.oldSlot == oldSlot)&&(identical(other.currentSlot, currentSlot) || other.currentSlot == currentSlot));
}


@override
int get hashCode => Object.hash(runtimeType,oldSlot,currentSlot);

@override
String toString() {
  return 'BookAppointmentEvent.changeRescheduledSlotState(oldSlot: $oldSlot, currentSlot: $currentSlot)';
}


}

/// @nodoc
abstract mixin class $ChangeRescheduledSlotStateCopyWith<$Res> implements $BookAppointmentEventCopyWith<$Res> {
  factory $ChangeRescheduledSlotStateCopyWith(ChangeRescheduledSlotState value, $Res Function(ChangeRescheduledSlotState) _then) = _$ChangeRescheduledSlotStateCopyWithImpl;
@useResult
$Res call({
 DateTime oldSlot, DateTime currentSlot
});




}
/// @nodoc
class _$ChangeRescheduledSlotStateCopyWithImpl<$Res>
    implements $ChangeRescheduledSlotStateCopyWith<$Res> {
  _$ChangeRescheduledSlotStateCopyWithImpl(this._self, this._then);

  final ChangeRescheduledSlotState _self;
  final $Res Function(ChangeRescheduledSlotState) _then;

/// Create a copy of BookAppointmentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? oldSlot = null,Object? currentSlot = null,}) {
  return _then(ChangeRescheduledSlotState(
oldSlot: null == oldSlot ? _self.oldSlot : oldSlot // ignore: cast_nullable_to_non_nullable
as DateTime,currentSlot: null == currentSlot ? _self.currentSlot : currentSlot // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc
mixin _$BookAppointmentState {

 bool get isAppointmentLoading; bool get isAppointmentSavingSuccses; bool get isAppointmentSavingFailure; bool get isSlotLoading; bool get isFetchingSuccses; bool get isFetchingError; ErrorModel get error; AppointmentModel? get appointmentDetails; Shift get shift;
/// Create a copy of BookAppointmentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookAppointmentStateCopyWith<BookAppointmentState> get copyWith => _$BookAppointmentStateCopyWithImpl<BookAppointmentState>(this as BookAppointmentState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookAppointmentState&&(identical(other.isAppointmentLoading, isAppointmentLoading) || other.isAppointmentLoading == isAppointmentLoading)&&(identical(other.isAppointmentSavingSuccses, isAppointmentSavingSuccses) || other.isAppointmentSavingSuccses == isAppointmentSavingSuccses)&&(identical(other.isAppointmentSavingFailure, isAppointmentSavingFailure) || other.isAppointmentSavingFailure == isAppointmentSavingFailure)&&(identical(other.isSlotLoading, isSlotLoading) || other.isSlotLoading == isSlotLoading)&&(identical(other.isFetchingSuccses, isFetchingSuccses) || other.isFetchingSuccses == isFetchingSuccses)&&(identical(other.isFetchingError, isFetchingError) || other.isFetchingError == isFetchingError)&&(identical(other.error, error) || other.error == error)&&(identical(other.appointmentDetails, appointmentDetails) || other.appointmentDetails == appointmentDetails)&&(identical(other.shift, shift) || other.shift == shift));
}


@override
int get hashCode => Object.hash(runtimeType,isAppointmentLoading,isAppointmentSavingSuccses,isAppointmentSavingFailure,isSlotLoading,isFetchingSuccses,isFetchingError,error,appointmentDetails,shift);

@override
String toString() {
  return 'BookAppointmentState(isAppointmentLoading: $isAppointmentLoading, isAppointmentSavingSuccses: $isAppointmentSavingSuccses, isAppointmentSavingFailure: $isAppointmentSavingFailure, isSlotLoading: $isSlotLoading, isFetchingSuccses: $isFetchingSuccses, isFetchingError: $isFetchingError, error: $error, appointmentDetails: $appointmentDetails, shift: $shift)';
}


}

/// @nodoc
abstract mixin class $BookAppointmentStateCopyWith<$Res>  {
  factory $BookAppointmentStateCopyWith(BookAppointmentState value, $Res Function(BookAppointmentState) _then) = _$BookAppointmentStateCopyWithImpl;
@useResult
$Res call({
 bool isAppointmentLoading, bool isAppointmentSavingSuccses, bool isAppointmentSavingFailure, bool isSlotLoading, bool isFetchingSuccses, bool isFetchingError, ErrorModel error, AppointmentModel? appointmentDetails, Shift shift
});


$ErrorModelCopyWith<$Res> get error;$AppointmentModelCopyWith<$Res>? get appointmentDetails;$ShiftCopyWith<$Res> get shift;

}
/// @nodoc
class _$BookAppointmentStateCopyWithImpl<$Res>
    implements $BookAppointmentStateCopyWith<$Res> {
  _$BookAppointmentStateCopyWithImpl(this._self, this._then);

  final BookAppointmentState _self;
  final $Res Function(BookAppointmentState) _then;

/// Create a copy of BookAppointmentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isAppointmentLoading = null,Object? isAppointmentSavingSuccses = null,Object? isAppointmentSavingFailure = null,Object? isSlotLoading = null,Object? isFetchingSuccses = null,Object? isFetchingError = null,Object? error = null,Object? appointmentDetails = freezed,Object? shift = null,}) {
  return _then(_self.copyWith(
isAppointmentLoading: null == isAppointmentLoading ? _self.isAppointmentLoading : isAppointmentLoading // ignore: cast_nullable_to_non_nullable
as bool,isAppointmentSavingSuccses: null == isAppointmentSavingSuccses ? _self.isAppointmentSavingSuccses : isAppointmentSavingSuccses // ignore: cast_nullable_to_non_nullable
as bool,isAppointmentSavingFailure: null == isAppointmentSavingFailure ? _self.isAppointmentSavingFailure : isAppointmentSavingFailure // ignore: cast_nullable_to_non_nullable
as bool,isSlotLoading: null == isSlotLoading ? _self.isSlotLoading : isSlotLoading // ignore: cast_nullable_to_non_nullable
as bool,isFetchingSuccses: null == isFetchingSuccses ? _self.isFetchingSuccses : isFetchingSuccses // ignore: cast_nullable_to_non_nullable
as bool,isFetchingError: null == isFetchingError ? _self.isFetchingError : isFetchingError // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,appointmentDetails: freezed == appointmentDetails ? _self.appointmentDetails : appointmentDetails // ignore: cast_nullable_to_non_nullable
as AppointmentModel?,shift: null == shift ? _self.shift : shift // ignore: cast_nullable_to_non_nullable
as Shift,
  ));
}
/// Create a copy of BookAppointmentState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ErrorModelCopyWith<$Res> get error {
  
  return $ErrorModelCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}/// Create a copy of BookAppointmentState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppointmentModelCopyWith<$Res>? get appointmentDetails {
    if (_self.appointmentDetails == null) {
    return null;
  }

  return $AppointmentModelCopyWith<$Res>(_self.appointmentDetails!, (value) {
    return _then(_self.copyWith(appointmentDetails: value));
  });
}/// Create a copy of BookAppointmentState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShiftCopyWith<$Res> get shift {
  
  return $ShiftCopyWith<$Res>(_self.shift, (value) {
    return _then(_self.copyWith(shift: value));
  });
}
}


/// Adds pattern-matching-related methods to [BookAppointmentState].
extension BookAppointmentStatePatterns on BookAppointmentState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookAppointmentState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookAppointmentState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookAppointmentState value)  $default,){
final _that = this;
switch (_that) {
case _BookAppointmentState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookAppointmentState value)?  $default,){
final _that = this;
switch (_that) {
case _BookAppointmentState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isAppointmentLoading,  bool isAppointmentSavingSuccses,  bool isAppointmentSavingFailure,  bool isSlotLoading,  bool isFetchingSuccses,  bool isFetchingError,  ErrorModel error,  AppointmentModel? appointmentDetails,  Shift shift)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookAppointmentState() when $default != null:
return $default(_that.isAppointmentLoading,_that.isAppointmentSavingSuccses,_that.isAppointmentSavingFailure,_that.isSlotLoading,_that.isFetchingSuccses,_that.isFetchingError,_that.error,_that.appointmentDetails,_that.shift);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isAppointmentLoading,  bool isAppointmentSavingSuccses,  bool isAppointmentSavingFailure,  bool isSlotLoading,  bool isFetchingSuccses,  bool isFetchingError,  ErrorModel error,  AppointmentModel? appointmentDetails,  Shift shift)  $default,) {final _that = this;
switch (_that) {
case _BookAppointmentState():
return $default(_that.isAppointmentLoading,_that.isAppointmentSavingSuccses,_that.isAppointmentSavingFailure,_that.isSlotLoading,_that.isFetchingSuccses,_that.isFetchingError,_that.error,_that.appointmentDetails,_that.shift);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isAppointmentLoading,  bool isAppointmentSavingSuccses,  bool isAppointmentSavingFailure,  bool isSlotLoading,  bool isFetchingSuccses,  bool isFetchingError,  ErrorModel error,  AppointmentModel? appointmentDetails,  Shift shift)?  $default,) {final _that = this;
switch (_that) {
case _BookAppointmentState() when $default != null:
return $default(_that.isAppointmentLoading,_that.isAppointmentSavingSuccses,_that.isAppointmentSavingFailure,_that.isSlotLoading,_that.isFetchingSuccses,_that.isFetchingError,_that.error,_that.appointmentDetails,_that.shift);case _:
  return null;

}
}

}

/// @nodoc


class _BookAppointmentState implements BookAppointmentState {
  const _BookAppointmentState({required this.isAppointmentLoading, required this.isAppointmentSavingSuccses, required this.isAppointmentSavingFailure, required this.isSlotLoading, required this.isFetchingSuccses, required this.isFetchingError, required this.error, required this.appointmentDetails, required this.shift});
  

@override final  bool isAppointmentLoading;
@override final  bool isAppointmentSavingSuccses;
@override final  bool isAppointmentSavingFailure;
@override final  bool isSlotLoading;
@override final  bool isFetchingSuccses;
@override final  bool isFetchingError;
@override final  ErrorModel error;
@override final  AppointmentModel? appointmentDetails;
@override final  Shift shift;

/// Create a copy of BookAppointmentState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookAppointmentStateCopyWith<_BookAppointmentState> get copyWith => __$BookAppointmentStateCopyWithImpl<_BookAppointmentState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookAppointmentState&&(identical(other.isAppointmentLoading, isAppointmentLoading) || other.isAppointmentLoading == isAppointmentLoading)&&(identical(other.isAppointmentSavingSuccses, isAppointmentSavingSuccses) || other.isAppointmentSavingSuccses == isAppointmentSavingSuccses)&&(identical(other.isAppointmentSavingFailure, isAppointmentSavingFailure) || other.isAppointmentSavingFailure == isAppointmentSavingFailure)&&(identical(other.isSlotLoading, isSlotLoading) || other.isSlotLoading == isSlotLoading)&&(identical(other.isFetchingSuccses, isFetchingSuccses) || other.isFetchingSuccses == isFetchingSuccses)&&(identical(other.isFetchingError, isFetchingError) || other.isFetchingError == isFetchingError)&&(identical(other.error, error) || other.error == error)&&(identical(other.appointmentDetails, appointmentDetails) || other.appointmentDetails == appointmentDetails)&&(identical(other.shift, shift) || other.shift == shift));
}


@override
int get hashCode => Object.hash(runtimeType,isAppointmentLoading,isAppointmentSavingSuccses,isAppointmentSavingFailure,isSlotLoading,isFetchingSuccses,isFetchingError,error,appointmentDetails,shift);

@override
String toString() {
  return 'BookAppointmentState(isAppointmentLoading: $isAppointmentLoading, isAppointmentSavingSuccses: $isAppointmentSavingSuccses, isAppointmentSavingFailure: $isAppointmentSavingFailure, isSlotLoading: $isSlotLoading, isFetchingSuccses: $isFetchingSuccses, isFetchingError: $isFetchingError, error: $error, appointmentDetails: $appointmentDetails, shift: $shift)';
}


}

/// @nodoc
abstract mixin class _$BookAppointmentStateCopyWith<$Res> implements $BookAppointmentStateCopyWith<$Res> {
  factory _$BookAppointmentStateCopyWith(_BookAppointmentState value, $Res Function(_BookAppointmentState) _then) = __$BookAppointmentStateCopyWithImpl;
@override @useResult
$Res call({
 bool isAppointmentLoading, bool isAppointmentSavingSuccses, bool isAppointmentSavingFailure, bool isSlotLoading, bool isFetchingSuccses, bool isFetchingError, ErrorModel error, AppointmentModel? appointmentDetails, Shift shift
});


@override $ErrorModelCopyWith<$Res> get error;@override $AppointmentModelCopyWith<$Res>? get appointmentDetails;@override $ShiftCopyWith<$Res> get shift;

}
/// @nodoc
class __$BookAppointmentStateCopyWithImpl<$Res>
    implements _$BookAppointmentStateCopyWith<$Res> {
  __$BookAppointmentStateCopyWithImpl(this._self, this._then);

  final _BookAppointmentState _self;
  final $Res Function(_BookAppointmentState) _then;

/// Create a copy of BookAppointmentState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isAppointmentLoading = null,Object? isAppointmentSavingSuccses = null,Object? isAppointmentSavingFailure = null,Object? isSlotLoading = null,Object? isFetchingSuccses = null,Object? isFetchingError = null,Object? error = null,Object? appointmentDetails = freezed,Object? shift = null,}) {
  return _then(_BookAppointmentState(
isAppointmentLoading: null == isAppointmentLoading ? _self.isAppointmentLoading : isAppointmentLoading // ignore: cast_nullable_to_non_nullable
as bool,isAppointmentSavingSuccses: null == isAppointmentSavingSuccses ? _self.isAppointmentSavingSuccses : isAppointmentSavingSuccses // ignore: cast_nullable_to_non_nullable
as bool,isAppointmentSavingFailure: null == isAppointmentSavingFailure ? _self.isAppointmentSavingFailure : isAppointmentSavingFailure // ignore: cast_nullable_to_non_nullable
as bool,isSlotLoading: null == isSlotLoading ? _self.isSlotLoading : isSlotLoading // ignore: cast_nullable_to_non_nullable
as bool,isFetchingSuccses: null == isFetchingSuccses ? _self.isFetchingSuccses : isFetchingSuccses // ignore: cast_nullable_to_non_nullable
as bool,isFetchingError: null == isFetchingError ? _self.isFetchingError : isFetchingError // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,appointmentDetails: freezed == appointmentDetails ? _self.appointmentDetails : appointmentDetails // ignore: cast_nullable_to_non_nullable
as AppointmentModel?,shift: null == shift ? _self.shift : shift // ignore: cast_nullable_to_non_nullable
as Shift,
  ));
}

/// Create a copy of BookAppointmentState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ErrorModelCopyWith<$Res> get error {
  
  return $ErrorModelCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}/// Create a copy of BookAppointmentState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppointmentModelCopyWith<$Res>? get appointmentDetails {
    if (_self.appointmentDetails == null) {
    return null;
  }

  return $AppointmentModelCopyWith<$Res>(_self.appointmentDetails!, (value) {
    return _then(_self.copyWith(appointmentDetails: value));
  });
}/// Create a copy of BookAppointmentState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShiftCopyWith<$Res> get shift {
  
  return $ShiftCopyWith<$Res>(_self.shift, (value) {
    return _then(_self.copyWith(shift: value));
  });
}
}

// dart format on
