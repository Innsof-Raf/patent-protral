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

 MyAppointmentsParams get params;
/// Create a copy of MyAppointmentsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyAppointmentsEventCopyWith<MyAppointmentsEvent> get copyWith => _$MyAppointmentsEventCopyWithImpl<MyAppointmentsEvent>(this as MyAppointmentsEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyAppointmentsEvent&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'MyAppointmentsEvent(params: $params)';
}


}

/// @nodoc
abstract mixin class $MyAppointmentsEventCopyWith<$Res>  {
  factory $MyAppointmentsEventCopyWith(MyAppointmentsEvent value, $Res Function(MyAppointmentsEvent) _then) = _$MyAppointmentsEventCopyWithImpl;
@useResult
$Res call({
 MyAppointmentsParams params
});


$MyAppointmentsParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$MyAppointmentsEventCopyWithImpl<$Res>
    implements $MyAppointmentsEventCopyWith<$Res> {
  _$MyAppointmentsEventCopyWithImpl(this._self, this._then);

  final MyAppointmentsEvent _self;
  final $Res Function(MyAppointmentsEvent) _then;

/// Create a copy of MyAppointmentsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? params = null,}) {
  return _then(_self.copyWith(
params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as MyAppointmentsParams,
  ));
}
/// Create a copy of MyAppointmentsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyAppointmentsParamsCopyWith<$Res> get params {
  
  return $MyAppointmentsParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetMyAppointments value)?  getMyAppointments,TResult Function( StoreBookedAppointment value)?  storeBookedAppointment,TResult Function( ChangeRescheduledAppointmentDetails value)?  changeRescheduledAppointmentDetails,TResult Function( CancelAppointment value)?  cancelAppointment,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetMyAppointments() when getMyAppointments != null:
return getMyAppointments(_that);case StoreBookedAppointment() when storeBookedAppointment != null:
return storeBookedAppointment(_that);case ChangeRescheduledAppointmentDetails() when changeRescheduledAppointmentDetails != null:
return changeRescheduledAppointmentDetails(_that);case CancelAppointment() when cancelAppointment != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetMyAppointments value)  getMyAppointments,required TResult Function( StoreBookedAppointment value)  storeBookedAppointment,required TResult Function( ChangeRescheduledAppointmentDetails value)  changeRescheduledAppointmentDetails,required TResult Function( CancelAppointment value)  cancelAppointment,}){
final _that = this;
switch (_that) {
case GetMyAppointments():
return getMyAppointments(_that);case StoreBookedAppointment():
return storeBookedAppointment(_that);case ChangeRescheduledAppointmentDetails():
return changeRescheduledAppointmentDetails(_that);case CancelAppointment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetMyAppointments value)?  getMyAppointments,TResult? Function( StoreBookedAppointment value)?  storeBookedAppointment,TResult? Function( ChangeRescheduledAppointmentDetails value)?  changeRescheduledAppointmentDetails,TResult? Function( CancelAppointment value)?  cancelAppointment,}){
final _that = this;
switch (_that) {
case GetMyAppointments() when getMyAppointments != null:
return getMyAppointments(_that);case StoreBookedAppointment() when storeBookedAppointment != null:
return storeBookedAppointment(_that);case ChangeRescheduledAppointmentDetails() when changeRescheduledAppointmentDetails != null:
return changeRescheduledAppointmentDetails(_that);case CancelAppointment() when cancelAppointment != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( MyAppointmentsParams params)?  getMyAppointments,TResult Function( MyAppointmentsParams params)?  storeBookedAppointment,TResult Function( MyAppointmentsParams params)?  changeRescheduledAppointmentDetails,TResult Function( MyAppointmentsParams params)?  cancelAppointment,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetMyAppointments() when getMyAppointments != null:
return getMyAppointments(_that.params);case StoreBookedAppointment() when storeBookedAppointment != null:
return storeBookedAppointment(_that.params);case ChangeRescheduledAppointmentDetails() when changeRescheduledAppointmentDetails != null:
return changeRescheduledAppointmentDetails(_that.params);case CancelAppointment() when cancelAppointment != null:
return cancelAppointment(_that.params);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( MyAppointmentsParams params)  getMyAppointments,required TResult Function( MyAppointmentsParams params)  storeBookedAppointment,required TResult Function( MyAppointmentsParams params)  changeRescheduledAppointmentDetails,required TResult Function( MyAppointmentsParams params)  cancelAppointment,}) {final _that = this;
switch (_that) {
case GetMyAppointments():
return getMyAppointments(_that.params);case StoreBookedAppointment():
return storeBookedAppointment(_that.params);case ChangeRescheduledAppointmentDetails():
return changeRescheduledAppointmentDetails(_that.params);case CancelAppointment():
return cancelAppointment(_that.params);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( MyAppointmentsParams params)?  getMyAppointments,TResult? Function( MyAppointmentsParams params)?  storeBookedAppointment,TResult? Function( MyAppointmentsParams params)?  changeRescheduledAppointmentDetails,TResult? Function( MyAppointmentsParams params)?  cancelAppointment,}) {final _that = this;
switch (_that) {
case GetMyAppointments() when getMyAppointments != null:
return getMyAppointments(_that.params);case StoreBookedAppointment() when storeBookedAppointment != null:
return storeBookedAppointment(_that.params);case ChangeRescheduledAppointmentDetails() when changeRescheduledAppointmentDetails != null:
return changeRescheduledAppointmentDetails(_that.params);case CancelAppointment() when cancelAppointment != null:
return cancelAppointment(_that.params);case _:
  return null;

}
}

}

