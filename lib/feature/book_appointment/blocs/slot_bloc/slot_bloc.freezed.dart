// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slot_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SlotEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SlotEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SlotEvent()';
}


}

/// @nodoc
class $SlotEventCopyWith<$Res>  {
$SlotEventCopyWith(SlotEvent _, $Res Function(SlotEvent) __);
}


/// Adds pattern-matching-related methods to [SlotEvent].
extension SlotEventPatterns on SlotEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetAvailableSlots value)?  getAvailableSlots,TResult Function( ChangeBookedSlotState value)?  changeBookedSlotState,TResult Function( ChangeResheduledSlotState value)?  changeResheduledSlotState,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetAvailableSlots() when getAvailableSlots != null:
return getAvailableSlots(_that);case ChangeBookedSlotState() when changeBookedSlotState != null:
return changeBookedSlotState(_that);case ChangeResheduledSlotState() when changeResheduledSlotState != null:
return changeResheduledSlotState(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetAvailableSlots value)  getAvailableSlots,required TResult Function( ChangeBookedSlotState value)  changeBookedSlotState,required TResult Function( ChangeResheduledSlotState value)  changeResheduledSlotState,}){
final _that = this;
switch (_that) {
case GetAvailableSlots():
return getAvailableSlots(_that);case ChangeBookedSlotState():
return changeBookedSlotState(_that);case ChangeResheduledSlotState():
return changeResheduledSlotState(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetAvailableSlots value)?  getAvailableSlots,TResult? Function( ChangeBookedSlotState value)?  changeBookedSlotState,TResult? Function( ChangeResheduledSlotState value)?  changeResheduledSlotState,}){
final _that = this;
switch (_that) {
case GetAvailableSlots() when getAvailableSlots != null:
return getAvailableSlots(_that);case ChangeBookedSlotState() when changeBookedSlotState != null:
return changeBookedSlotState(_that);case ChangeResheduledSlotState() when changeResheduledSlotState != null:
return changeResheduledSlotState(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int idDoctor,  DateTime date,  String token)?  getAvailableSlots,TResult Function( DateTime slotTime)?  changeBookedSlotState,TResult Function( DateTime oldSlot,  DateTime currentSlot)?  changeResheduledSlotState,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetAvailableSlots() when getAvailableSlots != null:
return getAvailableSlots(_that.idDoctor,_that.date,_that.token);case ChangeBookedSlotState() when changeBookedSlotState != null:
return changeBookedSlotState(_that.slotTime);case ChangeResheduledSlotState() when changeResheduledSlotState != null:
return changeResheduledSlotState(_that.oldSlot,_that.currentSlot);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int idDoctor,  DateTime date,  String token)  getAvailableSlots,required TResult Function( DateTime slotTime)  changeBookedSlotState,required TResult Function( DateTime oldSlot,  DateTime currentSlot)  changeResheduledSlotState,}) {final _that = this;
switch (_that) {
case GetAvailableSlots():
return getAvailableSlots(_that.idDoctor,_that.date,_that.token);case ChangeBookedSlotState():
return changeBookedSlotState(_that.slotTime);case ChangeResheduledSlotState():
return changeResheduledSlotState(_that.oldSlot,_that.currentSlot);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int idDoctor,  DateTime date,  String token)?  getAvailableSlots,TResult? Function( DateTime slotTime)?  changeBookedSlotState,TResult? Function( DateTime oldSlot,  DateTime currentSlot)?  changeResheduledSlotState,}) {final _that = this;
switch (_that) {
case GetAvailableSlots() when getAvailableSlots != null:
return getAvailableSlots(_that.idDoctor,_that.date,_that.token);case ChangeBookedSlotState() when changeBookedSlotState != null:
return changeBookedSlotState(_that.slotTime);case ChangeResheduledSlotState() when changeResheduledSlotState != null:
return changeResheduledSlotState(_that.oldSlot,_that.currentSlot);case _:
  return null;

}
}

}

/// @nodoc


class GetAvailableSlots implements SlotEvent {
  const GetAvailableSlots({required this.idDoctor, required this.date, required this.token});
  

 final  int idDoctor;
 final  DateTime date;
 final  String token;

/// Create a copy of SlotEvent
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
  return 'SlotEvent.getAvailableSlots(idDoctor: $idDoctor, date: $date, token: $token)';
}


}

