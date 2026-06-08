// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../search_speciality_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchSpecialityBlocEvent {

 String get searchKey; List<SpecialityModel> get specialities;
/// Create a copy of SearchSpecialityBlocEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchSpecialityBlocEventCopyWith<SearchSpecialityBlocEvent> get copyWith => _$SearchSpecialityBlocEventCopyWithImpl<SearchSpecialityBlocEvent>(this as SearchSpecialityBlocEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchSpecialityBlocEvent&&(identical(other.searchKey, searchKey) || other.searchKey == searchKey)&&const DeepCollectionEquality().equals(other.specialities, specialities));
}


@override
int get hashCode => Object.hash(runtimeType,searchKey,const DeepCollectionEquality().hash(specialities));

@override
String toString() {
  return 'SearchSpecialityBlocEvent(searchKey: $searchKey, specialities: $specialities)';
}


}

/// @nodoc
abstract mixin class $SearchSpecialityBlocEventCopyWith<$Res>  {
  factory $SearchSpecialityBlocEventCopyWith(SearchSpecialityBlocEvent value, $Res Function(SearchSpecialityBlocEvent) _then) = _$SearchSpecialityBlocEventCopyWithImpl;
@useResult
$Res call({
 String searchKey, List<SpecialityModel> specialities
});




}
/// @nodoc
class _$SearchSpecialityBlocEventCopyWithImpl<$Res>
    implements $SearchSpecialityBlocEventCopyWith<$Res> {
  _$SearchSpecialityBlocEventCopyWithImpl(this._self, this._then);

  final SearchSpecialityBlocEvent _self;
  final $Res Function(SearchSpecialityBlocEvent) _then;

/// Create a copy of SearchSpecialityBlocEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? searchKey = null,Object? specialities = null,}) {
  return _then(_self.copyWith(
searchKey: null == searchKey ? _self.searchKey : searchKey // ignore: cast_nullable_to_non_nullable
as String,specialities: null == specialities ? _self.specialities : specialities // ignore: cast_nullable_to_non_nullable
as List<SpecialityModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchSpecialityBlocEvent].
extension SearchSpecialityBlocEventPatterns on SearchSpecialityBlocEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SearchSpeciality value)?  searchSpeciality,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SearchSpeciality() when searchSpeciality != null:
return searchSpeciality(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SearchSpeciality value)  searchSpeciality,}){
final _that = this;
switch (_that) {
case SearchSpeciality():
return searchSpeciality(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SearchSpeciality value)?  searchSpeciality,}){
final _that = this;
switch (_that) {
case SearchSpeciality() when searchSpeciality != null:
return searchSpeciality(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String searchKey,  List<SpecialityModel> specialities)?  searchSpeciality,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SearchSpeciality() when searchSpeciality != null:
return searchSpeciality(_that.searchKey,_that.specialities);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String searchKey,  List<SpecialityModel> specialities)  searchSpeciality,}) {final _that = this;
switch (_that) {
case SearchSpeciality():
return searchSpeciality(_that.searchKey,_that.specialities);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String searchKey,  List<SpecialityModel> specialities)?  searchSpeciality,}) {final _that = this;
switch (_that) {
case SearchSpeciality() when searchSpeciality != null:
return searchSpeciality(_that.searchKey,_that.specialities);case _:
  return null;

}
}

}

/// @nodoc


class SearchSpeciality implements SearchSpecialityBlocEvent {
  const SearchSpeciality({required this.searchKey, required final  List<SpecialityModel> specialities}): _specialities = specialities;
  

@override final  String searchKey;
 final  List<SpecialityModel> _specialities;
@override List<SpecialityModel> get specialities {
  if (_specialities is EqualUnmodifiableListView) return _specialities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_specialities);
}


/// Create a copy of SearchSpecialityBlocEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchSpecialityCopyWith<SearchSpeciality> get copyWith => _$SearchSpecialityCopyWithImpl<SearchSpeciality>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchSpeciality&&(identical(other.searchKey, searchKey) || other.searchKey == searchKey)&&const DeepCollectionEquality().equals(other._specialities, _specialities));
}


@override
int get hashCode => Object.hash(runtimeType,searchKey,const DeepCollectionEquality().hash(_specialities));

@override
String toString() {
  return 'SearchSpecialityBlocEvent.searchSpeciality(searchKey: $searchKey, specialities: $specialities)';
}


}

/// @nodoc
abstract mixin class $SearchSpecialityCopyWith<$Res> implements $SearchSpecialityBlocEventCopyWith<$Res> {
  factory $SearchSpecialityCopyWith(SearchSpeciality value, $Res Function(SearchSpeciality) _then) = _$SearchSpecialityCopyWithImpl;
@override @useResult
$Res call({
 String searchKey, List<SpecialityModel> specialities
});




}
/// @nodoc
class _$SearchSpecialityCopyWithImpl<$Res>
    implements $SearchSpecialityCopyWith<$Res> {
  _$SearchSpecialityCopyWithImpl(this._self, this._then);

  final SearchSpeciality _self;
  final $Res Function(SearchSpeciality) _then;

/// Create a copy of SearchSpecialityBlocEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? searchKey = null,Object? specialities = null,}) {
  return _then(SearchSpeciality(
searchKey: null == searchKey ? _self.searchKey : searchKey // ignore: cast_nullable_to_non_nullable
as String,specialities: null == specialities ? _self._specialities : specialities // ignore: cast_nullable_to_non_nullable
as List<SpecialityModel>,
  ));
}


}