/// @nodoc


class GetMyAppointments implements MyAppointmentsEvent {
  const GetMyAppointments({required this.params});
  

@override final  MyAppointmentsParams params;

/// Create a copy of MyAppointmentsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetMyAppointmentsCopyWith<GetMyAppointments> get copyWith => _$GetMyAppointmentsCopyWithImpl<GetMyAppointments>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetMyAppointments&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'MyAppointmentsEvent.getMyAppointments(params: $params)';
}


}

/// @nodoc
abstract mixin class $GetMyAppointmentsCopyWith<$Res> implements $MyAppointmentsEventCopyWith<$Res> {
  factory $GetMyAppointmentsCopyWith(GetMyAppointments value, $Res Function(GetMyAppointments) _then) = _$GetMyAppointmentsCopyWithImpl;
@override @useResult
$Res call({
 MyAppointmentsParams params
});


@override $MyAppointmentsParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$GetMyAppointmentsCopyWithImpl<$Res>
    implements $GetMyAppointmentsCopyWith<$Res> {
  _$GetMyAppointmentsCopyWithImpl(this._self, this._then);

  final GetMyAppointments _self;
  final $Res Function(GetMyAppointments) _then;

/// Create a copy of MyAppointmentsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(GetMyAppointments(
params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as MyAppointmentsParams,
  ));
}

/// Create a copy of MyAppointmentsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyAppointmentsParamsCopyWith<$Res> get params {
  
  return $MyAppointmentsParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc


class StoreBookedAppointment implements MyAppointmentsEvent {
  const StoreBookedAppointment({required this.params});
  

@override final  MyAppointmentsParams params;

/// Create a copy of MyAppointmentsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreBookedAppointmentCopyWith<StoreBookedAppointment> get copyWith => _$StoreBookedAppointmentCopyWithImpl<StoreBookedAppointment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreBookedAppointment&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'MyAppointmentsEvent.storeBookedAppointment(params: $params)';
}


}

/// @nodoc
abstract mixin class $StoreBookedAppointmentCopyWith<$Res> implements $MyAppointmentsEventCopyWith<$Res> {
  factory $StoreBookedAppointmentCopyWith(StoreBookedAppointment value, $Res Function(StoreBookedAppointment) _then) = _$StoreBookedAppointmentCopyWithImpl;
@override @useResult
$Res call({
 MyAppointmentsParams params
});


@override $MyAppointmentsParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$StoreBookedAppointmentCopyWithImpl<$Res>
    implements $StoreBookedAppointmentCopyWith<$Res> {
  _$StoreBookedAppointmentCopyWithImpl(this._self, this._then);

  final StoreBookedAppointment _self;
  final $Res Function(StoreBookedAppointment) _then;

/// Create a copy of MyAppointmentsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(StoreBookedAppointment(
params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as MyAppointmentsParams,
  ));
}

