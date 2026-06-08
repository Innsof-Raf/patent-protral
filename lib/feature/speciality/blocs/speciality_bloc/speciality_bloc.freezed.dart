// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'speciality_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SpecialityEvent implements DiagnosticableTreeMixin {

 String get token; int get idBusUnit;
/// Create a copy of SpecialityEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecialityEventCopyWith<SpecialityEvent> get copyWith => _$SpecialityEventCopyWithImpl<SpecialityEvent>(this as SpecialityEvent, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SpecialityEvent'))
    ..add(DiagnosticsProperty('token', token))..add(DiagnosticsProperty('idBusUnit', idBusUnit));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecialityEvent&&(identical(other.token, token) || other.token == token)&&(identical(other.idBusUnit, idBusUnit) || other.idBusUnit == idBusUnit));
}


@override
int get hashCode => Object.hash(runtimeType,token,idBusUnit);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SpecialityEvent(token: $token, idBusUnit: $idBusUnit)';
}


}

/// @nodoc
abstract mixin class $SpecialityEventCopyWith<$Res>  {
  factory $SpecialityEventCopyWith(SpecialityEvent value, $Res Function(SpecialityEvent) _then) = _$SpecialityEventCopyWithImpl;
@useResult
$Res call({
 String token, int idBusUnit
});




}
/// @nodoc
class _$SpecialityEventCopyWithImpl<$Res>
    implements $SpecialityEventCopyWith<$Res> {
  _$SpecialityEventCopyWithImpl(this._self, this._then);

  final SpecialityEvent _self;
  final $Res Function(SpecialityEvent) _then;

/// Create a copy of SpecialityEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,Object? idBusUnit = null,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,idBusUnit: null == idBusUnit ? _self.idBusUnit : idBusUnit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SpecialityEvent].
extension SpecialityEventPatterns on SpecialityEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchSpecialities value)?  fetchSpecialities,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchSpecialities() when fetchSpecialities != null:
return fetchSpecialities(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchSpecialities value)  fetchSpecialities,}){
final _that = this;
switch (_that) {
case FetchSpecialities():
return fetchSpecialities(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchSpecialities value)?  fetchSpecialities,}){
final _that = this;
switch (_that) {
case FetchSpecialities() when fetchSpecialities != null:
return fetchSpecialities(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String token,  int idBusUnit)?  fetchSpecialities,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchSpecialities() when fetchSpecialities != null:
return fetchSpecialities(_that.token,_that.idBusUnit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String token,  int idBusUnit)  fetchSpecialities,}) {final _that = this;
switch (_that) {
case FetchSpecialities():
return fetchSpecialities(_that.token,_that.idBusUnit);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String token,  int idBusUnit)?  fetchSpecialities,}) {final _that = this;
switch (_that) {
case FetchSpecialities() when fetchSpecialities != null:
return fetchSpecialities(_that.token,_that.idBusUnit);case _:
  return null;

}
}

}

/// @nodoc


class FetchSpecialities with DiagnosticableTreeMixin implements SpecialityEvent {
  const FetchSpecialities({required this.token, required this.idBusUnit});
  

@override final  String token;
@override final  int idBusUnit;

/// Create a copy of SpecialityEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchSpecialitiesCopyWith<FetchSpecialities> get copyWith => _$FetchSpecialitiesCopyWithImpl<FetchSpecialities>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SpecialityEvent.fetchSpecialities'))
    ..add(DiagnosticsProperty('token', token))..add(DiagnosticsProperty('idBusUnit', idBusUnit));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchSpecialities&&(identical(other.token, token) || other.token == token)&&(identical(other.idBusUnit, idBusUnit) || other.idBusUnit == idBusUnit));
}


@override
int get hashCode => Object.hash(runtimeType,token,idBusUnit);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SpecialityEvent.fetchSpecialities(token: $token, idBusUnit: $idBusUnit)';
}


}

