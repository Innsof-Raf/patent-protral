// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../speciality_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SpecialityEvent {

 SpecialityParams get params;
/// Create a copy of SpecialityEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecialityEventCopyWith<SpecialityEvent> get copyWith => _$SpecialityEventCopyWithImpl<SpecialityEvent>(this as SpecialityEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecialityEvent&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'SpecialityEvent(params: $params)';
}


}

/// @nodoc
abstract mixin class $SpecialityEventCopyWith<$Res>  {
  factory $SpecialityEventCopyWith(SpecialityEvent value, $Res Function(SpecialityEvent) _then) = _$SpecialityEventCopyWithImpl;
@useResult
$Res call({
 SpecialityParams params
});


$SpecialityParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$SpecialityEventCopyWithImpl<$Res>
    implements $SpecialityEventCopyWith<$Res> {
  _$SpecialityEventCopyWithImpl(this._self, this._then);

  final SpecialityEvent _self;
  final $Res Function(SpecialityEvent) _then;

/// Create a copy of SpecialityEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? params = null,}) {
  return _then(_self.copyWith(
params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as SpecialityParams,
  ));
}
/// Create a copy of SpecialityEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpecialityParamsCopyWith<$Res> get params {
  
  return $SpecialityParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchSpecialities value)?  fetchSpecialities,TResult Function( SearchSpecialities value)?  searchSpecialities,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchSpecialities() when fetchSpecialities != null:
return fetchSpecialities(_that);case SearchSpecialities() when searchSpecialities != null:
return searchSpecialities(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchSpecialities value)  fetchSpecialities,required TResult Function( SearchSpecialities value)  searchSpecialities,}){
final _that = this;
switch (_that) {
case FetchSpecialities():
return fetchSpecialities(_that);case SearchSpecialities():
return searchSpecialities(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchSpecialities value)?  fetchSpecialities,TResult? Function( SearchSpecialities value)?  searchSpecialities,}){
final _that = this;
switch (_that) {
case FetchSpecialities() when fetchSpecialities != null:
return fetchSpecialities(_that);case SearchSpecialities() when searchSpecialities != null:
return searchSpecialities(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( SpecialityParams params)?  fetchSpecialities,TResult Function( SpecialityParams params)?  searchSpecialities,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchSpecialities() when fetchSpecialities != null:
return fetchSpecialities(_that.params);case SearchSpecialities() when searchSpecialities != null:
return searchSpecialities(_that.params);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( SpecialityParams params)  fetchSpecialities,required TResult Function( SpecialityParams params)  searchSpecialities,}) {final _that = this;
switch (_that) {
case FetchSpecialities():
return fetchSpecialities(_that.params);case SearchSpecialities():
return searchSpecialities(_that.params);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( SpecialityParams params)?  fetchSpecialities,TResult? Function( SpecialityParams params)?  searchSpecialities,}) {final _that = this;
switch (_that) {
case FetchSpecialities() when fetchSpecialities != null:
return fetchSpecialities(_that.params);case SearchSpecialities() when searchSpecialities != null:
return searchSpecialities(_that.params);case _:
  return null;

}
}

}

/// @nodoc


class FetchSpecialities implements SpecialityEvent {
  const FetchSpecialities({required this.params});
  

@override final  SpecialityParams params;

/// Create a copy of SpecialityEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchSpecialitiesCopyWith<FetchSpecialities> get copyWith => _$FetchSpecialitiesCopyWithImpl<FetchSpecialities>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchSpecialities&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'SpecialityEvent.fetchSpecialities(params: $params)';
}


}

/// @nodoc
abstract mixin class $FetchSpecialitiesCopyWith<$Res> implements $SpecialityEventCopyWith<$Res> {
  factory $FetchSpecialitiesCopyWith(FetchSpecialities value, $Res Function(FetchSpecialities) _then) = _$FetchSpecialitiesCopyWithImpl;
@override @useResult
$Res call({
 SpecialityParams params
});


@override $SpecialityParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$FetchSpecialitiesCopyWithImpl<$Res>
    implements $FetchSpecialitiesCopyWith<$Res> {
  _$FetchSpecialitiesCopyWithImpl(this._self, this._then);

  final FetchSpecialities _self;
  final $Res Function(FetchSpecialities) _then;

/// Create a copy of SpecialityEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(FetchSpecialities(
params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as SpecialityParams,
  ));
}

