// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_doctor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchDoctorEvent {

 String get searchKey; List<DoctorModel> get doctors;
/// Create a copy of SearchDoctorEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchDoctorEventCopyWith<SearchDoctorEvent> get copyWith => _$SearchDoctorEventCopyWithImpl<SearchDoctorEvent>(this as SearchDoctorEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchDoctorEvent&&(identical(other.searchKey, searchKey) || other.searchKey == searchKey)&&const DeepCollectionEquality().equals(other.doctors, doctors));
}


@override
int get hashCode => Object.hash(runtimeType,searchKey,const DeepCollectionEquality().hash(doctors));

@override
String toString() {
  return 'SearchDoctorEvent(searchKey: $searchKey, doctors: $doctors)';
}


}

/// @nodoc
abstract mixin class $SearchDoctorEventCopyWith<$Res>  {
  factory $SearchDoctorEventCopyWith(SearchDoctorEvent value, $Res Function(SearchDoctorEvent) _then) = _$SearchDoctorEventCopyWithImpl;
@useResult
$Res call({
 String searchKey, List<DoctorModel> doctors
});




}
/// @nodoc
class _$SearchDoctorEventCopyWithImpl<$Res>
    implements $SearchDoctorEventCopyWith<$Res> {
  _$SearchDoctorEventCopyWithImpl(this._self, this._then);

  final SearchDoctorEvent _self;
  final $Res Function(SearchDoctorEvent) _then;

/// Create a copy of SearchDoctorEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? searchKey = null,Object? doctors = null,}) {
  return _then(_self.copyWith(
searchKey: null == searchKey ? _self.searchKey : searchKey // ignore: cast_nullable_to_non_nullable
as String,doctors: null == doctors ? _self.doctors : doctors // ignore: cast_nullable_to_non_nullable
as List<DoctorModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchDoctorEvent].
extension SearchDoctorEventPatterns on SearchDoctorEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SearchDoctor value)?  searchDoctor,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SearchDoctor() when searchDoctor != null:
return searchDoctor(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SearchDoctor value)  searchDoctor,}){
final _that = this;
switch (_that) {
case SearchDoctor():
return searchDoctor(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SearchDoctor value)?  searchDoctor,}){
final _that = this;
switch (_that) {
case SearchDoctor() when searchDoctor != null:
return searchDoctor(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String searchKey,  List<DoctorModel> doctors)?  searchDoctor,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SearchDoctor() when searchDoctor != null:
return searchDoctor(_that.searchKey,_that.doctors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String searchKey,  List<DoctorModel> doctors)  searchDoctor,}) {final _that = this;
switch (_that) {
case SearchDoctor():
return searchDoctor(_that.searchKey,_that.doctors);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String searchKey,  List<DoctorModel> doctors)?  searchDoctor,}) {final _that = this;
switch (_that) {
case SearchDoctor() when searchDoctor != null:
return searchDoctor(_that.searchKey,_that.doctors);case _:
  return null;

}
}

}

/// @nodoc


class SearchDoctor implements SearchDoctorEvent {
  const SearchDoctor({required this.searchKey, required final  List<DoctorModel> doctors}): _doctors = doctors;
  

@override final  String searchKey;
 final  List<DoctorModel> _doctors;
@override List<DoctorModel> get doctors {
  if (_doctors is EqualUnmodifiableListView) return _doctors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_doctors);
}


/// Create a copy of SearchDoctorEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchDoctorCopyWith<SearchDoctor> get copyWith => _$SearchDoctorCopyWithImpl<SearchDoctor>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchDoctor&&(identical(other.searchKey, searchKey) || other.searchKey == searchKey)&&const DeepCollectionEquality().equals(other._doctors, _doctors));
}


@override
int get hashCode => Object.hash(runtimeType,searchKey,const DeepCollectionEquality().hash(_doctors));

@override
String toString() {
  return 'SearchDoctorEvent.searchDoctor(searchKey: $searchKey, doctors: $doctors)';
}


}

/// @nodoc
abstract mixin class $SearchDoctorCopyWith<$Res> implements $SearchDoctorEventCopyWith<$Res> {
  factory $SearchDoctorCopyWith(SearchDoctor value, $Res Function(SearchDoctor) _then) = _$SearchDoctorCopyWithImpl;
@override @useResult
$Res call({
 String searchKey, List<DoctorModel> doctors
});




}
/// @nodoc
class _$SearchDoctorCopyWithImpl<$Res>
    implements $SearchDoctorCopyWith<$Res> {
  _$SearchDoctorCopyWithImpl(this._self, this._then);

  final SearchDoctor _self;
  final $Res Function(SearchDoctor) _then;

/// Create a copy of SearchDoctorEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? searchKey = null,Object? doctors = null,}) {
  return _then(SearchDoctor(
searchKey: null == searchKey ? _self.searchKey : searchKey // ignore: cast_nullable_to_non_nullable
as String,doctors: null == doctors ? _self._doctors : doctors // ignore: cast_nullable_to_non_nullable
as List<DoctorModel>,
  ));
}


}