/// Create a copy of MyAppointmentsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyAppointmentsParamsCopyWith<$Res> get params {
  
  return $MyAppointmentsParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc


class ChangeRescheduledAppointmentDetails implements MyAppointmentsEvent {
  const ChangeRescheduledAppointmentDetails({required this.params});
  

@override final  MyAppointmentsParams params;

/// Create a copy of MyAppointmentsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeRescheduledAppointmentDetailsCopyWith<ChangeRescheduledAppointmentDetails> get copyWith => _$ChangeRescheduledAppointmentDetailsCopyWithImpl<ChangeRescheduledAppointmentDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeRescheduledAppointmentDetails&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'MyAppointmentsEvent.changeRescheduledAppointmentDetails(params: $params)';
}


}

/// @nodoc
abstract mixin class $ChangeRescheduledAppointmentDetailsCopyWith<$Res> implements $MyAppointmentsEventCopyWith<$Res> {
  factory $ChangeRescheduledAppointmentDetailsCopyWith(ChangeRescheduledAppointmentDetails value, $Res Function(ChangeRescheduledAppointmentDetails) _then) = _$ChangeRescheduledAppointmentDetailsCopyWithImpl;
@override @useResult
$Res call({
 MyAppointmentsParams params
});


@override $MyAppointmentsParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$ChangeRescheduledAppointmentDetailsCopyWithImpl<$Res>
    implements $ChangeRescheduledAppointmentDetailsCopyWith<$Res> {
  _$ChangeRescheduledAppointmentDetailsCopyWithImpl(this._self, this._then);

  final ChangeRescheduledAppointmentDetails _self;
  final $Res Function(ChangeRescheduledAppointmentDetails) _then;

/// Create a copy of MyAppointmentsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(ChangeRescheduledAppointmentDetails(
params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as MyAppointmentsParams,
  ));
}

/// Create a copy of MyAppointmentsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyAppointmentsParamsCopyWith<$Res> get params {
  
  return $MyAppointmentsParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc


class CancelAppointment implements MyAppointmentsEvent {
  const CancelAppointment({required this.params});
  

@override final  MyAppointmentsParams params;

/// Create a copy of MyAppointmentsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CancelAppointmentCopyWith<CancelAppointment> get copyWith => _$CancelAppointmentCopyWithImpl<CancelAppointment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CancelAppointment&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'MyAppointmentsEvent.cancelAppointment(params: $params)';
}


}

/// @nodoc
abstract mixin class $CancelAppointmentCopyWith<$Res> implements $MyAppointmentsEventCopyWith<$Res> {
  factory $CancelAppointmentCopyWith(CancelAppointment value, $Res Function(CancelAppointment) _then) = _$CancelAppointmentCopyWithImpl;
@override @useResult
$Res call({
 MyAppointmentsParams params
});


@override $MyAppointmentsParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$CancelAppointmentCopyWithImpl<$Res>
    implements $CancelAppointmentCopyWith<$Res> {
  _$CancelAppointmentCopyWithImpl(this._self, this._then);

  final CancelAppointment _self;
  final $Res Function(CancelAppointment) _then;

/// Create a copy of MyAppointmentsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(CancelAppointment(
params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as MyAppointmentsParams,
  ));
}

/// Create a copy of MyAppointmentsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyAppointmentsParamsCopyWith<$Res> get params {
  
  return $MyAppointmentsParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc
mixin _$MyAppointmentsState {

 bool get isAppointmentsFetching; bool get isAppointmentsFetchingFailed; bool get isAppointmentsFetchingSuccess; ErrorModel get error; List<DateTime> get monthTimelineListOfNotConsulted; List<MyAppointment> get myNotConsultedAppointments; List<DateTime> get monthTimelineListOfConsulted; List<MyAppointment> get myConsultedAppointments; List<DateTime> get monthTimelineList; bool get isAppointmentsCancellationFailed; bool get isAppointmentsCancellationSuccess; List<MyAppointment> get myAppointments;
/// Create a copy of MyAppointmentsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyAppointmentsStateCopyWith<MyAppointmentsState> get copyWith => _$MyAppointmentsStateCopyWithImpl<MyAppointmentsState>(this as MyAppointmentsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyAppointmentsState&&(identical(other.isAppointmentsFetching, isAppointmentsFetching) || other.isAppointmentsFetching == isAppointmentsFetching)&&(identical(other.isAppointmentsFetchingFailed, isAppointmentsFetchingFailed) || other.isAppointmentsFetchingFailed == isAppointmentsFetchingFailed)&&(identical(other.isAppointmentsFetchingSuccess, isAppointmentsFetchingSuccess) || other.isAppointmentsFetchingSuccess == isAppointmentsFetchingSuccess)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other.monthTimelineListOfNotConsulted, monthTimelineListOfNotConsulted)&&const DeepCollectionEquality().equals(other.myNotConsultedAppointments, myNotConsultedAppointments)&&const DeepCollectionEquality().equals(other.monthTimelineListOfConsulted, monthTimelineListOfConsulted)&&const DeepCollectionEquality().equals(other.myConsultedAppointments, myConsultedAppointments)&&const DeepCollectionEquality().equals(other.monthTimelineList, monthTimelineList)&&(identical(other.isAppointmentsCancellationFailed, isAppointmentsCancellationFailed) || other.isAppointmentsCancellationFailed == isAppointmentsCancellationFailed)&&(identical(other.isAppointmentsCancellationSuccess, isAppointmentsCancellationSuccess) || other.isAppointmentsCancellationSuccess == isAppointmentsCancellationSuccess)&&const DeepCollectionEquality().equals(other.myAppointments, myAppointments));
}


@override
int get hashCode => Object.hash(runtimeType,isAppointmentsFetching,isAppointmentsFetchingFailed,isAppointmentsFetchingSuccess,error,const DeepCollectionEquality().hash(monthTimelineListOfNotConsulted),const DeepCollectionEquality().hash(myNotConsultedAppointments),const DeepCollectionEquality().hash(monthTimelineListOfConsulted),const DeepCollectionEquality().hash(myConsultedAppointments),const DeepCollectionEquality().hash(monthTimelineList),isAppointmentsCancellationFailed,isAppointmentsCancellationSuccess,const DeepCollectionEquality().hash(myAppointments));

@override
String toString() {
  return 'MyAppointmentsState(isAppointmentsFetching: $isAppointmentsFetching, isAppointmentsFetchingFailed: $isAppointmentsFetchingFailed, isAppointmentsFetchingSuccess: $isAppointmentsFetchingSuccess, error: $error, monthTimelineListOfNotConsulted: $monthTimelineListOfNotConsulted, myNotConsultedAppointments: $myNotConsultedAppointments, monthTimelineListOfConsulted: $monthTimelineListOfConsulted, myConsultedAppointments: $myConsultedAppointments, monthTimelineList: $monthTimelineList, isAppointmentsCancellationFailed: $isAppointmentsCancellationFailed, isAppointmentsCancellationSuccess: $isAppointmentsCancellationSuccess, myAppointments: $myAppointments)';
}


}