/// Create a copy of SpecialityEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpecialityParamsCopyWith<$Res> get params {
  
  return $SpecialityParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc


class SearchSpecialities implements SpecialityEvent {
  const SearchSpecialities({required this.params});
  

@override final  SpecialityParams params;

/// Create a copy of SpecialityEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchSpecialitiesCopyWith<SearchSpecialities> get copyWith => _$SearchSpecialitiesCopyWithImpl<SearchSpecialities>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchSpecialities&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'SpecialityEvent.searchSpecialities(params: $params)';
}


}

/// @nodoc
abstract mixin class $SearchSpecialitiesCopyWith<$Res> implements $SpecialityEventCopyWith<$Res> {
  factory $SearchSpecialitiesCopyWith(SearchSpecialities value, $Res Function(SearchSpecialities) _then) = _$SearchSpecialitiesCopyWithImpl;
@override @useResult
$Res call({
 SpecialityParams params
});


@override $SpecialityParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$SearchSpecialitiesCopyWithImpl<$Res>
    implements $SearchSpecialitiesCopyWith<$Res> {
  _$SearchSpecialitiesCopyWithImpl(this._self, this._then);

  final SearchSpecialities _self;
  final $Res Function(SearchSpecialities) _then;

/// Create a copy of SpecialityEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(SearchSpecialities(
params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as SpecialityParams,
  ));
}

/// Create a copy of SpecialityEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpecialityParamsCopyWith<$Res> get params {
  
  return $SpecialityParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc
mixin _$SpecialityState {

 bool get isFetching; bool get isFetchingSuccess; bool get isFetchingError; ErrorModel get error; List<SpecialityModel> get specialities; List<SpecialityModel> get searchResult;
/// Create a copy of SpecialityState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecialityStateCopyWith<SpecialityState> get copyWith => _$SpecialityStateCopyWithImpl<SpecialityState>(this as SpecialityState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecialityState&&(identical(other.isFetching, isFetching) || other.isFetching == isFetching)&&(identical(other.isFetchingSuccess, isFetchingSuccess) || other.isFetchingSuccess == isFetchingSuccess)&&(identical(other.isFetchingError, isFetchingError) || other.isFetchingError == isFetchingError)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other.specialities, specialities)&&const DeepCollectionEquality().equals(other.searchResult, searchResult));
}


@override
int get hashCode => Object.hash(runtimeType,isFetching,isFetchingSuccess,isFetchingError,error,const DeepCollectionEquality().hash(specialities),const DeepCollectionEquality().hash(searchResult));

@override
String toString() {
  return 'SpecialityState(isFetching: $isFetching, isFetchingSuccess: $isFetchingSuccess, isFetchingError: $isFetchingError, error: $error, specialities: $specialities, searchResult: $searchResult)';
}


}

