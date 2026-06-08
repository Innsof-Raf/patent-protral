// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppointmentEvent {

 DateTime get appointmentDateTime; String get token;
/// Create a copy of AppointmentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppointmentEventCopyWith<AppointmentEvent> get copyWith => _$AppointmentEventCopyWithImpl<AppointmentEvent>(this as AppointmentEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentEvent&&(identical(other.appointmentDateTime, appointmentDateTime) || other.appointmentDateTime == appointmentDateTime)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,appointmentDateTime,token);

@override
String toString() {
  return 'AppointmentEvent(appointmentDateTime: $appointmentDateTime, token: $token)';
}


}

/// @nodoc
abstract mixin class $AppointmentEventCopyWith<$Res>  {
  factory $AppointmentEventCopyWith(AppointmentEvent value, $Res Function(AppointmentEvent) _then) = _$AppointmentEventCopyWithImpl;
@useResult
$Res call({
 DateTime appointmentDateTime, String token
});




}
/// @nodoc
class _$AppointmentEventCopyWithImpl<$Res>
    implements $AppointmentEventCopyWith<$Res> {
  _$AppointmentEventCopyWithImpl(this._self, this._then);

  final AppointmentEvent _self;
  final $Res Function(AppointmentEvent) _then;

/// Create a copy of AppointmentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? appointmentDateTime = null,Object? token = null,}) {
  return _then(_self.copyWith(
appointmentDateTime: null == appointmentDateTime ? _self.appointmentDateTime : appointmentDateTime // ignore: cast_nullable_to_non_nullable
as DateTime,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AppointmentEvent].
extension AppointmentEventPatterns on AppointmentEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( BookNewAppointment value)?  bookNewAppointment,TResult Function( ResheduleAppointment value)?  resheduleAppointment,required TResult orElse(),}){
final _that = this;
switch (_that) {
case BookNewAppointment() when bookNewAppointment != null:
return bookNewAppointment(_that);case ResheduleAppointment() when resheduleAppointment != null:
return resheduleAppointment(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( BookNewAppointment value)  bookNewAppointment,required TResult Function( ResheduleAppointment value)  resheduleAppointment,}){
final _that = this;
switch (_that) {
case BookNewAppointment():
return bookNewAppointment(_that);case ResheduleAppointment():
return resheduleAppointment(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( BookNewAppointment value)?  bookNewAppointment,TResult? Function( ResheduleAppointment value)?  resheduleAppointment,}){
final _that = this;
switch (_that) {
case BookNewAppointment() when bookNewAppointment != null:
return bookNewAppointment(_that);case ResheduleAppointment() when resheduleAppointment != null:
return resheduleAppointment(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int idDoctor,  DateTime appointmentDateTime,  String mobileNo,  int idMember,  String token)?  bookNewAppointment,TResult Function( int idAppointment,  DateTime appointmentDateTime,  String token)?  resheduleAppointment,required TResult orElse(),}) {final _that = this;
switch (_that) {
case BookNewAppointment() when bookNewAppointment != null:
return bookNewAppointment(_that.idDoctor,_that.appointmentDateTime,_that.mobileNo,_that.idMember,_that.token);case ResheduleAppointment() when resheduleAppointment != null:
return resheduleAppointment(_that.idAppointment,_that.appointmentDateTime,_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int idDoctor,  DateTime appointmentDateTime,  String mobileNo,  int idMember,  String token)  bookNewAppointment,required TResult Function( int idAppointment,  DateTime appointmentDateTime,  String token)  resheduleAppointment,}) {final _that = this;
switch (_that) {
case BookNewAppointment():
return bookNewAppointment(_that.idDoctor,_that.appointmentDateTime,_that.mobileNo,_that.idMember,_that.token);case ResheduleAppointment():
return resheduleAppointment(_that.idAppointment,_that.appointmentDateTime,_that.token);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int idDoctor,  DateTime appointmentDateTime,  String mobileNo,  int idMember,  String token)?  bookNewAppointment,TResult? Function( int idAppointment,  DateTime appointmentDateTime,  String token)?  resheduleAppointment,}) {final _that = this;
switch (_that) {
case BookNewAppointment() when bookNewAppointment != null:
return bookNewAppointment(_that.idDoctor,_that.appointmentDateTime,_that.mobileNo,_that.idMember,_that.token);case ResheduleAppointment() when resheduleAppointment != null:
return resheduleAppointment(_that.idAppointment,_that.appointmentDateTime,_that.token);case _:
  return null;

}
}

}

/// @nodoc


class BookNewAppointment implements AppointmentEvent {
  const BookNewAppointment({required this.idDoctor, required this.appointmentDateTime, required this.mobileNo, required this.idMember, required this.token});
  

 final  int idDoctor;
@override final  DateTime appointmentDateTime;
 final  String mobileNo;
 final  int idMember;
@override final  String token;

/// Create a copy of AppointmentEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
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
  return 'AppointmentEvent.bookNewAppointment(idDoctor: $idDoctor, appointmentDateTime: $appointmentDateTime, mobileNo: $mobileNo, idMember: $idMember, token: $token)';
}


}

