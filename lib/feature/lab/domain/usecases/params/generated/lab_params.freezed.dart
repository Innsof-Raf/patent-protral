// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../lab_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LabParams {

 String get token;
/// Create a copy of LabParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LabParamsCopyWith<LabParams> get copyWith => _$LabParamsCopyWithImpl<LabParams>(this as LabParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LabParams&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,token);

@override
String toString() {
  return 'LabParams(token: $token)';
}


}

/// @nodoc
abstract mixin class $LabParamsCopyWith<$Res>  {
  factory $LabParamsCopyWith(LabParams value, $Res Function(LabParams) _then) = _$LabParamsCopyWithImpl;
@useResult
$Res call({
 String token
});




}
/// @nodoc
class _$LabParamsCopyWithImpl<$Res>
    implements $LabParamsCopyWith<$Res> {
  _$LabParamsCopyWithImpl(this._self, this._then);

  final LabParams _self;
  final $Res Function(LabParams) _then;

/// Create a copy of LabParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LabParams].
extension LabParamsPatterns on LabParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetItemsParams value)?  getItems,TResult Function( _UpdateItemInCartParams value)?  updateItemInCart,TResult Function( _GetItemDetailParams value)?  getItemDetail,TResult Function( _GetPackagesParams value)?  getPackages,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetItemsParams() when getItems != null:
return getItems(_that);case _UpdateItemInCartParams() when updateItemInCart != null:
return updateItemInCart(_that);case _GetItemDetailParams() when getItemDetail != null:
return getItemDetail(_that);case _GetPackagesParams() when getPackages != null:
return getPackages(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetItemsParams value)  getItems,required TResult Function( _UpdateItemInCartParams value)  updateItemInCart,required TResult Function( _GetItemDetailParams value)  getItemDetail,required TResult Function( _GetPackagesParams value)  getPackages,}){
final _that = this;
switch (_that) {
case _GetItemsParams():
return getItems(_that);case _UpdateItemInCartParams():
return updateItemInCart(_that);case _GetItemDetailParams():
return getItemDetail(_that);case _GetPackagesParams():
return getPackages(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetItemsParams value)?  getItems,TResult? Function( _UpdateItemInCartParams value)?  updateItemInCart,TResult? Function( _GetItemDetailParams value)?  getItemDetail,TResult? Function( _GetPackagesParams value)?  getPackages,}){
final _that = this;
switch (_that) {
case _GetItemsParams() when getItems != null:
return getItems(_that);case _UpdateItemInCartParams() when updateItemInCart != null:
return updateItemInCart(_that);case _GetItemDetailParams() when getItemDetail != null:
return getItemDetail(_that);case _GetPackagesParams() when getPackages != null:
return getPackages(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String token)?  getItems,TResult Function( int idItem,  int idUser,  String token)?  updateItemInCart,TResult Function( int idItem,  String token)?  getItemDetail,TResult Function( String token)?  getPackages,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetItemsParams() when getItems != null:
return getItems(_that.token);case _UpdateItemInCartParams() when updateItemInCart != null:
return updateItemInCart(_that.idItem,_that.idUser,_that.token);case _GetItemDetailParams() when getItemDetail != null:
return getItemDetail(_that.idItem,_that.token);case _GetPackagesParams() when getPackages != null:
return getPackages(_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String token)  getItems,required TResult Function( int idItem,  int idUser,  String token)  updateItemInCart,required TResult Function( int idItem,  String token)  getItemDetail,required TResult Function( String token)  getPackages,}) {final _that = this;
switch (_that) {
case _GetItemsParams():
return getItems(_that.token);case _UpdateItemInCartParams():
return updateItemInCart(_that.idItem,_that.idUser,_that.token);case _GetItemDetailParams():
return getItemDetail(_that.idItem,_that.token);case _GetPackagesParams():
return getPackages(_that.token);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String token)?  getItems,TResult? Function( int idItem,  int idUser,  String token)?  updateItemInCart,TResult? Function( int idItem,  String token)?  getItemDetail,TResult? Function( String token)?  getPackages,}) {final _that = this;
switch (_that) {
case _GetItemsParams() when getItems != null:
return getItems(_that.token);case _UpdateItemInCartParams() when updateItemInCart != null:
return updateItemInCart(_that.idItem,_that.idUser,_that.token);case _GetItemDetailParams() when getItemDetail != null:
return getItemDetail(_that.idItem,_that.token);case _GetPackagesParams() when getPackages != null:
return getPackages(_that.token);case _:
  return null;

}
}

}

/// @nodoc


class _GetItemsParams implements LabParams {
  const _GetItemsParams({required this.token});
  

@override final  String token;

/// Create a copy of LabParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetItemsParamsCopyWith<_GetItemsParams> get copyWith => __$GetItemsParamsCopyWithImpl<_GetItemsParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetItemsParams&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,token);

@override
String toString() {
  return 'LabParams.getItems(token: $token)';
}


}

