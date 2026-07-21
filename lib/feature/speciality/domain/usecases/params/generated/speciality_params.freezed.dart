// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../speciality_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SpecialityParams {



  /// Serializes this SpecialityParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecialityParams);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SpecialityParams()';
}


}

/// @nodoc
class $SpecialityParamsCopyWith<$Res>  {
$SpecialityParamsCopyWith(SpecialityParams _, $Res Function(SpecialityParams) __);
}


/// Adds pattern-matching-related methods to [SpecialityParams].
extension SpecialityParamsPatterns on SpecialityParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchSpecialitiesParams value)?  fetchSpecialities,TResult Function( SearchSpecialitiesParams value)?  searchSpecialities,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchSpecialitiesParams() when fetchSpecialities != null:
return fetchSpecialities(_that);case SearchSpecialitiesParams() when searchSpecialities != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchSpecialitiesParams value)  fetchSpecialities,required TResult Function( SearchSpecialitiesParams value)  searchSpecialities,}){
final _that = this;
switch (_that) {
case FetchSpecialitiesParams():
return fetchSpecialities(_that);case SearchSpecialitiesParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchSpecialitiesParams value)?  fetchSpecialities,TResult? Function( SearchSpecialitiesParams value)?  searchSpecialities,}){
final _that = this;
switch (_that) {
case FetchSpecialitiesParams() when fetchSpecialities != null:
return fetchSpecialities(_that);case SearchSpecialitiesParams() when searchSpecialities != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function(@JsonKey(includeToJson: false)  String token, @JsonKey(name: 'id_busunit')  int idBusUnit)?  fetchSpecialities,TResult Function(@JsonKey(includeToJson: false)  String searchKey, @JsonKey(includeToJson: false, includeFromJson: false)  List<Speciality> specialities)?  searchSpecialities,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchSpecialitiesParams() when fetchSpecialities != null:
return fetchSpecialities(_that.token,_that.idBusUnit);case SearchSpecialitiesParams() when searchSpecialities != null:
return searchSpecialities(_that.searchKey,_that.specialities);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function(@JsonKey(includeToJson: false)  String token, @JsonKey(name: 'id_busunit')  int idBusUnit)  fetchSpecialities,required TResult Function(@JsonKey(includeToJson: false)  String searchKey, @JsonKey(includeToJson: false, includeFromJson: false)  List<Speciality> specialities)  searchSpecialities,}) {final _that = this;
switch (_that) {
case FetchSpecialitiesParams():
return fetchSpecialities(_that.token,_that.idBusUnit);case SearchSpecialitiesParams():
return searchSpecialities(_that.searchKey,_that.specialities);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function(@JsonKey(includeToJson: false)  String token, @JsonKey(name: 'id_busunit')  int idBusUnit)?  fetchSpecialities,TResult? Function(@JsonKey(includeToJson: false)  String searchKey, @JsonKey(includeToJson: false, includeFromJson: false)  List<Speciality> specialities)?  searchSpecialities,}) {final _that = this;
switch (_that) {
case FetchSpecialitiesParams() when fetchSpecialities != null:
return fetchSpecialities(_that.token,_that.idBusUnit);case SearchSpecialitiesParams() when searchSpecialities != null:
return searchSpecialities(_that.searchKey,_that.specialities);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createFactory: false)

class FetchSpecialitiesParams implements SpecialityParams {
  const FetchSpecialitiesParams({@JsonKey(includeToJson: false) required this.token, @JsonKey(name: 'id_busunit') required this.idBusUnit, final  String? $type}): $type = $type ?? 'fetchSpecialities';
  

@JsonKey(includeToJson: false) final  String token;
@JsonKey(name: 'id_busunit') final  int idBusUnit;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of SpecialityParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchSpecialitiesParamsCopyWith<FetchSpecialitiesParams> get copyWith => _$FetchSpecialitiesParamsCopyWithImpl<FetchSpecialitiesParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FetchSpecialitiesParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchSpecialitiesParams&&(identical(other.token, token) || other.token == token)&&(identical(other.idBusUnit, idBusUnit) || other.idBusUnit == idBusUnit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,idBusUnit);

@override
String toString() {
  return 'SpecialityParams.fetchSpecialities(token: $token, idBusUnit: $idBusUnit)';
}


}

/// @nodoc
abstract mixin class $FetchSpecialitiesParamsCopyWith<$Res> implements $SpecialityParamsCopyWith<$Res> {
  factory $FetchSpecialitiesParamsCopyWith(FetchSpecialitiesParams value, $Res Function(FetchSpecialitiesParams) _then) = _$FetchSpecialitiesParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeToJson: false) String token,@JsonKey(name: 'id_busunit') int idBusUnit
});




}
/// @nodoc
class _$FetchSpecialitiesParamsCopyWithImpl<$Res>
    implements $FetchSpecialitiesParamsCopyWith<$Res> {
  _$FetchSpecialitiesParamsCopyWithImpl(this._self, this._then);

  final FetchSpecialitiesParams _self;
  final $Res Function(FetchSpecialitiesParams) _then;

/// Create a copy of SpecialityParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? token = null,Object? idBusUnit = null,}) {
  return _then(FetchSpecialitiesParams(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,idBusUnit: null == idBusUnit ? _self.idBusUnit : idBusUnit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
@JsonSerializable(createFactory: false)

class SearchSpecialitiesParams implements SpecialityParams {
  const SearchSpecialitiesParams({@JsonKey(includeToJson: false) required this.searchKey, @JsonKey(includeToJson: false, includeFromJson: false) required final  List<Speciality> specialities, final  String? $type}): _specialities = specialities,$type = $type ?? 'searchSpecialities';
  

@JsonKey(includeToJson: false) final  String searchKey;
 final  List<Speciality> _specialities;
@JsonKey(includeToJson: false, includeFromJson: false) List<Speciality> get specialities {
  if (_specialities is EqualUnmodifiableListView) return _specialities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_specialities);
}


@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of SpecialityParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchSpecialitiesParamsCopyWith<SearchSpecialitiesParams> get copyWith => _$SearchSpecialitiesParamsCopyWithImpl<SearchSpecialitiesParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchSpecialitiesParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchSpecialitiesParams&&(identical(other.searchKey, searchKey) || other.searchKey == searchKey)&&const DeepCollectionEquality().equals(other._specialities, _specialities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,searchKey,const DeepCollectionEquality().hash(_specialities));

@override
String toString() {
  return 'SpecialityParams.searchSpecialities(searchKey: $searchKey, specialities: $specialities)';
}


}

/// @nodoc
abstract mixin class $SearchSpecialitiesParamsCopyWith<$Res> implements $SpecialityParamsCopyWith<$Res> {
  factory $SearchSpecialitiesParamsCopyWith(SearchSpecialitiesParams value, $Res Function(SearchSpecialitiesParams) _then) = _$SearchSpecialitiesParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeToJson: false) String searchKey,@JsonKey(includeToJson: false, includeFromJson: false) List<Speciality> specialities
});




}
/// @nodoc
class _$SearchSpecialitiesParamsCopyWithImpl<$Res>
    implements $SearchSpecialitiesParamsCopyWith<$Res> {
  _$SearchSpecialitiesParamsCopyWithImpl(this._self, this._then);

  final SearchSpecialitiesParams _self;
  final $Res Function(SearchSpecialitiesParams) _then;

/// Create a copy of SpecialityParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? searchKey = null,Object? specialities = null,}) {
  return _then(SearchSpecialitiesParams(
searchKey: null == searchKey ? _self.searchKey : searchKey // ignore: cast_nullable_to_non_nullable
as String,specialities: null == specialities ? _self._specialities : specialities // ignore: cast_nullable_to_non_nullable
as List<Speciality>,
  ));
}


}

// dart format on