/// @nodoc
abstract mixin class $BookNewAppointmentCopyWith<$Res> implements $AppointmentEventCopyWith<$Res> {
  factory $BookNewAppointmentCopyWith(BookNewAppointment value, $Res Function(BookNewAppointment) _then) = _$BookNewAppointmentCopyWithImpl;
@override @useResult
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

/// Create a copy of AppointmentEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idDoctor = null,Object? appointmentDateTime = null,Object? mobileNo = null,Object? idMember = null,Object? token = null,}) {
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


class ResheduleAppointment implements AppointmentEvent {
  const ResheduleAppointment({required this.idAppointment, required this.appointmentDateTime, required this.token});
  

 final  int idAppointment;
@override final  DateTime appointmentDateTime;
@override final  String token;

/// Create a copy of AppointmentEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResheduleAppointmentCopyWith<ResheduleAppointment> get copyWith => _$ResheduleAppointmentCopyWithImpl<ResheduleAppointment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResheduleAppointment&&(identical(other.idAppointment, idAppointment) || other.idAppointment == idAppointment)&&(identical(other.appointmentDateTime, appointmentDateTime) || other.appointmentDateTime == appointmentDateTime)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,idAppointment,appointmentDateTime,token);

@override
String toString() {
  return 'AppointmentEvent.resheduleAppointment(idAppointment: $idAppointment, appointmentDateTime: $appointmentDateTime, token: $token)';
}


}

/// @nodoc
abstract mixin class $ResheduleAppointmentCopyWith<$Res> implements $AppointmentEventCopyWith<$Res> {
  factory $ResheduleAppointmentCopyWith(ResheduleAppointment value, $Res Function(ResheduleAppointment) _then) = _$ResheduleAppointmentCopyWithImpl;
@override @useResult
$Res call({
 int idAppointment, DateTime appointmentDateTime, String token
});




}
/// @nodoc
class _$ResheduleAppointmentCopyWithImpl<$Res>
    implements $ResheduleAppointmentCopyWith<$Res> {
  _$ResheduleAppointmentCopyWithImpl(this._self, this._then);

  final ResheduleAppointment _self;
  final $Res Function(ResheduleAppointment) _then;

/// Create a copy of AppointmentEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idAppointment = null,Object? appointmentDateTime = null,Object? token = null,}) {
  return _then(ResheduleAppointment(
idAppointment: null == idAppointment ? _self.idAppointment : idAppointment // ignore: cast_nullable_to_non_nullable
as int,appointmentDateTime: null == appointmentDateTime ? _self.appointmentDateTime : appointmentDateTime // ignore: cast_nullable_to_non_nullable
as DateTime,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$AppointmentState {

 bool get isLoading; bool get isAppointmentSavingSuccses; bool get isAppointmentSavingFailure; ErrorModel get error; AppointmentModel? get appointmentDetails;
/// Create a copy of AppointmentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppointmentStateCopyWith<AppointmentState> get copyWith => _$AppointmentStateCopyWithImpl<AppointmentState>(this as AppointmentState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isAppointmentSavingSuccses, isAppointmentSavingSuccses) || other.isAppointmentSavingSuccses == isAppointmentSavingSuccses)&&(identical(other.isAppointmentSavingFailure, isAppointmentSavingFailure) || other.isAppointmentSavingFailure == isAppointmentSavingFailure)&&(identical(other.error, error) || other.error == error)&&(identical(other.appointmentDetails, appointmentDetails) || other.appointmentDetails == appointmentDetails));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isAppointmentSavingSuccses,isAppointmentSavingFailure,error,appointmentDetails);

@override
String toString() {
  return 'AppointmentState(isLoading: $isLoading, isAppointmentSavingSuccses: $isAppointmentSavingSuccses, isAppointmentSavingFailure: $isAppointmentSavingFailure, error: $error, appointmentDetails: $appointmentDetails)';
}


}

/// @nodoc
abstract mixin class $AppointmentStateCopyWith<$Res>  {
  factory $AppointmentStateCopyWith(AppointmentState value, $Res Function(AppointmentState) _then) = _$AppointmentStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isAppointmentSavingSuccses, bool isAppointmentSavingFailure, ErrorModel error, AppointmentModel? appointmentDetails
});


$AppointmentModelCopyWith<$Res>? get appointmentDetails;

}
/// @nodoc
class _$AppointmentStateCopyWithImpl<$Res>
    implements $AppointmentStateCopyWith<$Res> {
  _$AppointmentStateCopyWithImpl(this._self, this._then);

  final AppointmentState _self;
  final $Res Function(AppointmentState) _then;

/// Create a copy of AppointmentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isAppointmentSavingSuccses = null,Object? isAppointmentSavingFailure = null,Object? error = null,Object? appointmentDetails = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isAppointmentSavingSuccses: null == isAppointmentSavingSuccses ? _self.isAppointmentSavingSuccses : isAppointmentSavingSuccses // ignore: cast_nullable_to_non_nullable
as bool,isAppointmentSavingFailure: null == isAppointmentSavingFailure ? _self.isAppointmentSavingFailure : isAppointmentSavingFailure // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,appointmentDetails: freezed == appointmentDetails ? _self.appointmentDetails : appointmentDetails // ignore: cast_nullable_to_non_nullable
as AppointmentModel?,
  ));
}
/// Create a copy of AppointmentState
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
}
}