/// @nodoc
abstract mixin class $SpecialityStateCopyWith<$Res>  {
  factory $SpecialityStateCopyWith(SpecialityState value, $Res Function(SpecialityState) _then) = _$SpecialityStateCopyWithImpl;
@useResult
$Res call({
 bool isFetching, bool isFetchingSuccess, bool isFetchingError, ErrorModel error, List<SpecialityModel> specialities, List<SpecialityModel> searchResult
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
@pragma('vm:prefer-inline') @override $Res call({Object? isFetching = null,Object? isFetchingSuccess = null,Object? isFetchingError = null,Object? error = null,Object? specialities = null,Object? searchResult = null,}) {
  return _then(_self.copyWith(
isFetching: null == isFetching ? _self.isFetching : isFetching // ignore: cast_nullable_to_non_nullable
as bool,isFetchingSuccess: null == isFetchingSuccess ? _self.isFetchingSuccess : isFetchingSuccess // ignore: cast_nullable_to_non_nullable
as bool,isFetchingError: null == isFetchingError ? _self.isFetchingError : isFetchingError // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,specialities: null == specialities ? _self.specialities : specialities // ignore: cast_nullable_to_non_nullable
as List<SpecialityModel>,searchResult: null == searchResult ? _self.searchResult : searchResult // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isFetching,  bool isFetchingSuccess,  bool isFetchingError,  ErrorModel error,  List<SpecialityModel> specialities,  List<SpecialityModel> searchResult)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpecialityState() when $default != null:
return $default(_that.isFetching,_that.isFetchingSuccess,_that.isFetchingError,_that.error,_that.specialities,_that.searchResult);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isFetching,  bool isFetchingSuccess,  bool isFetchingError,  ErrorModel error,  List<SpecialityModel> specialities,  List<SpecialityModel> searchResult)  $default,) {final _that = this;
switch (_that) {
case _SpecialityState():
return $default(_that.isFetching,_that.isFetchingSuccess,_that.isFetchingError,_that.error,_that.specialities,_that.searchResult);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isFetching,  bool isFetchingSuccess,  bool isFetchingError,  ErrorModel error,  List<SpecialityModel> specialities,  List<SpecialityModel> searchResult)?  $default,) {final _that = this;
switch (_that) {
case _SpecialityState() when $default != null:
return $default(_that.isFetching,_that.isFetchingSuccess,_that.isFetchingError,_that.error,_that.specialities,_that.searchResult);case _:
  return null;

}
}

}

/// @nodoc


class _SpecialityState implements SpecialityState {
  const _SpecialityState({required this.isFetching, required this.isFetchingSuccess, required this.isFetchingError, required this.error, required final  List<SpecialityModel> specialities, required final  List<SpecialityModel> searchResult}): _specialities = specialities,_searchResult = searchResult;
  

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

 final  List<SpecialityModel> _searchResult;
@override List<SpecialityModel> get searchResult {
  if (_searchResult is EqualUnmodifiableListView) return _searchResult;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_searchResult);
}


/// Create a copy of SpecialityState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpecialityStateCopyWith<_SpecialityState> get copyWith => __$SpecialityStateCopyWithImpl<_SpecialityState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpecialityState&&(identical(other.isFetching, isFetching) || other.isFetching == isFetching)&&(identical(other.isFetchingSuccess, isFetchingSuccess) || other.isFetchingSuccess == isFetchingSuccess)&&(identical(other.isFetchingError, isFetchingError) || other.isFetchingError == isFetchingError)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other._specialities, _specialities)&&const DeepCollectionEquality().equals(other._searchResult, _searchResult));
}


@override
int get hashCode => Object.hash(runtimeType,isFetching,isFetchingSuccess,isFetchingError,error,const DeepCollectionEquality().hash(_specialities),const DeepCollectionEquality().hash(_searchResult));

@override
String toString() {
  return 'SpecialityState(isFetching: $isFetching, isFetchingSuccess: $isFetchingSuccess, isFetchingError: $isFetchingError, error: $error, specialities: $specialities, searchResult: $searchResult)';
}


}

/// @nodoc
abstract mixin class _$SpecialityStateCopyWith<$Res> implements $SpecialityStateCopyWith<$Res> {
  factory _$SpecialityStateCopyWith(_SpecialityState value, $Res Function(_SpecialityState) _then) = __$SpecialityStateCopyWithImpl;
@override @useResult
$Res call({
 bool isFetching, bool isFetchingSuccess, bool isFetchingError, ErrorModel error, List<SpecialityModel> specialities, List<SpecialityModel> searchResult
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
@override @pragma('vm:prefer-inline') $Res call({Object? isFetching = null,Object? isFetchingSuccess = null,Object? isFetchingError = null,Object? error = null,Object? specialities = null,Object? searchResult = null,}) {
  return _then(_SpecialityState(
isFetching: null == isFetching ? _self.isFetching : isFetching // ignore: cast_nullable_to_non_nullable
as bool,isFetchingSuccess: null == isFetchingSuccess ? _self.isFetchingSuccess : isFetchingSuccess // ignore: cast_nullable_to_non_nullable
as bool,isFetchingError: null == isFetchingError ? _self.isFetchingError : isFetchingError // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,specialities: null == specialities ? _self._specialities : specialities // ignore: cast_nullable_to_non_nullable
as List<SpecialityModel>,searchResult: null == searchResult ? _self._searchResult : searchResult // ignore: cast_nullable_to_non_nullable
as List<SpecialityModel>,
  ));
}


}

// dart format on
