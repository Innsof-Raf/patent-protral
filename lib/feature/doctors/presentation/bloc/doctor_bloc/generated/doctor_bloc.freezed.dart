// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../doctor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DoctorEvent {

 int get idspeciality; String get token;
/// Create a copy of DoctorEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DoctorEventCopyWith<DoctorEvent> get copyWith => _$DoctorEventCopyWithImpl<DoctorEvent>(this as DoctorEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorEvent&&(identical(other.idspeciality, idspeciality) || other.idspeciality == idspeciality)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,idspeciality,token);

@override
String toString() {
  return 'DoctorEvent(idspeciality: $idspeciality, token: $token)';
}


}

/// @nodoc
abstract mixin class $DoctorEventCopyWith<$Res>  {
  factory $DoctorEventCopyWith(DoctorEvent value, $Res Function(DoctorEvent) _then) = _$DoctorEventCopyWithImpl;
@useResult
$Res call({
 int idspeciality, String token
});




}
/// @nodoc
class _$DoctorEventCopyWithImpl<$Res>
    implements $DoctorEventCopyWith<$Res> {
  _$DoctorEventCopyWithImpl(this._self, this._then);

  final DoctorEvent _self;
  final $Res Function(DoctorEvent) _then;

/// Create a copy of DoctorEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idspeciality = null,Object? token = null,}) {
  return _then(_self.copyWith(
idspeciality: null == idspeciality ? _self.idspeciality : idspeciality // ignore: cast_nullable_to_non_nullable
as int,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DoctorEvent].
extension DoctorEventPatterns on DoctorEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetAvailableDoctorsByDepartment value)?  getAvailableDoctorsByDepartment,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetAvailableDoctorsByDepartment() when getAvailableDoctorsByDepartment != null:
return getAvailableDoctorsByDepartment(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetAvailableDoctorsByDepartment value)  getAvailableDoctorsByDepartment,}){
final _that = this;
switch (_that) {
case GetAvailableDoctorsByDepartment():
return getAvailableDoctorsByDepartment(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetAvailableDoctorsByDepartment value)?  getAvailableDoctorsByDepartment,}){
final _that = this;
switch (_that) {
case GetAvailableDoctorsByDepartment() when getAvailableDoctorsByDepartment != null:
return getAvailableDoctorsByDepartment(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int idspeciality,  String token)?  getAvailableDoctorsByDepartment,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetAvailableDoctorsByDepartment() when getAvailableDoctorsByDepartment != null:
return getAvailableDoctorsByDepartment(_that.idspeciality,_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int idspeciality,  String token)  getAvailableDoctorsByDepartment,}) {final _that = this;
switch (_that) {
case GetAvailableDoctorsByDepartment():
return getAvailableDoctorsByDepartment(_that.idspeciality,_that.token);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int idspeciality,  String token)?  getAvailableDoctorsByDepartment,}) {final _that = this;
switch (_that) {
case GetAvailableDoctorsByDepartment() when getAvailableDoctorsByDepartment != null:
return getAvailableDoctorsByDepartment(_that.idspeciality,_that.token);case _:
  return null;

}
}

}

/// @nodoc


class GetAvailableDoctorsByDepartment implements DoctorEvent {
  const GetAvailableDoctorsByDepartment({required this.idspeciality, required this.token});
  

@override final  int idspeciality;
@override final  String token;

/// Create a copy of DoctorEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAvailableDoctorsByDepartmentCopyWith<GetAvailableDoctorsByDepartment> get copyWith => _$GetAvailableDoctorsByDepartmentCopyWithImpl<GetAvailableDoctorsByDepartment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAvailableDoctorsByDepartment&&(identical(other.idspeciality, idspeciality) || other.idspeciality == idspeciality)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,idspeciality,token);

@override
String toString() {
  return 'DoctorEvent.getAvailableDoctorsByDepartment(idspeciality: $idspeciality, token: $token)';
}


}