/// Adds pattern-matching-related methods to [AppointmentState].
extension AppointmentStatePatterns on AppointmentState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppointmentState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppointmentState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppointmentState value)  $default,){
final _that = this;
switch (_that) {
case _AppointmentState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppointmentState value)?  $default,){
final _that = this;
switch (_that) {
case _AppointmentState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isAppointmentSavingSuccses,  bool isAppointmentSavingFailure,  ErrorModel error,  AppointmentModel? appointmentDetails)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppointmentState() when $default != null:
return $default(_that.isLoading,_that.isAppointmentSavingSuccses,_that.isAppointmentSavingFailure,_that.error,_that.appointmentDetails);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isAppointmentSavingSuccses,  bool isAppointmentSavingFailure,  ErrorModel error,  AppointmentModel? appointmentDetails)  $default,) {final _that = this;
switch (_that) {
case _AppointmentState():
return $default(_that.isLoading,_that.isAppointmentSavingSuccses,_that.isAppointmentSavingFailure,_that.error,_that.appointmentDetails);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isAppointmentSavingSuccses,  bool isAppointmentSavingFailure,  ErrorModel error,  AppointmentModel? appointmentDetails)?  $default,) {final _that = this;
switch (_that) {
case _AppointmentState() when $default != null:
return $default(_that.isLoading,_that.isAppointmentSavingSuccses,_that.isAppointmentSavingFailure,_that.error,_that.appointmentDetails);case _:
  return null;

}
}

}

/// @nodoc


class _AppointmentState implements AppointmentState {
  const _AppointmentState({required this.isLoading, required this.isAppointmentSavingSuccses, required this.isAppointmentSavingFailure, required this.error, required this.appointmentDetails});
  

@override final  bool isLoading;
@override final  bool isAppointmentSavingSuccses;
@override final  bool isAppointmentSavingFailure;
@override final  ErrorModel error;
@override final  AppointmentModel? appointmentDetails;

/// Create a copy of AppointmentState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppointmentStateCopyWith<_AppointmentState> get copyWith => __$AppointmentStateCopyWithImpl<_AppointmentState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppointmentState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isAppointmentSavingSuccses, isAppointmentSavingSuccses) || other.isAppointmentSavingSuccses == isAppointmentSavingSuccses)&&(identical(other.isAppointmentSavingFailure, isAppointmentSavingFailure) || other.isAppointmentSavingFailure == isAppointmentSavingFailure)&&(identical(other.error, error) || other.error == error)&&(identical(other.appointmentDetails, appointmentDetails) || other.appointmentDetails == appointmentDetails));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isAppointmentSavingSuccses,isAppointmentSavingFailure,error,appointmentDetails);

@override
String toString() {
  return 'AppointmentState(isLoading: $isLoading, isAppointmentSavingSuccses: $isAppointmentSavingSuccses, isAppointmentSavingFailure: $isAppointmentSavingFailure, error: $error, appointmentDetails: $appointmentDetails)';
}


}

/// @nodoc
abstract mixin class _$AppointmentStateCopyWith<$Res> implements $AppointmentStateCopyWith<$Res> {
  factory _$AppointmentStateCopyWith(_AppointmentState value, $Res Function(_AppointmentState) _then) = __$AppointmentStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isAppointmentSavingSuccses, bool isAppointmentSavingFailure, ErrorModel error, AppointmentModel? appointmentDetails
});


@override $AppointmentModelCopyWith<$Res>? get appointmentDetails;

}
/// @nodoc
class __$AppointmentStateCopyWithImpl<$Res>
    implements _$AppointmentStateCopyWith<$Res> {
  __$AppointmentStateCopyWithImpl(this._self, this._then);

  final _AppointmentState _self;
  final $Res Function(_AppointmentState) _then;

/// Create a copy of AppointmentState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isAppointmentSavingSuccses = null,Object? isAppointmentSavingFailure = null,Object? error = null,Object? appointmentDetails = freezed,}) {
  return _then(_AppointmentState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isAppointmentSavingSuccses: null == isAppointmentSavingSuccses ? _self.isAppointmentSavingSuccses : isAppointmentSavingSuccses // ignore: cast_nullable_to_non_nullable
as bool,isAppointmentSavingFailure: null == isAppointmentSavingFailure ? _self.isAppointmentSavingFailure : isAppointmentSavingFailure // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,appointmentDetails: freezed == appointmentDetails ? _self.appointmentDetails : appointmentDetails // ignore: cast_nullable_to_non_nullable
as AppointmentModel?,
  ));
}

/// Create a copy of AppointmentState
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
}
}

// dart format on