/// @nodoc
mixin _$SearchDoctorState {

 List<DoctorModel> get searchResult;
/// Create a copy of SearchDoctorState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchDoctorStateCopyWith<SearchDoctorState> get copyWith => _$SearchDoctorStateCopyWithImpl<SearchDoctorState>(this as SearchDoctorState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchDoctorState&&const DeepCollectionEquality().equals(other.searchResult, searchResult));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(searchResult));

@override
String toString() {
  return 'SearchDoctorState(searchResult: $searchResult)';
}


}

/// @nodoc
abstract mixin class $SearchDoctorStateCopyWith<$Res>  {
  factory $SearchDoctorStateCopyWith(SearchDoctorState value, $Res Function(SearchDoctorState) _then) = _$SearchDoctorStateCopyWithImpl;
@useResult
$Res call({
 List<DoctorModel> searchResult
});




}
/// @nodoc
class _$SearchDoctorStateCopyWithImpl<$Res>
    implements $SearchDoctorStateCopyWith<$Res> {
  _$SearchDoctorStateCopyWithImpl(this._self, this._then);

  final SearchDoctorState _self;
  final $Res Function(SearchDoctorState) _then;

/// Create a copy of SearchDoctorState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? searchResult = null,}) {
  return _then(_self.copyWith(
searchResult: null == searchResult ? _self.searchResult : searchResult // ignore: cast_nullable_to_non_nullable
as List<DoctorModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchDoctorState].
extension SearchDoctorStatePatterns on SearchDoctorState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchDoctorState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchDoctorState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchDoctorState value)  $default,){
final _that = this;
switch (_that) {
case _SearchDoctorState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchDoctorState value)?  $default,){
final _that = this;
switch (_that) {
case _SearchDoctorState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<DoctorModel> searchResult)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchDoctorState() when $default != null:
return $default(_that.searchResult);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<DoctorModel> searchResult)  $default,) {final _that = this;
switch (_that) {
case _SearchDoctorState():
return $default(_that.searchResult);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<DoctorModel> searchResult)?  $default,) {final _that = this;
switch (_that) {
case _SearchDoctorState() when $default != null:
return $default(_that.searchResult);case _:
  return null;

}
}

}

/// @nodoc


class _SearchDoctorState implements SearchDoctorState {
  const _SearchDoctorState({required final  List<DoctorModel> searchResult}): _searchResult = searchResult;
  

 final  List<DoctorModel> _searchResult;
@override List<DoctorModel> get searchResult {
  if (_searchResult is EqualUnmodifiableListView) return _searchResult;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_searchResult);
}


/// Create a copy of SearchDoctorState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchDoctorStateCopyWith<_SearchDoctorState> get copyWith => __$SearchDoctorStateCopyWithImpl<_SearchDoctorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchDoctorState&&const DeepCollectionEquality().equals(other._searchResult, _searchResult));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_searchResult));

@override
String toString() {
  return 'SearchDoctorState(searchResult: $searchResult)';
}


}

/// @nodoc
abstract mixin class _$SearchDoctorStateCopyWith<$Res> implements $SearchDoctorStateCopyWith<$Res> {
  factory _$SearchDoctorStateCopyWith(_SearchDoctorState value, $Res Function(_SearchDoctorState) _then) = __$SearchDoctorStateCopyWithImpl;
@override @useResult
$Res call({
 List<DoctorModel> searchResult
});




}
/// @nodoc
class __$SearchDoctorStateCopyWithImpl<$Res>
    implements _$SearchDoctorStateCopyWith<$Res> {
  __$SearchDoctorStateCopyWithImpl(this._self, this._then);

  final _SearchDoctorState _self;
  final $Res Function(_SearchDoctorState) _then;

/// Create a copy of SearchDoctorState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? searchResult = null,}) {
  return _then(_SearchDoctorState(
searchResult: null == searchResult ? _self._searchResult : searchResult // ignore: cast_nullable_to_non_nullable
as List<DoctorModel>,
  ));
}


}

// dart format on