/// @nodoc
abstract mixin class $GetAvailableDoctorsByDepartmentCopyWith<$Res> implements $DoctorEventCopyWith<$Res> {
  factory $GetAvailableDoctorsByDepartmentCopyWith(GetAvailableDoctorsByDepartment value, $Res Function(GetAvailableDoctorsByDepartment) _then) = _$GetAvailableDoctorsByDepartmentCopyWithImpl;
@override @useResult
$Res call({
 int idspeciality, String token
});




}
/// @nodoc
class _$GetAvailableDoctorsByDepartmentCopyWithImpl<$Res>
    implements $GetAvailableDoctorsByDepartmentCopyWith<$Res> {
  _$GetAvailableDoctorsByDepartmentCopyWithImpl(this._self, this._then);

  final GetAvailableDoctorsByDepartment _self;
  final $Res Function(GetAvailableDoctorsByDepartment) _then;

/// Create a copy of DoctorEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idspeciality = null,Object? token = null,}) {
  return _then(GetAvailableDoctorsByDepartment(
idspeciality: null == idspeciality ? _self.idspeciality : idspeciality // ignore: cast_nullable_to_non_nullable
as int,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$DoctorState {

 bool get isDoctorsFetching; bool get isDoctorsFetchingFailed; bool get isDoctorsFetchingSuccess; ErrorModel get error; List<Doctor> get doctors;
/// Create a copy of DoctorState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DoctorStateCopyWith<DoctorState> get copyWith => _$DoctorStateCopyWithImpl<DoctorState>(this as DoctorState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorState&&(identical(other.isDoctorsFetching, isDoctorsFetching) || other.isDoctorsFetching == isDoctorsFetching)&&(identical(other.isDoctorsFetchingFailed, isDoctorsFetchingFailed) || other.isDoctorsFetchingFailed == isDoctorsFetchingFailed)&&(identical(other.isDoctorsFetchingSuccess, isDoctorsFetchingSuccess) || other.isDoctorsFetchingSuccess == isDoctorsFetchingSuccess)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other.doctors, doctors));
}


@override
int get hashCode => Object.hash(runtimeType,isDoctorsFetching,isDoctorsFetchingFailed,isDoctorsFetchingSuccess,error,const DeepCollectionEquality().hash(doctors));

@override
String toString() {
  return 'DoctorState(isDoctorsFetching: $isDoctorsFetching, isDoctorsFetchingFailed: $isDoctorsFetchingFailed, isDoctorsFetchingSuccess: $isDoctorsFetchingSuccess, error: $error, doctors: $doctors)';
}


}

/// @nodoc
abstract mixin class $DoctorStateCopyWith<$Res>  {
  factory $DoctorStateCopyWith(DoctorState value, $Res Function(DoctorState) _then) = _$DoctorStateCopyWithImpl;
@useResult
$Res call({
 bool isDoctorsFetching, bool isDoctorsFetchingFailed, bool isDoctorsFetchingSuccess, ErrorModel error, List<Doctor> doctors
});


$ErrorModelCopyWith<$Res> get error;

}
/// @nodoc
class _$DoctorStateCopyWithImpl<$Res>
    implements $DoctorStateCopyWith<$Res> {
  _$DoctorStateCopyWithImpl(this._self, this._then);

  final DoctorState _self;
  final $Res Function(DoctorState) _then;

/// Create a copy of DoctorState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isDoctorsFetching = null,Object? isDoctorsFetchingFailed = null,Object? isDoctorsFetchingSuccess = null,Object? error = null,Object? doctors = null,}) {
  return _then(_self.copyWith(
isDoctorsFetching: null == isDoctorsFetching ? _self.isDoctorsFetching : isDoctorsFetching // ignore: cast_nullable_to_non_nullable
as bool,isDoctorsFetchingFailed: null == isDoctorsFetchingFailed ? _self.isDoctorsFetchingFailed : isDoctorsFetchingFailed // ignore: cast_nullable_to_non_nullable
as bool,isDoctorsFetchingSuccess: null == isDoctorsFetchingSuccess ? _self.isDoctorsFetchingSuccess : isDoctorsFetchingSuccess // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,doctors: null == doctors ? _self.doctors : doctors // ignore: cast_nullable_to_non_nullable
as List<Doctor>,
  ));
}
/// Create a copy of DoctorState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ErrorModelCopyWith<$Res> get error {
  
  return $ErrorModelCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}


/// Adds pattern-matching-related methods to [DoctorState].
extension DoctorStatePatterns on DoctorState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DoctorState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DoctorState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DoctorState value)  $default,){
final _that = this;
switch (_that) {
case _DoctorState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DoctorState value)?  $default,){
final _that = this;
switch (_that) {
case _DoctorState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isDoctorsFetching,  bool isDoctorsFetchingFailed,  bool isDoctorsFetchingSuccess,  ErrorModel error,  List<Doctor> doctors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DoctorState() when $default != null:
return $default(_that.isDoctorsFetching,_that.isDoctorsFetchingFailed,_that.isDoctorsFetchingSuccess,_that.error,_that.doctors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isDoctorsFetching,  bool isDoctorsFetchingFailed,  bool isDoctorsFetchingSuccess,  ErrorModel error,  List<Doctor> doctors)  $default,) {final _that = this;
switch (_that) {
case _DoctorState():
return $default(_that.isDoctorsFetching,_that.isDoctorsFetchingFailed,_that.isDoctorsFetchingSuccess,_that.error,_that.doctors);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isDoctorsFetching,  bool isDoctorsFetchingFailed,  bool isDoctorsFetchingSuccess,  ErrorModel error,  List<Doctor> doctors)?  $default,) {final _that = this;
switch (_that) {
case _DoctorState() when $default != null:
return $default(_that.isDoctorsFetching,_that.isDoctorsFetchingFailed,_that.isDoctorsFetchingSuccess,_that.error,_that.doctors);case _:
  return null;

}
}

}