/// @nodoc
abstract mixin class $MyAppointmentsStateCopyWith<$Res>  {
  factory $MyAppointmentsStateCopyWith(MyAppointmentsState value, $Res Function(MyAppointmentsState) _then) = _$MyAppointmentsStateCopyWithImpl;
@useResult
$Res call({
 bool isAppointmentsFetching, bool isAppointmentsFetchingFailed, bool isAppointmentsFetchingSuccess, ErrorModel error, List<DateTime> monthTimelineListOfNotConsulted, List<MyAppointment> myNotConsultedAppointments, List<DateTime> monthTimelineListOfConsulted, List<MyAppointment> myConsultedAppointments, List<DateTime> monthTimelineList, bool isAppointmentsCancellationFailed, bool isAppointmentsCancellationSuccess, List<MyAppointment> myAppointments
});


$ErrorModelCopyWith<$Res> get error;

}
/// @nodoc
class _$MyAppointmentsStateCopyWithImpl<$Res>
    implements $MyAppointmentsStateCopyWith<$Res> {
  _$MyAppointmentsStateCopyWithImpl(this._self, this._then);

  final MyAppointmentsState _self;
  final $Res Function(MyAppointmentsState) _then;

/// Create a copy of MyAppointmentsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isAppointmentsFetching = null,Object? isAppointmentsFetchingFailed = null,Object? isAppointmentsFetchingSuccess = null,Object? error = null,Object? monthTimelineListOfNotConsulted = null,Object? myNotConsultedAppointments = null,Object? monthTimelineListOfConsulted = null,Object? myConsultedAppointments = null,Object? monthTimelineList = null,Object? isAppointmentsCancellationFailed = null,Object? isAppointmentsCancellationSuccess = null,Object? myAppointments = null,}) {
  return _then(_self.copyWith(
isAppointmentsFetching: null == isAppointmentsFetching ? _self.isAppointmentsFetching : isAppointmentsFetching // ignore: cast_nullable_to_non_nullable
as bool,isAppointmentsFetchingFailed: null == isAppointmentsFetchingFailed ? _self.isAppointmentsFetchingFailed : isAppointmentsFetchingFailed // ignore: cast_nullable_to_non_nullable
as bool,isAppointmentsFetchingSuccess: null == isAppointmentsFetchingSuccess ? _self.isAppointmentsFetchingSuccess : isAppointmentsFetchingSuccess // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,monthTimelineListOfNotConsulted: null == monthTimelineListOfNotConsulted ? _self.monthTimelineListOfNotConsulted : monthTimelineListOfNotConsulted // ignore: cast_nullable_to_non_nullable
as List<DateTime>,myNotConsultedAppointments: null == myNotConsultedAppointments ? _self.myNotConsultedAppointments : myNotConsultedAppointments // ignore: cast_nullable_to_non_nullable
as List<MyAppointment>,monthTimelineListOfConsulted: null == monthTimelineListOfConsulted ? _self.monthTimelineListOfConsulted : monthTimelineListOfConsulted // ignore: cast_nullable_to_non_nullable
as List<DateTime>,myConsultedAppointments: null == myConsultedAppointments ? _self.myConsultedAppointments : myConsultedAppointments // ignore: cast_nullable_to_non_nullable
as List<MyAppointment>,monthTimelineList: null == monthTimelineList ? _self.monthTimelineList : monthTimelineList // ignore: cast_nullable_to_non_nullable
as List<DateTime>,isAppointmentsCancellationFailed: null == isAppointmentsCancellationFailed ? _self.isAppointmentsCancellationFailed : isAppointmentsCancellationFailed // ignore: cast_nullable_to_non_nullable
as bool,isAppointmentsCancellationSuccess: null == isAppointmentsCancellationSuccess ? _self.isAppointmentsCancellationSuccess : isAppointmentsCancellationSuccess // ignore: cast_nullable_to_non_nullable
as bool,myAppointments: null == myAppointments ? _self.myAppointments : myAppointments // ignore: cast_nullable_to_non_nullable
as List<MyAppointment>,
  ));
}
/// Create a copy of MyAppointmentsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ErrorModelCopyWith<$Res> get error {
  
  return $ErrorModelCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isAppointmentsFetching,  bool isAppointmentsFetchingFailed,  bool isAppointmentsFetchingSuccess,  ErrorModel error,  List<DateTime> monthTimelineListOfNotConsulted,  List<MyAppointment> myNotConsultedAppointments,  List<DateTime> monthTimelineListOfConsulted,  List<MyAppointment> myConsultedAppointments,  List<DateTime> monthTimelineList,  bool isAppointmentsCancellationFailed,  bool isAppointmentsCancellationSuccess,  List<MyAppointment> myAppointments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyAppointmentState() when $default != null:
return $default(_that.isAppointmentsFetching,_that.isAppointmentsFetchingFailed,_that.isAppointmentsFetchingSuccess,_that.error,_that.monthTimelineListOfNotConsulted,_that.myNotConsultedAppointments,_that.monthTimelineListOfConsulted,_that.myConsultedAppointments,_that.monthTimelineList,_that.isAppointmentsCancellationFailed,_that.isAppointmentsCancellationSuccess,_that.myAppointments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isAppointmentsFetching,  bool isAppointmentsFetchingFailed,  bool isAppointmentsFetchingSuccess,  ErrorModel error,  List<DateTime> monthTimelineListOfNotConsulted,  List<MyAppointment> myNotConsultedAppointments,  List<DateTime> monthTimelineListOfConsulted,  List<MyAppointment> myConsultedAppointments,  List<DateTime> monthTimelineList,  bool isAppointmentsCancellationFailed,  bool isAppointmentsCancellationSuccess,  List<MyAppointment> myAppointments)  $default,) {final _that = this;
switch (_that) {
case _MyAppointmentState():
return $default(_that.isAppointmentsFetching,_that.isAppointmentsFetchingFailed,_that.isAppointmentsFetchingSuccess,_that.error,_that.monthTimelineListOfNotConsulted,_that.myNotConsultedAppointments,_that.monthTimelineListOfConsulted,_that.myConsultedAppointments,_that.monthTimelineList,_that.isAppointmentsCancellationFailed,_that.isAppointmentsCancellationSuccess,_that.myAppointments);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isAppointmentsFetching,  bool isAppointmentsFetchingFailed,  bool isAppointmentsFetchingSuccess,  ErrorModel error,  List<DateTime> monthTimelineListOfNotConsulted,  List<MyAppointment> myNotConsultedAppointments,  List<DateTime> monthTimelineListOfConsulted,  List<MyAppointment> myConsultedAppointments,  List<DateTime> monthTimelineList,  bool isAppointmentsCancellationFailed,  bool isAppointmentsCancellationSuccess,  List<MyAppointment> myAppointments)?  $default,) {final _that = this;
switch (_that) {
case _MyAppointmentState() when $default != null:
return $default(_that.isAppointmentsFetching,_that.isAppointmentsFetchingFailed,_that.isAppointmentsFetchingSuccess,_that.error,_that.monthTimelineListOfNotConsulted,_that.myNotConsultedAppointments,_that.monthTimelineListOfConsulted,_that.myConsultedAppointments,_that.monthTimelineList,_that.isAppointmentsCancellationFailed,_that.isAppointmentsCancellationSuccess,_that.myAppointments);case _:
  return null;

}
}

}

/// @nodoc


class _MyAppointmentState implements MyAppointmentsState {
  const _MyAppointmentState({required this.isAppointmentsFetching, required this.isAppointmentsFetchingFailed, required this.isAppointmentsFetchingSuccess, required this.error, required final  List<DateTime> monthTimelineListOfNotConsulted, required final  List<MyAppointment> myNotConsultedAppointments, required final  List<DateTime> monthTimelineListOfConsulted, required final  List<MyAppointment> myConsultedAppointments, required final  List<DateTime> monthTimelineList, required this.isAppointmentsCancellationFailed, required this.isAppointmentsCancellationSuccess, required final  List<MyAppointment> myAppointments}): _monthTimelineListOfNotConsulted = monthTimelineListOfNotConsulted,_myNotConsultedAppointments = myNotConsultedAppointments,_monthTimelineListOfConsulted = monthTimelineListOfConsulted,_myConsultedAppointments = myConsultedAppointments,_monthTimelineList = monthTimelineList,_myAppointments = myAppointments;
  

@override final  bool isAppointmentsFetching;
@override final  bool isAppointmentsFetchingFailed;
@override final  bool isAppointmentsFetchingSuccess;
@override final  ErrorModel error;
 final  List<DateTime> _monthTimelineListOfNotConsulted;
@override List<DateTime> get monthTimelineListOfNotConsulted {
  if (_monthTimelineListOfNotConsulted is EqualUnmodifiableListView) return _monthTimelineListOfNotConsulted;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_monthTimelineListOfNotConsulted);
}

 final  List<MyAppointment> _myNotConsultedAppointments;
@override List<MyAppointment> get myNotConsultedAppointments {
  if (_myNotConsultedAppointments is EqualUnmodifiableListView) return _myNotConsultedAppointments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_myNotConsultedAppointments);
}

 final  List<DateTime> _monthTimelineListOfConsulted;