/// @nodoc
abstract mixin class $FetchSpecialitiesCopyWith<$Res> implements $SpecialityEventCopyWith<$Res> {
  factory $FetchSpecialitiesCopyWith(FetchSpecialities value, $Res Function(FetchSpecialities) _then) = _$FetchSpecialitiesCopyWithImpl;
@override @useResult
$Res call({
 String token, int idBusUnit
});




}
/// @nodoc
class _$FetchSpecialitiesCopyWithImpl<$Res>
    implements $FetchSpecialitiesCopyWith<$Res> {
  _$FetchSpecialitiesCopyWithImpl(this._self, this._then);

  final FetchSpecialities _self;
  final $Res Function(FetchSpecialities) _then;

/// Create a copy of SpecialityEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? idBusUnit = null,}) {
  return _then(FetchSpecialities(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,idBusUnit: null == idBusUnit ? _self.idBusUnit : idBusUnit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$SpecialityState implements DiagnosticableTreeMixin {

 bool get isFetching; bool get isFetchingSuccess; bool get isFetchingError; ErrorModel get error; List<SpecialityModel> get specialities;
/// Create a copy of SpecialityState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecialityStateCopyWith<SpecialityState> get copyWith => _$SpecialityStateCopyWithImpl<SpecialityState>(this as SpecialityState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SpecialityState'))
    ..add(DiagnosticsProperty('isFetching', isFetching))..add(DiagnosticsProperty('isFetchingSuccess', isFetchingSuccess))..add(DiagnosticsProperty('isFetchingError', isFetchingError))..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('specialities', specialities));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecialityState&&(identical(other.isFetching, isFetching) || other.isFetching == isFetching)&&(identical(other.isFetchingSuccess, isFetchingSuccess) || other.isFetchingSuccess == isFetchingSuccess)&&(identical(other.isFetchingError, isFetchingError) || other.isFetchingError == isFetchingError)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other.specialities, specialities));
}


@override
int get hashCode => Object.hash(runtimeType,isFetching,isFetchingSuccess,isFetchingError,error,const DeepCollectionEquality().hash(specialities));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SpecialityState(isFetching: $isFetching, isFetchingSuccess: $isFetchingSuccess, isFetchingError: $isFetchingError, error: $error, specialities: $specialities)';
}


}

/// @nodoc
abstract mixin class $SpecialityStateCopyWith<$Res>  {
  factory $SpecialityStateCopyWith(SpecialityState value, $Res Function(SpecialityState) _then) = _$SpecialityStateCopyWithImpl;
@useResult
$Res call({
 bool isFetching, bool isFetchingSuccess, bool isFetchingError, ErrorModel error, List<SpecialityModel> specialities
});




}
/// @nodoc
class _$SpecialityStateCopyWithImpl<$Res>
    implements $SpecialityStateCopyWith<$Res> {
  _$SpecialityStateCopyWithImpl(this._self, this._then);

  final SpecialityState _self;
  final $Res Function(SpecialityState) _then;

/// Create a copy of SpecialityState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isFetching = null,Object? isFetchingSuccess = null,Object? isFetchingError = null,Object? error = null,Object? specialities = null,}) {
  return _then(_self.copyWith(
isFetching: null == isFetching ? _self.isFetching : isFetching // ignore: cast_nullable_to_non_nullable
as bool,isFetchingSuccess: null == isFetchingSuccess ? _self.isFetchingSuccess : isFetchingSuccess // ignore: cast_nullable_to_non_nullable
as bool,isFetchingError: null == isFetchingError ? _self.isFetchingError : isFetchingError // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,specialities: null == specialities ? _self.specialities : specialities // ignore: cast_nullable_to_non_nullable
as List<SpecialityModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [SpecialityState].
extension SpecialityStatePatterns on SpecialityState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpecialityState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpecialityState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpecialityState value)  $default,){
final _that = this;
switch (_that) {
case _SpecialityState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpecialityState value)?  $default,){
final _that = this;
switch (_that) {
case _SpecialityState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isFetching,  bool isFetchingSuccess,  bool isFetchingError,  ErrorModel error,  List<SpecialityModel> specialities)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpecialityState() when $default != null:
return $default(_that.isFetching,_that.isFetchingSuccess,_that.isFetchingError,_that.error,_that.specialities);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isFetching,  bool isFetchingSuccess,  bool isFetchingError,  ErrorModel error,  List<SpecialityModel> specialities)  $default,) {final _that = this;
switch (_that) {
case _SpecialityState():
return $default(_that.isFetching,_that.isFetchingSuccess,_that.isFetchingError,_that.error,_that.specialities);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isFetching,  bool isFetchingSuccess,  bool isFetchingError,  ErrorModel error,  List<SpecialityModel> specialities)?  $default,) {final _that = this;
switch (_that) {
case _SpecialityState() when $default != null:
return $default(_that.isFetching,_that.isFetchingSuccess,_that.isFetchingError,_that.error,_that.specialities);case _:
  return null;

}
}

}