/// @nodoc
abstract mixin class _$GetItemsParamsCopyWith<$Res> implements $LabParamsCopyWith<$Res> {
  factory _$GetItemsParamsCopyWith(_GetItemsParams value, $Res Function(_GetItemsParams) _then) = __$GetItemsParamsCopyWithImpl;
@override @useResult
$Res call({
 String token
});




}
/// @nodoc
class __$GetItemsParamsCopyWithImpl<$Res>
    implements _$GetItemsParamsCopyWith<$Res> {
  __$GetItemsParamsCopyWithImpl(this._self, this._then);

  final _GetItemsParams _self;
  final $Res Function(_GetItemsParams) _then;

/// Create a copy of LabParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,}) {
  return _then(_GetItemsParams(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _UpdateItemInCartParams implements LabParams {
  const _UpdateItemInCartParams({required this.idItem, required this.idUser, required this.token});
  

 final  int idItem;
 final  int idUser;
@override final  String token;

/// Create a copy of LabParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateItemInCartParamsCopyWith<_UpdateItemInCartParams> get copyWith => __$UpdateItemInCartParamsCopyWithImpl<_UpdateItemInCartParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateItemInCartParams&&(identical(other.idItem, idItem) || other.idItem == idItem)&&(identical(other.idUser, idUser) || other.idUser == idUser)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,idItem,idUser,token);

@override
String toString() {
  return 'LabParams.updateItemInCart(idItem: $idItem, idUser: $idUser, token: $token)';
}


}

/// @nodoc
abstract mixin class _$UpdateItemInCartParamsCopyWith<$Res> implements $LabParamsCopyWith<$Res> {
  factory _$UpdateItemInCartParamsCopyWith(_UpdateItemInCartParams value, $Res Function(_UpdateItemInCartParams) _then) = __$UpdateItemInCartParamsCopyWithImpl;
@override @useResult
$Res call({
 int idItem, int idUser, String token
});




}
/// @nodoc
class __$UpdateItemInCartParamsCopyWithImpl<$Res>
    implements _$UpdateItemInCartParamsCopyWith<$Res> {
  __$UpdateItemInCartParamsCopyWithImpl(this._self, this._then);

  final _UpdateItemInCartParams _self;
  final $Res Function(_UpdateItemInCartParams) _then;

/// Create a copy of LabParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idItem = null,Object? idUser = null,Object? token = null,}) {
  return _then(_UpdateItemInCartParams(
idItem: null == idItem ? _self.idItem : idItem // ignore: cast_nullable_to_non_nullable
as int,idUser: null == idUser ? _self.idUser : idUser // ignore: cast_nullable_to_non_nullable
as int,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetItemDetailParams implements LabParams {
  const _GetItemDetailParams({required this.idItem, required this.token});
  

 final  int idItem;
@override final  String token;

/// Create a copy of LabParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetItemDetailParamsCopyWith<_GetItemDetailParams> get copyWith => __$GetItemDetailParamsCopyWithImpl<_GetItemDetailParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetItemDetailParams&&(identical(other.idItem, idItem) || other.idItem == idItem)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,idItem,token);

@override
String toString() {
  return 'LabParams.getItemDetail(idItem: $idItem, token: $token)';
}


}

/// @nodoc
abstract mixin class _$GetItemDetailParamsCopyWith<$Res> implements $LabParamsCopyWith<$Res> {
  factory _$GetItemDetailParamsCopyWith(_GetItemDetailParams value, $Res Function(_GetItemDetailParams) _then) = __$GetItemDetailParamsCopyWithImpl;
@override @useResult
$Res call({
 int idItem, String token
});




}
/// @nodoc
class __$GetItemDetailParamsCopyWithImpl<$Res>
    implements _$GetItemDetailParamsCopyWith<$Res> {
  __$GetItemDetailParamsCopyWithImpl(this._self, this._then);

  final _GetItemDetailParams _self;
  final $Res Function(_GetItemDetailParams) _then;

/// Create a copy of LabParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idItem = null,Object? token = null,}) {
  return _then(_GetItemDetailParams(
idItem: null == idItem ? _self.idItem : idItem // ignore: cast_nullable_to_non_nullable
as int,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetPackagesParams implements LabParams {
  const _GetPackagesParams({required this.token});
  

@override final  String token;

/// Create a copy of LabParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetPackagesParamsCopyWith<_GetPackagesParams> get copyWith => __$GetPackagesParamsCopyWithImpl<_GetPackagesParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetPackagesParams&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,token);

@override
String toString() {
  return 'LabParams.getPackages(token: $token)';
}


}

/// @nodoc
abstract mixin class _$GetPackagesParamsCopyWith<$Res> implements $LabParamsCopyWith<$Res> {
  factory _$GetPackagesParamsCopyWith(_GetPackagesParams value, $Res Function(_GetPackagesParams) _then) = __$GetPackagesParamsCopyWithImpl;
@override @useResult
$Res call({
 String token
});




}
/// @nodoc
class __$GetPackagesParamsCopyWithImpl<$Res>
    implements _$GetPackagesParamsCopyWith<$Res> {
  __$GetPackagesParamsCopyWithImpl(this._self, this._then);

  final _GetPackagesParams _self;
  final $Res Function(_GetPackagesParams) _then;

/// Create a copy of LabParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,}) {
  return _then(_GetPackagesParams(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