@override List<DateTime> get monthTimelineListOfConsulted {
  if (_monthTimelineListOfConsulted is EqualUnmodifiableListView) return _monthTimelineListOfConsulted;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_monthTimelineListOfConsulted);
}

 final  List<MyAppointment> _myConsultedAppointments;
@override List<MyAppointment> get myConsultedAppointments {
  if (_myConsultedAppointments is EqualUnmodifiableListView) return _myConsultedAppointments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_myConsultedAppointments);
}

 final  List<DateTime> _monthTimelineList;
@override List<DateTime> get monthTimelineList {
  if (_monthTimelineList is EqualUnmodifiableListView) return _monthTimelineList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_monthTimelineList);
}

@override final  bool isAppointmentsCancellationFailed;
@override final  bool isAppointmentsCancellationSuccess;
 final  List<MyAppointment> _myAppointments;
@override List<MyAppointment> get myAppointments {
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyAppointmentState&&(identical(other.isAppointmentsFetching, isAppointmentsFetching) || other.isAppointmentsFetching == isAppointmentsFetching)&&(identical(other.isAppointmentsFetchingFailed, isAppointmentsFetchingFailed) || other.isAppointmentsFetchingFailed == isAppointmentsFetchingFailed)&&(identical(other.isAppointmentsFetchingSuccess, isAppointmentsFetchingSuccess) || other.isAppointmentsFetchingSuccess == isAppointmentsFetchingSuccess)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other._monthTimelineListOfNotConsulted, _monthTimelineListOfNotConsulted)&&const DeepCollectionEquality().equals(other._myNotConsultedAppointments, _myNotConsultedAppointments)&&const DeepCollectionEquality().equals(other._monthTimelineListOfConsulted, _monthTimelineListOfConsulted)&&const DeepCollectionEquality().equals(other._myConsultedAppointments, _myConsultedAppointments)&&const DeepCollectionEquality().equals(other._monthTimelineList, _monthTimelineList)&&(identical(other.isAppointmentsCancellationFailed, isAppointmentsCancellationFailed) || other.isAppointmentsCancellationFailed == isAppointmentsCancellationFailed)&&(identical(other.isAppointmentsCancellationSuccess, isAppointmentsCancellationSuccess) || other.isAppointmentsCancellationSuccess == isAppointmentsCancellationSuccess)&&const DeepCollectionEquality().equals(other._myAppointments, _myAppointments));
}


@override
int get hashCode => Object.hash(runtimeType,isAppointmentsFetching,isAppointmentsFetchingFailed,isAppointmentsFetchingSuccess,error,const DeepCollectionEquality().hash(_monthTimelineListOfNotConsulted),const DeepCollectionEquality().hash(_myNotConsultedAppointments),const DeepCollectionEquality().hash(_monthTimelineListOfConsulted),const DeepCollectionEquality().hash(_myConsultedAppointments),const DeepCollectionEquality().hash(_monthTimelineList),isAppointmentsCancellationFailed,isAppointmentsCancellationSuccess,const DeepCollectionEquality().hash(_myAppointments));

@override
String toString() {
  return 'MyAppointmentsState(isAppointmentsFetching: $isAppointmentsFetching, isAppointmentsFetchingFailed: $isAppointmentsFetchingFailed, isAppointmentsFetchingSuccess: $isAppointmentsFetchingSuccess, error: $error, monthTimelineListOfNotConsulted: $monthTimelineListOfNotConsulted, myNotConsultedAppointments: $myNotConsultedAppointments, monthTimelineListOfConsulted: $monthTimelineListOfConsulted, myConsultedAppointments: $myConsultedAppointments, monthTimelineList: $monthTimelineList, isAppointmentsCancellationFailed: $isAppointmentsCancellationFailed, isAppointmentsCancellationSuccess: $isAppointmentsCancellationSuccess, myAppointments: $myAppointments)';
}


}