/// @nodoc


class _DoctorState implements DoctorState {
  const _DoctorState({required this.isDoctorsFetching, required this.isDoctorsFetchingFailed, required this.isDoctorsFetchingSuccess, required this.error, required final  List<Doctor> doctors}): _doctors = doctors;
  

@override final  bool isDoctorsFetching;
@override final  bool isDoctorsFetchingFailed;
@override final  bool isDoctorsFetchingSuccess;
@override final  ErrorModel error;
 final  List<Doctor> _doctors;
@override List<Doctor> get doctors {
  if (_doctors is EqualUnmodifiableListView) return _doctors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_doctors);
}


/// Create a copy of DoctorState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DoctorStateCopyWith<_DoctorState> get copyWith => __$DoctorStateCopyWithImpl<_DoctorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DoctorState&&(identical(other.isDoctorsFetching, isDoctorsFetching) || other.isDoctorsFetching == isDoctorsFetching)&&(identical(other.isDoctorsFetchingFailed, isDoctorsFetchingFailed) || other.isDoctorsFetchingFailed == isDoctorsFetchingFailed)&&(identical(other.isDoctorsFetchingSuccess, isDoctorsFetchingSuccess) || other.isDoctorsFetchingSuccess == isDoctorsFetchingSuccess)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other._doctors, _doctors));
}


@override
int get hashCode => Object.hash(runtimeType,isDoctorsFetching,isDoctorsFetchingFailed,isDoctorsFetchingSuccess,error,const DeepCollectionEquality().hash(_doctors));

@override
String toString() {
  return 'DoctorState(isDoctorsFetching: $isDoctorsFetching, isDoctorsFetchingFailed: $isDoctorsFetchingFailed, isDoctorsFetchingSuccess: $isDoctorsFetchingSuccess, error: $error, doctors: $doctors)';
}


}

/// @nodoc
abstract mixin class _$DoctorStateCopyWith<$Res> implements $DoctorStateCopyWith<$Res> {
  factory _$DoctorStateCopyWith(_DoctorState value, $Res Function(_DoctorState) _then) = __$DoctorStateCopyWithImpl;
@override @useResult
$Res call({
 bool isDoctorsFetching, bool isDoctorsFetchingFailed, bool isDoctorsFetchingSuccess, ErrorModel error, List<Doctor> doctors
});


@override $ErrorModelCopyWith<$Res> get error;

}
/// @nodoc
class __$DoctorStateCopyWithImpl<$Res>
    implements _$DoctorStateCopyWith<$Res> {
  __$DoctorStateCopyWithImpl(this._self, this._then);

  final _DoctorState _self;
  final $Res Function(_DoctorState) _then;

/// Create a copy of DoctorState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isDoctorsFetching = null,Object? isDoctorsFetchingFailed = null,Object? isDoctorsFetchingSuccess = null,Object? error = null,Object? doctors = null,}) {
  return _then(_DoctorState(
isDoctorsFetching: null == isDoctorsFetching ? _self.isDoctorsFetching : isDoctorsFetching // ignore: cast_nullable_to_non_nullable
as bool,isDoctorsFetchingFailed: null == isDoctorsFetchingFailed ? _self.isDoctorsFetchingFailed : isDoctorsFetchingFailed // ignore: cast_nullable_to_non_nullable
as bool,isDoctorsFetchingSuccess: null == isDoctorsFetchingSuccess ? _self.isDoctorsFetchingSuccess : isDoctorsFetchingSuccess // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,doctors: null == doctors ? _self._doctors : doctors // ignore: cast_nullable_to_non_nullable
as List<Doctor>,
  ));
}

/// Create a copy of DoctorState
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