/// @nodoc


class _SpecialityState with DiagnosticableTreeMixin implements SpecialityState {
  const _SpecialityState({required this.isFetching, required this.isFetchingSuccess, required this.isFetchingError, required this.error, required final  List<SpecialityModel> specialities}): _specialities = specialities;
  

@override final  bool isFetching;
@override final  bool isFetchingSuccess;
@override final  bool isFetchingError;
@override final  ErrorModel error;
 final  List<SpecialityModel> _specialities;
@override List<SpecialityModel> get specialities {
  if (_specialities is EqualUnmodifiableListView) return _specialities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_specialities);
}


/// Create a copy of SpecialityState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpecialityStateCopyWith<_SpecialityState> get copyWith => __$SpecialityStateCopyWithImpl<_SpecialityState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SpecialityState'))
    ..add(DiagnosticsProperty('isFetching', isFetching))..add(DiagnosticsProperty('isFetchingSuccess', isFetchingSuccess))..add(DiagnosticsProperty('isFetchingError', isFetchingError))..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('specialities', specialities));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpecialityState&&(identical(other.isFetching, isFetching) || other.isFetching == isFetching)&&(identical(other.isFetchingSuccess, isFetchingSuccess) || other.isFetchingSuccess == isFetchingSuccess)&&(identical(other.isFetchingError, isFetchingError) || other.isFetchingError == isFetchingError)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other._specialities, _specialities));
}


@override
int get hashCode => Object.hash(runtimeType,isFetching,isFetchingSuccess,isFetchingError,error,const DeepCollectionEquality().hash(_specialities));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SpecialityState(isFetching: $isFetching, isFetchingSuccess: $isFetchingSuccess, isFetchingError: $isFetchingError, error: $error, specialities: $specialities)';
}


}

/// @nodoc
abstract mixin class _$SpecialityStateCopyWith<$Res> implements $SpecialityStateCopyWith<$Res> {
  factory _$SpecialityStateCopyWith(_SpecialityState value, $Res Function(_SpecialityState) _then) = __$SpecialityStateCopyWithImpl;
@override @useResult
$Res call({
 bool isFetching, bool isFetchingSuccess, bool isFetchingError, ErrorModel error, List<SpecialityModel> specialities
});




}
/// @nodoc
class __$SpecialityStateCopyWithImpl<$Res>
    implements _$SpecialityStateCopyWith<$Res> {
  __$SpecialityStateCopyWithImpl(this._self, this._then);

  final _SpecialityState _self;
  final $Res Function(_SpecialityState) _then;

/// Create a copy of SpecialityState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isFetching = null,Object? isFetchingSuccess = null,Object? isFetchingError = null,Object? error = null,Object? specialities = null,}) {
  return _then(_SpecialityState(
isFetching: null == isFetching ? _self.isFetching : isFetching // ignore: cast_nullable_to_non_nullable
as bool,isFetchingSuccess: null == isFetchingSuccess ? _self.isFetchingSuccess : isFetchingSuccess // ignore: cast_nullable_to_non_nullable
as bool,isFetchingError: null == isFetchingError ? _self.isFetchingError : isFetchingError // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,specialities: null == specialities ? _self._specialities : specialities // ignore: cast_nullable_to_non_nullable
as List<SpecialityModel>,
  ));
}


}

// dart format on