/// @nodoc
abstract mixin class _$MyAppointmentStateCopyWith<$Res> implements $MyAppointmentsStateCopyWith<$Res> {
  factory _$MyAppointmentStateCopyWith(_MyAppointmentState value, $Res Function(_MyAppointmentState) _then) = __$MyAppointmentStateCopyWithImpl;
@override @useResult
$Res call({
 bool isAppointmentsFetching, bool isAppointmentsFetchingFailed, bool isAppointmentsFetchingSuccess, ErrorModel error, List<DateTime> monthTimelineListOfNotConsulted, List<MyAppointment> myNotConsultedAppointments, List<DateTime> monthTimelineListOfConsulted, List<MyAppointment> myConsultedAppointments, List<DateTime> monthTimelineList, bool isAppointmentsCancellationFailed, bool isAppointmentsCancellationSuccess, List<MyAppointment> myAppointments
});


@override $ErrorModelCopyWith<$Res> get error;

}
/// @nodoc
class __$MyAppointmentStateCopyWithImpl<$Res>
    implements _$MyAppointmentStateCopyWith<$Res> {
  __$MyAppointmentStateCopyWithImpl(this._self, this._then);

  final _MyAppointmentState _self;
  final $Res Function(_MyAppointmentState) _then;

/// Create a copy of MyAppointmentsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isAppointmentsFetching = null,Object? isAppointmentsFetchingFailed = null,Object? isAppointmentsFetchingSuccess = null,Object? error = null,Object? monthTimelineListOfNotConsulted = null,Object? myNotConsultedAppointments = null,Object? monthTimelineListOfConsulted = null,Object? myConsultedAppointments = null,Object? monthTimelineList = null,Object? isAppointmentsCancellationFailed = null,Object? isAppointmentsCancellationSuccess = null,Object? myAppointments = null,}) {
  return _then(_MyAppointmentState(
isAppointmentsFetching: null == isAppointmentsFetching ? _self.isAppointmentsFetching : isAppointmentsFetching // ignore: cast_nullable_to_non_nullable
as bool,isAppointmentsFetchingFailed: null == isAppointmentsFetchingFailed ? _self.isAppointmentsFetchingFailed : isAppointmentsFetchingFailed // ignore: cast_nullable_to_non_nullable
as bool,isAppointmentsFetchingSuccess: null == isAppointmentsFetchingSuccess ? _self.isAppointmentsFetchingSuccess : isAppointmentsFetchingSuccess // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,monthTimelineListOfNotConsulted: null == monthTimelineListOfNotConsulted ? _self._monthTimelineListOfNotConsulted : monthTimelineListOfNotConsulted // ignore: cast_nullable_to_non_nullable
as List<DateTime>,myNotConsultedAppointments: null == myNotConsultedAppointments ? _self._myNotConsultedAppointments : myNotConsultedAppointments // ignore: cast_nullable_to_non_nullable
as List<MyAppointment>,monthTimelineListOfConsulted: null == monthTimelineListOfConsulted ? _self._monthTimelineListOfConsulted : monthTimelineListOfConsulted // ignore: cast_nullable_to_non_nullable
as List<DateTime>,myConsultedAppointments: null == myConsultedAppointments ? _self._myConsultedAppointments : myConsultedAppointments // ignore: cast_nullable_to_non_nullable
as List<MyAppointment>,monthTimelineList: null == monthTimelineList ? _self._monthTimelineList : monthTimelineList // ignore: cast_nullable_to_non_nullable
as List<DateTime>,isAppointmentsCancellationFailed: null == isAppointmentsCancellationFailed ? _self.isAppointmentsCancellationFailed : isAppointmentsCancellationFailed // ignore: cast_nullable_to_non_nullable
as bool,isAppointmentsCancellationSuccess: null == isAppointmentsCancellationSuccess ? _self.isAppointmentsCancellationSuccess : isAppointmentsCancellationSuccess // ignore: cast_nullable_to_non_nullable
as bool,myAppointments: null == myAppointments ? _self._myAppointments : myAppointments // ignore: cast_nullable_to_non_nullable
as List<MyAppointment>,
  ));
}

/// Create a copy of MyAppointmentsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ErrorModelCopyWith<$Res> get error {
  
  return $ErrorModelCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

// dart format on