/// @nodoc
abstract mixin class $GetAvailableSlotsCopyWith<$Res> implements $SlotEventCopyWith<$Res> {
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

/// Create a copy of SlotEvent
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


class ChangeBookedSlotState implements SlotEvent {
  const ChangeBookedSlotState({required this.slotTime});
  

 final  DateTime slotTime;

/// Create a copy of SlotEvent
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
  return 'SlotEvent.changeBookedSlotState(slotTime: $slotTime)';
}


}

/// @nodoc
abstract mixin class $ChangeBookedSlotStateCopyWith<$Res> implements $SlotEventCopyWith<$Res> {
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

/// Create a copy of SlotEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? slotTime = null,}) {
  return _then(ChangeBookedSlotState(
slotTime: null == slotTime ? _self.slotTime : slotTime // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class ChangeResheduledSlotState implements SlotEvent {
  const ChangeResheduledSlotState({required this.oldSlot, required this.currentSlot});
  

 final  DateTime oldSlot;
 final  DateTime currentSlot;

/// Create a copy of SlotEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeResheduledSlotStateCopyWith<ChangeResheduledSlotState> get copyWith => _$ChangeResheduledSlotStateCopyWithImpl<ChangeResheduledSlotState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeResheduledSlotState&&(identical(other.oldSlot, oldSlot) || other.oldSlot == oldSlot)&&(identical(other.currentSlot, currentSlot) || other.currentSlot == currentSlot));
}


@override
int get hashCode => Object.hash(runtimeType,oldSlot,currentSlot);

@override
String toString() {
  return 'SlotEvent.changeResheduledSlotState(oldSlot: $oldSlot, currentSlot: $currentSlot)';
}


}

/// @nodoc
abstract mixin class $ChangeResheduledSlotStateCopyWith<$Res> implements $SlotEventCopyWith<$Res> {
  factory $ChangeResheduledSlotStateCopyWith(ChangeResheduledSlotState value, $Res Function(ChangeResheduledSlotState) _then) = _$ChangeResheduledSlotStateCopyWithImpl;
@useResult
$Res call({
 DateTime oldSlot, DateTime currentSlot
});




}
/// @nodoc
class _$ChangeResheduledSlotStateCopyWithImpl<$Res>
    implements $ChangeResheduledSlotStateCopyWith<$Res> {
  _$ChangeResheduledSlotStateCopyWithImpl(this._self, this._then);

  final ChangeResheduledSlotState _self;
  final $Res Function(ChangeResheduledSlotState) _then;

/// Create a copy of SlotEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? oldSlot = null,Object? currentSlot = null,}) {
  return _then(ChangeResheduledSlotState(
oldSlot: null == oldSlot ? _self.oldSlot : oldSlot // ignore: cast_nullable_to_non_nullable
as DateTime,currentSlot: null == currentSlot ? _self.currentSlot : currentSlot // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc
mixin _$SlotState {

 bool get isLoading; bool get isFetchingSuccses; bool get isFetchingError; ErrorModel get error; ShiftModel get shift;
/// Create a copy of SlotState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SlotStateCopyWith<SlotState> get copyWith => _$SlotStateCopyWithImpl<SlotState>(this as SlotState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SlotState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isFetchingSuccses, isFetchingSuccses) || other.isFetchingSuccses == isFetchingSuccses)&&(identical(other.isFetchingError, isFetchingError) || other.isFetchingError == isFetchingError)&&(identical(other.error, error) || other.error == error)&&(identical(other.shift, shift) || other.shift == shift));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isFetchingSuccses,isFetchingError,error,shift);

@override
String toString() {
  return 'SlotState(isLoading: $isLoading, isFetchingSuccses: $isFetchingSuccses, isFetchingError: $isFetchingError, error: $error, shift: $shift)';
}


}

/// @nodoc
abstract mixin class $SlotStateCopyWith<$Res>  {
  factory $SlotStateCopyWith(SlotState value, $Res Function(SlotState) _then) = _$SlotStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isFetchingSuccses, bool isFetchingError, ErrorModel error, ShiftModel shift
});


$ShiftModelCopyWith<$Res> get shift;

}
/// @nodoc
class _$SlotStateCopyWithImpl<$Res>
    implements $SlotStateCopyWith<$Res> {
  _$SlotStateCopyWithImpl(this._self, this._then);

  final SlotState _self;
  final $Res Function(SlotState) _then;

/// Create a copy of SlotState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isFetchingSuccses = null,Object? isFetchingError = null,Object? error = null,Object? shift = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isFetchingSuccses: null == isFetchingSuccses ? _self.isFetchingSuccses : isFetchingSuccses // ignore: cast_nullable_to_non_nullable
as bool,isFetchingError: null == isFetchingError ? _self.isFetchingError : isFetchingError // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,shift: null == shift ? _self.shift : shift // ignore: cast_nullable_to_non_nullable
as ShiftModel,
  ));
}
/// Create a copy of SlotState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShiftModelCopyWith<$Res> get shift {
  
  return $ShiftModelCopyWith<$Res>(_self.shift, (value) {
    return _then(_self.copyWith(shift: value));
  });
}
}


