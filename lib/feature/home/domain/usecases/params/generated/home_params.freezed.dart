// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../home_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeParams {

 String get token; int get idBusunit;
/// Create a copy of HomeParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeParamsCopyWith<HomeParams> get copyWith => _$HomeParamsCopyWithImpl<HomeParams>(this as HomeParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeParams&&(identical(other.token, token) || other.token == token)&&(identical(other.idBusunit, idBusunit) || other.idBusunit == idBusunit));
}


@override
int get hashCode => Object.hash(runtimeType,token,idBusunit);

@override
String toString() {
  return 'HomeParams(token: $token, idBusunit: $idBusunit)';
}


}

/// @nodoc
abstract mixin class $HomeParamsCopyWith<$Res>  {
  factory $HomeParamsCopyWith(HomeParams value, $Res Function(HomeParams) _then) = _$HomeParamsCopyWithImpl;
@useResult
$Res call({
 String token, int idBusunit
});




}
/// @nodoc
class _$HomeParamsCopyWithImpl<$Res>
    implements $HomeParamsCopyWith<$Res> {
  _$HomeParamsCopyWithImpl(this._self, this._then);

  final HomeParams _self;
  final $Res Function(HomeParams) _then;

/// Create a copy of HomeParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,Object? idBusunit = null,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,idBusunit: null == idBusunit ? _self.idBusunit : idBusunit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeParams].
extension HomeParamsPatterns on HomeParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetHomeDataParams value)?  getHomeData,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetHomeDataParams() when getHomeData != null:
return getHomeData(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetHomeDataParams value)  getHomeData,}){
final _that = this;
switch (_that) {
case _GetHomeDataParams():
return getHomeData(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetHomeDataParams value)?  getHomeData,}){
final _that = this;
switch (_that) {
case _GetHomeDataParams() when getHomeData != null:
return getHomeData(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String token,  int idBusunit)?  getHomeData,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetHomeDataParams() when getHomeData != null:
return getHomeData(_that.token,_that.idBusunit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String token,  int idBusunit)  getHomeData,}) {final _that = this;
switch (_that) {
case _GetHomeDataParams():
return getHomeData(_that.token,_that.idBusunit);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String token,  int idBusunit)?  getHomeData,}) {final _that = this;
switch (_that) {
case _GetHomeDataParams() when getHomeData != null:
return getHomeData(_that.token,_that.idBusunit);case _:
  return null;

}
}

}

/// @nodoc


class _GetHomeDataParams implements HomeParams {
  const _GetHomeDataParams({required this.token, required this.idBusunit});
  

@override final  String token;
@override final  int idBusunit;

/// Create a copy of HomeParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetHomeDataParamsCopyWith<_GetHomeDataParams> get copyWith => __$GetHomeDataParamsCopyWithImpl<_GetHomeDataParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetHomeDataParams&&(identical(other.token, token) || other.token == token)&&(identical(other.idBusunit, idBusunit) || other.idBusunit == idBusunit));
}


@override
int get hashCode => Object.hash(runtimeType,token,idBusunit);

@override
String toString() {
  return 'HomeParams.getHomeData(token: $token, idBusunit: $idBusunit)';
}


}

/// @nodoc
abstract mixin class _$GetHomeDataParamsCopyWith<$Res> implements $HomeParamsCopyWith<$Res> {
  factory _$GetHomeDataParamsCopyWith(_GetHomeDataParams value, $Res Function(_GetHomeDataParams) _then) = __$GetHomeDataParamsCopyWithImpl;
@override @useResult
$Res call({
 String token, int idBusunit
});




}
/// @nodoc
class __$GetHomeDataParamsCopyWithImpl<$Res>
    implements _$GetHomeDataParamsCopyWith<$Res> {
  __$GetHomeDataParamsCopyWithImpl(this._self, this._then);

  final _GetHomeDataParams _self;
  final $Res Function(_GetHomeDataParams) _then;

/// Create a copy of HomeParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? idBusunit = null,}) {
  return _then(_GetHomeDataParams(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,idBusunit: null == idBusunit ? _self.idBusunit : idBusunit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
