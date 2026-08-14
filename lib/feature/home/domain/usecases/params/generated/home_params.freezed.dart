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
HomeParams _$HomeParamsFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'getHomeData':
          return _GetHomeDataParams.fromJson(
            json
          );
                case 'getTreeDetail':
          return _GetTreeDetailParams.fromJson(
            json
          );
                case 'getTreeDetailItem':
          return _GetTreeDetailItemParams.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'HomeParams',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$HomeParams {

@JsonKey(includeToJson: false) String get token;
/// Create a copy of HomeParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeParamsCopyWith<HomeParams> get copyWith => _$HomeParamsCopyWithImpl<HomeParams>(this as HomeParams, _$identity);

  /// Serializes this HomeParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeParams&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token);

@override
String toString() {
  return 'HomeParams(token: $token)';
}


}

/// @nodoc
abstract mixin class $HomeParamsCopyWith<$Res>  {
  factory $HomeParamsCopyWith(HomeParams value, $Res Function(HomeParams) _then) = _$HomeParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeToJson: false) String token
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
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetHomeDataParams value)?  getHomeData,TResult Function( _GetTreeDetailParams value)?  getTreeDetail,TResult Function( _GetTreeDetailItemParams value)?  getTreeDetailItem,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetHomeDataParams() when getHomeData != null:
return getHomeData(_that);case _GetTreeDetailParams() when getTreeDetail != null:
return getTreeDetail(_that);case _GetTreeDetailItemParams() when getTreeDetailItem != null:
return getTreeDetailItem(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetHomeDataParams value)  getHomeData,required TResult Function( _GetTreeDetailParams value)  getTreeDetail,required TResult Function( _GetTreeDetailItemParams value)  getTreeDetailItem,}){
final _that = this;
switch (_that) {
case _GetHomeDataParams():
return getHomeData(_that);case _GetTreeDetailParams():
return getTreeDetail(_that);case _GetTreeDetailItemParams():
return getTreeDetailItem(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetHomeDataParams value)?  getHomeData,TResult? Function( _GetTreeDetailParams value)?  getTreeDetail,TResult? Function( _GetTreeDetailItemParams value)?  getTreeDetailItem,}){
final _that = this;
switch (_that) {
case _GetHomeDataParams() when getHomeData != null:
return getHomeData(_that);case _GetTreeDetailParams() when getTreeDetail != null:
return getTreeDetail(_that);case _GetTreeDetailItemParams() when getTreeDetailItem != null:
return getTreeDetailItem(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function(@JsonKey(includeToJson: false)  String token, @JsonKey(name: 'id_client')  int idBusunit)?  getHomeData,TResult Function(@JsonKey(includeToJson: false)  String token, @JsonKey(name: 'id_treedetail')  int idTreedetail)?  getTreeDetail,TResult Function(@JsonKey(includeToJson: false)  String token, @JsonKey(name: 'id_treedetail')  int idTreedetail)?  getTreeDetailItem,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetHomeDataParams() when getHomeData != null:
return getHomeData(_that.token,_that.idBusunit);case _GetTreeDetailParams() when getTreeDetail != null:
return getTreeDetail(_that.token,_that.idTreedetail);case _GetTreeDetailItemParams() when getTreeDetailItem != null:
return getTreeDetailItem(_that.token,_that.idTreedetail);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function(@JsonKey(includeToJson: false)  String token, @JsonKey(name: 'id_client')  int idBusunit)  getHomeData,required TResult Function(@JsonKey(includeToJson: false)  String token, @JsonKey(name: 'id_treedetail')  int idTreedetail)  getTreeDetail,required TResult Function(@JsonKey(includeToJson: false)  String token, @JsonKey(name: 'id_treedetail')  int idTreedetail)  getTreeDetailItem,}) {final _that = this;
switch (_that) {
case _GetHomeDataParams():
return getHomeData(_that.token,_that.idBusunit);case _GetTreeDetailParams():
return getTreeDetail(_that.token,_that.idTreedetail);case _GetTreeDetailItemParams():
return getTreeDetailItem(_that.token,_that.idTreedetail);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function(@JsonKey(includeToJson: false)  String token, @JsonKey(name: 'id_client')  int idBusunit)?  getHomeData,TResult? Function(@JsonKey(includeToJson: false)  String token, @JsonKey(name: 'id_treedetail')  int idTreedetail)?  getTreeDetail,TResult? Function(@JsonKey(includeToJson: false)  String token, @JsonKey(name: 'id_treedetail')  int idTreedetail)?  getTreeDetailItem,}) {final _that = this;
switch (_that) {
case _GetHomeDataParams() when getHomeData != null:
return getHomeData(_that.token,_that.idBusunit);case _GetTreeDetailParams() when getTreeDetail != null:
return getTreeDetail(_that.token,_that.idTreedetail);case _GetTreeDetailItemParams() when getTreeDetailItem != null:
return getTreeDetailItem(_that.token,_that.idTreedetail);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetHomeDataParams implements HomeParams {
  const _GetHomeDataParams({@JsonKey(includeToJson: false) required this.token, @JsonKey(name: 'id_client') required this.idBusunit, final  String? $type}): $type = $type ?? 'getHomeData';
  factory _GetHomeDataParams.fromJson(Map<String, dynamic> json) => _$GetHomeDataParamsFromJson(json);

@override@JsonKey(includeToJson: false) final  String token;
@JsonKey(name: 'id_client') final  int idBusunit;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of HomeParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetHomeDataParamsCopyWith<_GetHomeDataParams> get copyWith => __$GetHomeDataParamsCopyWithImpl<_GetHomeDataParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetHomeDataParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetHomeDataParams&&(identical(other.token, token) || other.token == token)&&(identical(other.idBusunit, idBusunit) || other.idBusunit == idBusunit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
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
@JsonKey(includeToJson: false) String token,@JsonKey(name: 'id_client') int idBusunit
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

/// @nodoc
@JsonSerializable()

class _GetTreeDetailParams implements HomeParams {
  const _GetTreeDetailParams({@JsonKey(includeToJson: false) required this.token, @JsonKey(name: 'id_treedetail') required this.idTreedetail, final  String? $type}): $type = $type ?? 'getTreeDetail';
  factory _GetTreeDetailParams.fromJson(Map<String, dynamic> json) => _$GetTreeDetailParamsFromJson(json);

@override@JsonKey(includeToJson: false) final  String token;
@JsonKey(name: 'id_treedetail') final  int idTreedetail;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of HomeParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetTreeDetailParamsCopyWith<_GetTreeDetailParams> get copyWith => __$GetTreeDetailParamsCopyWithImpl<_GetTreeDetailParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetTreeDetailParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetTreeDetailParams&&(identical(other.token, token) || other.token == token)&&(identical(other.idTreedetail, idTreedetail) || other.idTreedetail == idTreedetail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,idTreedetail);

@override
String toString() {
  return 'HomeParams.getTreeDetail(token: $token, idTreedetail: $idTreedetail)';
}


}

/// @nodoc
abstract mixin class _$GetTreeDetailParamsCopyWith<$Res> implements $HomeParamsCopyWith<$Res> {
  factory _$GetTreeDetailParamsCopyWith(_GetTreeDetailParams value, $Res Function(_GetTreeDetailParams) _then) = __$GetTreeDetailParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeToJson: false) String token,@JsonKey(name: 'id_treedetail') int idTreedetail
});




}
/// @nodoc
class __$GetTreeDetailParamsCopyWithImpl<$Res>
    implements _$GetTreeDetailParamsCopyWith<$Res> {
  __$GetTreeDetailParamsCopyWithImpl(this._self, this._then);

  final _GetTreeDetailParams _self;
  final $Res Function(_GetTreeDetailParams) _then;

/// Create a copy of HomeParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? idTreedetail = null,}) {
  return _then(_GetTreeDetailParams(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,idTreedetail: null == idTreedetail ? _self.idTreedetail : idTreedetail // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _GetTreeDetailItemParams implements HomeParams {
  const _GetTreeDetailItemParams({@JsonKey(includeToJson: false) required this.token, @JsonKey(name: 'id_treedetail') required this.idTreedetail, final  String? $type}): $type = $type ?? 'getTreeDetailItem';
  factory _GetTreeDetailItemParams.fromJson(Map<String, dynamic> json) => _$GetTreeDetailItemParamsFromJson(json);

@override@JsonKey(includeToJson: false) final  String token;
@JsonKey(name: 'id_treedetail') final  int idTreedetail;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of HomeParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetTreeDetailItemParamsCopyWith<_GetTreeDetailItemParams> get copyWith => __$GetTreeDetailItemParamsCopyWithImpl<_GetTreeDetailItemParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetTreeDetailItemParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetTreeDetailItemParams&&(identical(other.token, token) || other.token == token)&&(identical(other.idTreedetail, idTreedetail) || other.idTreedetail == idTreedetail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,idTreedetail);

@override
String toString() {
  return 'HomeParams.getTreeDetailItem(token: $token, idTreedetail: $idTreedetail)';
}


}

/// @nodoc
abstract mixin class _$GetTreeDetailItemParamsCopyWith<$Res> implements $HomeParamsCopyWith<$Res> {
  factory _$GetTreeDetailItemParamsCopyWith(_GetTreeDetailItemParams value, $Res Function(_GetTreeDetailItemParams) _then) = __$GetTreeDetailItemParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeToJson: false) String token,@JsonKey(name: 'id_treedetail') int idTreedetail
});




}
/// @nodoc
class __$GetTreeDetailItemParamsCopyWithImpl<$Res>
    implements _$GetTreeDetailItemParamsCopyWith<$Res> {
  __$GetTreeDetailItemParamsCopyWithImpl(this._self, this._then);

  final _GetTreeDetailItemParams _self;
  final $Res Function(_GetTreeDetailItemParams) _then;

/// Create a copy of HomeParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? idTreedetail = null,}) {
  return _then(_GetTreeDetailItemParams(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,idTreedetail: null == idTreedetail ? _self.idTreedetail : idTreedetail // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