/// Adds pattern-matching-related methods to [SlotState].
extension SlotStatePatterns on SlotState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SlotState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SlotState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SlotState value)  $default,){
final _that = this;
switch (_that) {
case _SlotState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SlotState value)?  $default,){
final _that = this;
switch (_that) {
case _SlotState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isFetchingSuccses,  bool isFetchingError,  ErrorModel error,  ShiftModel shift)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SlotState() when $default != null:
return $default(_that.isLoading,_that.isFetchingSuccses,_that.isFetchingError,_that.error,_that.shift);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isFetchingSuccses,  bool isFetchingError,  ErrorModel error,  ShiftModel shift)  $default,) {final _that = this;
switch (_that) {
case _SlotState():
return $default(_that.isLoading,_that.isFetchingSuccses,_that.isFetchingError,_that.error,_that.shift);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isFetchingSuccses,  bool isFetchingError,  ErrorModel error,  ShiftModel shift)?  $default,) {final _that = this;
switch (_that) {
case _SlotState() when $default != null:
return $default(_that.isLoading,_that.isFetchingSuccses,_that.isFetchingError,_that.error,_that.shift);case _:
  return null;

}
}

}

/// @nodoc


class _SlotState implements SlotState {
  const _SlotState({required this.isLoading, required this.isFetchingSuccses, required this.isFetchingError, required this.error, required this.shift});
  

@override final  bool isLoading;
@override final  bool isFetchingSuccses;
@override final  bool isFetchingError;
@override final  ErrorModel error;
@override final  ShiftModel shift;

/// Create a copy of SlotState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SlotStateCopyWith<_SlotState> get copyWith => __$SlotStateCopyWithImpl<_SlotState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SlotState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isFetchingSuccses, isFetchingSuccses) || other.isFetchingSuccses == isFetchingSuccses)&&(identical(other.isFetchingError, isFetchingError) || other.isFetchingError == isFetchingError)&&(identical(other.error, error) || other.error == error)&&(identical(other.shift, shift) || other.shift == shift));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isFetchingSuccses,isFetchingError,error,shift);

@override
String toString() {
  return 'SlotState(isLoading: $isLoading, isFetchingSuccses: $isFetchingSuccses, isFetchingError: $isFetchingError, error: $error, shift: $shift)';
}


}

/// @nodoc
abstract mixin class _$SlotStateCopyWith<$Res> implements $SlotStateCopyWith<$Res> {
  factory _$SlotStateCopyWith(_SlotState value, $Res Function(_SlotState) _then) = __$SlotStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isFetchingSuccses, bool isFetchingError, ErrorModel error, ShiftModel shift
});


@override $ShiftModelCopyWith<$Res> get shift;

}
/// @nodoc
class __$SlotStateCopyWithImpl<$Res>
    implements _$SlotStateCopyWith<$Res> {
  __$SlotStateCopyWithImpl(this._self, this._then);

  final _SlotState _self;
  final $Res Function(_SlotState) _then;

/// Create a copy of SlotState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isFetchingSuccses = null,Object? isFetchingError = null,Object? error = null,Object? shift = null,}) {
  return _then(_SlotState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isFetchingSuccses: null == isFetchingSuccses ? _self.isFetchingSuccses : isFetchingSuccses // ignore: cast_nullable_to_non_nullable
as bool,isFetchingError: null == isFetchingError ? _self.isFetchingError : isFetchingError // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,shift: null == shift ? _self.shift : shift // ignore: cast_nullable_to_non_nullable
as ShiftModel,
  ));
}

/// Create a copy of SlotState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShiftModelCopyWith<$Res> get shift {
  
  return $ShiftModelCopyWith<$Res>(_self.shift, (value) {
    return _then(_self.copyWith(shift: value));
  });
}
}

// dart format on