/// @nodoc
mixin _$SearchSpecialityBlocState {

 List<SpecialityModel> get searchResult;
/// Create a copy of SearchSpecialityBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchSpecialityBlocStateCopyWith<SearchSpecialityBlocState> get copyWith => _$SearchSpecialityBlocStateCopyWithImpl<SearchSpecialityBlocState>(this as SearchSpecialityBlocState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchSpecialityBlocState&&const DeepCollectionEquality().equals(other.searchResult, searchResult));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(searchResult));

@override
String toString() {
  return 'SearchSpecialityBlocState(searchResult: $searchResult)';
}


}

/// @nodoc
abstract mixin class $SearchSpecialityBlocStateCopyWith<$Res>  {
  factory $SearchSpecialityBlocStateCopyWith(SearchSpecialityBlocState value, $Res Function(SearchSpecialityBlocState) _then) = _$SearchSpecialityBlocStateCopyWithImpl;
@useResult
$Res call({
 List<SpecialityModel> searchResult
});




}
/// @nodoc
class _$SearchSpecialityBlocStateCopyWithImpl<$Res>
    implements $SearchSpecialityBlocStateCopyWith<$Res> {
  _$SearchSpecialityBlocStateCopyWithImpl(this._self, this._then);

  final SearchSpecialityBlocState _self;
  final $Res Function(SearchSpecialityBlocState) _then;

/// Create a copy of SearchSpecialityBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? searchResult = null,}) {
  return _then(_self.copyWith(
searchResult: null == searchResult ? _self.searchResult : searchResult // ignore: cast_nullable_to_non_nullable
as List<SpecialityModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchSpecialityBlocState].
extension SearchSpecialityBlocStatePatterns on SearchSpecialityBlocState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchSpecialityBlocState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchSpecialityBlocState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchSpecialityBlocState value)  $default,){
final _that = this;
switch (_that) {
case _SearchSpecialityBlocState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchSpecialityBlocState value)?  $default,){
final _that = this;
switch (_that) {
case _SearchSpecialityBlocState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SpecialityModel> searchResult)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchSpecialityBlocState() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SpecialityModel> searchResult)  $default,) {final _that = this;
switch (_that) {
case _SearchSpecialityBlocState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SpecialityModel> searchResult)?  $default,) {final _that = this;
switch (_that) {
case _SearchSpecialityBlocState() when $default != null:
return $default(_that.searchResult);case _:
  return null;

}
}

}

/// @nodoc


class _SearchSpecialityBlocState implements SearchSpecialityBlocState {
  const _SearchSpecialityBlocState({required final  List<SpecialityModel> searchResult}): _searchResult = searchResult;
  

 final  List<SpecialityModel> _searchResult;
@override List<SpecialityModel> get searchResult {
  if (_searchResult is EqualUnmodifiableListView) return _searchResult;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_searchResult);
}


/// Create a copy of SearchSpecialityBlocState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchSpecialityBlocStateCopyWith<_SearchSpecialityBlocState> get copyWith => __$SearchSpecialityBlocStateCopyWithImpl<_SearchSpecialityBlocState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchSpecialityBlocState&&const DeepCollectionEquality().equals(other._searchResult, _searchResult));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_searchResult));

@override
String toString() {
  return 'SearchSpecialityBlocState(searchResult: $searchResult)';
}


}

/// @nodoc
abstract mixin class _$SearchSpecialityBlocStateCopyWith<$Res> implements $SearchSpecialityBlocStateCopyWith<$Res> {
  factory _$SearchSpecialityBlocStateCopyWith(_SearchSpecialityBlocState value, $Res Function(_SearchSpecialityBlocState) _then) = __$SearchSpecialityBlocStateCopyWithImpl;
@override @useResult
$Res call({
 List<SpecialityModel> searchResult
});




}
/// @nodoc
class __$SearchSpecialityBlocStateCopyWithImpl<$Res>
    implements _$SearchSpecialityBlocStateCopyWith<$Res> {
  __$SearchSpecialityBlocStateCopyWithImpl(this._self, this._then);

  final _SearchSpecialityBlocState _self;
  final $Res Function(_SearchSpecialityBlocState) _then;

/// Create a copy of SearchSpecialityBlocState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? searchResult = null,}) {
  return _then(_SearchSpecialityBlocState(
searchResult: null == searchResult ? _self._searchResult : searchResult // ignore: cast_nullable_to_non_nullable
as List<SpecialityModel>,
  ));
}


}

// dart format on
