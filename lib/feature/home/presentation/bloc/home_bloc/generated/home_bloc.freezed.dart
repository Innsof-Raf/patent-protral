// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {

 String get token;
/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeEventCopyWith<HomeEvent> get copyWith => _$HomeEventCopyWithImpl<HomeEvent>(this as HomeEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,token);

@override
String toString() {
  return 'HomeEvent(token: $token)';
}


}

/// @nodoc
abstract mixin class $HomeEventCopyWith<$Res>  {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) _then) = _$HomeEventCopyWithImpl;
@useResult
$Res call({
 String token
});




}
/// @nodoc
class _$HomeEventCopyWithImpl<$Res>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._self, this._then);

  final HomeEvent _self;
  final $Res Function(HomeEvent) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetHomeData value)?  getHomeData,TResult Function( GetTreeDetail value)?  getTreeDetail,TResult Function( GetTreeDetailItem value)?  getTreeDetailItem,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetHomeData() when getHomeData != null:
return getHomeData(_that);case GetTreeDetail() when getTreeDetail != null:
return getTreeDetail(_that);case GetTreeDetailItem() when getTreeDetailItem != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetHomeData value)  getHomeData,required TResult Function( GetTreeDetail value)  getTreeDetail,required TResult Function( GetTreeDetailItem value)  getTreeDetailItem,}){
final _that = this;
switch (_that) {
case GetHomeData():
return getHomeData(_that);case GetTreeDetail():
return getTreeDetail(_that);case GetTreeDetailItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetHomeData value)?  getHomeData,TResult? Function( GetTreeDetail value)?  getTreeDetail,TResult? Function( GetTreeDetailItem value)?  getTreeDetailItem,}){
final _that = this;
switch (_that) {
case GetHomeData() when getHomeData != null:
return getHomeData(_that);case GetTreeDetail() when getTreeDetail != null:
return getTreeDetail(_that);case GetTreeDetailItem() when getTreeDetailItem != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String token,  int idBusunit)?  getHomeData,TResult Function( String token,  int idTreedetail)?  getTreeDetail,TResult Function( String token,  int idTreedetail)?  getTreeDetailItem,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetHomeData() when getHomeData != null:
return getHomeData(_that.token,_that.idBusunit);case GetTreeDetail() when getTreeDetail != null:
return getTreeDetail(_that.token,_that.idTreedetail);case GetTreeDetailItem() when getTreeDetailItem != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String token,  int idBusunit)  getHomeData,required TResult Function( String token,  int idTreedetail)  getTreeDetail,required TResult Function( String token,  int idTreedetail)  getTreeDetailItem,}) {final _that = this;
switch (_that) {
case GetHomeData():
return getHomeData(_that.token,_that.idBusunit);case GetTreeDetail():
return getTreeDetail(_that.token,_that.idTreedetail);case GetTreeDetailItem():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String token,  int idBusunit)?  getHomeData,TResult? Function( String token,  int idTreedetail)?  getTreeDetail,TResult? Function( String token,  int idTreedetail)?  getTreeDetailItem,}) {final _that = this;
switch (_that) {
case GetHomeData() when getHomeData != null:
return getHomeData(_that.token,_that.idBusunit);case GetTreeDetail() when getTreeDetail != null:
return getTreeDetail(_that.token,_that.idTreedetail);case GetTreeDetailItem() when getTreeDetailItem != null:
return getTreeDetailItem(_that.token,_that.idTreedetail);case _:
  return null;

}
}

}

/// @nodoc


class GetHomeData implements HomeEvent {
  const GetHomeData({required this.token, required this.idBusunit});
  

@override final  String token;
 final  int idBusunit;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetHomeDataCopyWith<GetHomeData> get copyWith => _$GetHomeDataCopyWithImpl<GetHomeData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetHomeData&&(identical(other.token, token) || other.token == token)&&(identical(other.idBusunit, idBusunit) || other.idBusunit == idBusunit));
}


@override
int get hashCode => Object.hash(runtimeType,token,idBusunit);

@override
String toString() {
  return 'HomeEvent.getHomeData(token: $token, idBusunit: $idBusunit)';
}


}

/// @nodoc
abstract mixin class $GetHomeDataCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory $GetHomeDataCopyWith(GetHomeData value, $Res Function(GetHomeData) _then) = _$GetHomeDataCopyWithImpl;
@override @useResult
$Res call({
 String token, int idBusunit
});




}
/// @nodoc
class _$GetHomeDataCopyWithImpl<$Res>
    implements $GetHomeDataCopyWith<$Res> {
  _$GetHomeDataCopyWithImpl(this._self, this._then);

  final GetHomeData _self;
  final $Res Function(GetHomeData) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? idBusunit = null,}) {
  return _then(GetHomeData(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,idBusunit: null == idBusunit ? _self.idBusunit : idBusunit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class GetTreeDetail implements HomeEvent {
  const GetTreeDetail({required this.token, this.idTreedetail = 0});
  

@override final  String token;
@JsonKey() final  int idTreedetail;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetTreeDetailCopyWith<GetTreeDetail> get copyWith => _$GetTreeDetailCopyWithImpl<GetTreeDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetTreeDetail&&(identical(other.token, token) || other.token == token)&&(identical(other.idTreedetail, idTreedetail) || other.idTreedetail == idTreedetail));
}


@override
int get hashCode => Object.hash(runtimeType,token,idTreedetail);

@override
String toString() {
  return 'HomeEvent.getTreeDetail(token: $token, idTreedetail: $idTreedetail)';
}


}

/// @nodoc
abstract mixin class $GetTreeDetailCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory $GetTreeDetailCopyWith(GetTreeDetail value, $Res Function(GetTreeDetail) _then) = _$GetTreeDetailCopyWithImpl;
@override @useResult
$Res call({
 String token, int idTreedetail
});




}
/// @nodoc
class _$GetTreeDetailCopyWithImpl<$Res>
    implements $GetTreeDetailCopyWith<$Res> {
  _$GetTreeDetailCopyWithImpl(this._self, this._then);

  final GetTreeDetail _self;
  final $Res Function(GetTreeDetail) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? idTreedetail = null,}) {
  return _then(GetTreeDetail(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,idTreedetail: null == idTreedetail ? _self.idTreedetail : idTreedetail // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class GetTreeDetailItem implements HomeEvent {
  const GetTreeDetailItem({required this.token, this.idTreedetail = 0});
  

@override final  String token;
@JsonKey() final  int idTreedetail;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetTreeDetailItemCopyWith<GetTreeDetailItem> get copyWith => _$GetTreeDetailItemCopyWithImpl<GetTreeDetailItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetTreeDetailItem&&(identical(other.token, token) || other.token == token)&&(identical(other.idTreedetail, idTreedetail) || other.idTreedetail == idTreedetail));
}


@override
int get hashCode => Object.hash(runtimeType,token,idTreedetail);

@override
String toString() {
  return 'HomeEvent.getTreeDetailItem(token: $token, idTreedetail: $idTreedetail)';
}


}

/// @nodoc
abstract mixin class $GetTreeDetailItemCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory $GetTreeDetailItemCopyWith(GetTreeDetailItem value, $Res Function(GetTreeDetailItem) _then) = _$GetTreeDetailItemCopyWithImpl;
@override @useResult
$Res call({
 String token, int idTreedetail
});




}
/// @nodoc
class _$GetTreeDetailItemCopyWithImpl<$Res>
    implements $GetTreeDetailItemCopyWith<$Res> {
  _$GetTreeDetailItemCopyWithImpl(this._self, this._then);

  final GetTreeDetailItem _self;
  final $Res Function(GetTreeDetailItem) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? idTreedetail = null,}) {
  return _then(GetTreeDetailItem(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,idTreedetail: null == idTreedetail ? _self.idTreedetail : idTreedetail // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$HomeState {

 bool get isDataFetching; bool get isDataFetchingFailed; bool get isDataFetchingSuccess; ErrorModel get error; HomeData get homeData; List<TreeDetail> get treeDetails; bool get isTreeDetailFetching; bool get isTreeDetailFetchingFailed; bool get isTreeDetailFetchingSuccess; List<TreeDetailItem> get treeDetailItems; bool get isTreeDetailItemsFetching; bool get isTreeDetailItemsFetchingFailed; bool get isTreeDetailItemsFetchingSuccess;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.isDataFetching, isDataFetching) || other.isDataFetching == isDataFetching)&&(identical(other.isDataFetchingFailed, isDataFetchingFailed) || other.isDataFetchingFailed == isDataFetchingFailed)&&(identical(other.isDataFetchingSuccess, isDataFetchingSuccess) || other.isDataFetchingSuccess == isDataFetchingSuccess)&&(identical(other.error, error) || other.error == error)&&(identical(other.homeData, homeData) || other.homeData == homeData)&&const DeepCollectionEquality().equals(other.treeDetails, treeDetails)&&(identical(other.isTreeDetailFetching, isTreeDetailFetching) || other.isTreeDetailFetching == isTreeDetailFetching)&&(identical(other.isTreeDetailFetchingFailed, isTreeDetailFetchingFailed) || other.isTreeDetailFetchingFailed == isTreeDetailFetchingFailed)&&(identical(other.isTreeDetailFetchingSuccess, isTreeDetailFetchingSuccess) || other.isTreeDetailFetchingSuccess == isTreeDetailFetchingSuccess)&&const DeepCollectionEquality().equals(other.treeDetailItems, treeDetailItems)&&(identical(other.isTreeDetailItemsFetching, isTreeDetailItemsFetching) || other.isTreeDetailItemsFetching == isTreeDetailItemsFetching)&&(identical(other.isTreeDetailItemsFetchingFailed, isTreeDetailItemsFetchingFailed) || other.isTreeDetailItemsFetchingFailed == isTreeDetailItemsFetchingFailed)&&(identical(other.isTreeDetailItemsFetchingSuccess, isTreeDetailItemsFetchingSuccess) || other.isTreeDetailItemsFetchingSuccess == isTreeDetailItemsFetchingSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,isDataFetching,isDataFetchingFailed,isDataFetchingSuccess,error,homeData,const DeepCollectionEquality().hash(treeDetails),isTreeDetailFetching,isTreeDetailFetchingFailed,isTreeDetailFetchingSuccess,const DeepCollectionEquality().hash(treeDetailItems),isTreeDetailItemsFetching,isTreeDetailItemsFetchingFailed,isTreeDetailItemsFetchingSuccess);

@override
String toString() {
  return 'HomeState(isDataFetching: $isDataFetching, isDataFetchingFailed: $isDataFetchingFailed, isDataFetchingSuccess: $isDataFetchingSuccess, error: $error, homeData: $homeData, treeDetails: $treeDetails, isTreeDetailFetching: $isTreeDetailFetching, isTreeDetailFetchingFailed: $isTreeDetailFetchingFailed, isTreeDetailFetchingSuccess: $isTreeDetailFetchingSuccess, treeDetailItems: $treeDetailItems, isTreeDetailItemsFetching: $isTreeDetailItemsFetching, isTreeDetailItemsFetchingFailed: $isTreeDetailItemsFetchingFailed, isTreeDetailItemsFetchingSuccess: $isTreeDetailItemsFetchingSuccess)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 bool isDataFetching, bool isDataFetchingFailed, bool isDataFetchingSuccess, ErrorModel error, HomeData homeData, List<TreeDetail> treeDetails, bool isTreeDetailFetching, bool isTreeDetailFetchingFailed, bool isTreeDetailFetchingSuccess, List<TreeDetailItem> treeDetailItems, bool isTreeDetailItemsFetching, bool isTreeDetailItemsFetchingFailed, bool isTreeDetailItemsFetchingSuccess
});


$ErrorModelCopyWith<$Res> get error;$HomeDataCopyWith<$Res> get homeData;

}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isDataFetching = null,Object? isDataFetchingFailed = null,Object? isDataFetchingSuccess = null,Object? error = null,Object? homeData = null,Object? treeDetails = null,Object? isTreeDetailFetching = null,Object? isTreeDetailFetchingFailed = null,Object? isTreeDetailFetchingSuccess = null,Object? treeDetailItems = null,Object? isTreeDetailItemsFetching = null,Object? isTreeDetailItemsFetchingFailed = null,Object? isTreeDetailItemsFetchingSuccess = null,}) {
  return _then(_self.copyWith(
isDataFetching: null == isDataFetching ? _self.isDataFetching : isDataFetching // ignore: cast_nullable_to_non_nullable
as bool,isDataFetchingFailed: null == isDataFetchingFailed ? _self.isDataFetchingFailed : isDataFetchingFailed // ignore: cast_nullable_to_non_nullable
as bool,isDataFetchingSuccess: null == isDataFetchingSuccess ? _self.isDataFetchingSuccess : isDataFetchingSuccess // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,homeData: null == homeData ? _self.homeData : homeData // ignore: cast_nullable_to_non_nullable
as HomeData,treeDetails: null == treeDetails ? _self.treeDetails : treeDetails // ignore: cast_nullable_to_non_nullable
as List<TreeDetail>,isTreeDetailFetching: null == isTreeDetailFetching ? _self.isTreeDetailFetching : isTreeDetailFetching // ignore: cast_nullable_to_non_nullable
as bool,isTreeDetailFetchingFailed: null == isTreeDetailFetchingFailed ? _self.isTreeDetailFetchingFailed : isTreeDetailFetchingFailed // ignore: cast_nullable_to_non_nullable
as bool,isTreeDetailFetchingSuccess: null == isTreeDetailFetchingSuccess ? _self.isTreeDetailFetchingSuccess : isTreeDetailFetchingSuccess // ignore: cast_nullable_to_non_nullable
as bool,treeDetailItems: null == treeDetailItems ? _self.treeDetailItems : treeDetailItems // ignore: cast_nullable_to_non_nullable
as List<TreeDetailItem>,isTreeDetailItemsFetching: null == isTreeDetailItemsFetching ? _self.isTreeDetailItemsFetching : isTreeDetailItemsFetching // ignore: cast_nullable_to_non_nullable
as bool,isTreeDetailItemsFetchingFailed: null == isTreeDetailItemsFetchingFailed ? _self.isTreeDetailItemsFetchingFailed : isTreeDetailItemsFetchingFailed // ignore: cast_nullable_to_non_nullable
as bool,isTreeDetailItemsFetchingSuccess: null == isTreeDetailItemsFetchingSuccess ? _self.isTreeDetailItemsFetchingSuccess : isTreeDetailItemsFetchingSuccess // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ErrorModelCopyWith<$Res> get error {
  
  return $ErrorModelCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeDataCopyWith<$Res> get homeData {
  
  return $HomeDataCopyWith<$Res>(_self.homeData, (value) {
    return _then(_self.copyWith(homeData: value));
  });
}
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeState value)  $default,){
final _that = this;
switch (_that) {
case _HomeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeState value)?  $default,){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isDataFetching,  bool isDataFetchingFailed,  bool isDataFetchingSuccess,  ErrorModel error,  HomeData homeData,  List<TreeDetail> treeDetails,  bool isTreeDetailFetching,  bool isTreeDetailFetchingFailed,  bool isTreeDetailFetchingSuccess,  List<TreeDetailItem> treeDetailItems,  bool isTreeDetailItemsFetching,  bool isTreeDetailItemsFetchingFailed,  bool isTreeDetailItemsFetchingSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.isDataFetching,_that.isDataFetchingFailed,_that.isDataFetchingSuccess,_that.error,_that.homeData,_that.treeDetails,_that.isTreeDetailFetching,_that.isTreeDetailFetchingFailed,_that.isTreeDetailFetchingSuccess,_that.treeDetailItems,_that.isTreeDetailItemsFetching,_that.isTreeDetailItemsFetchingFailed,_that.isTreeDetailItemsFetchingSuccess);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isDataFetching,  bool isDataFetchingFailed,  bool isDataFetchingSuccess,  ErrorModel error,  HomeData homeData,  List<TreeDetail> treeDetails,  bool isTreeDetailFetching,  bool isTreeDetailFetchingFailed,  bool isTreeDetailFetchingSuccess,  List<TreeDetailItem> treeDetailItems,  bool isTreeDetailItemsFetching,  bool isTreeDetailItemsFetchingFailed,  bool isTreeDetailItemsFetchingSuccess)  $default,) {final _that = this;
switch (_that) {
case _HomeState():
return $default(_that.isDataFetching,_that.isDataFetchingFailed,_that.isDataFetchingSuccess,_that.error,_that.homeData,_that.treeDetails,_that.isTreeDetailFetching,_that.isTreeDetailFetchingFailed,_that.isTreeDetailFetchingSuccess,_that.treeDetailItems,_that.isTreeDetailItemsFetching,_that.isTreeDetailItemsFetchingFailed,_that.isTreeDetailItemsFetchingSuccess);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isDataFetching,  bool isDataFetchingFailed,  bool isDataFetchingSuccess,  ErrorModel error,  HomeData homeData,  List<TreeDetail> treeDetails,  bool isTreeDetailFetching,  bool isTreeDetailFetchingFailed,  bool isTreeDetailFetchingSuccess,  List<TreeDetailItem> treeDetailItems,  bool isTreeDetailItemsFetching,  bool isTreeDetailItemsFetchingFailed,  bool isTreeDetailItemsFetchingSuccess)?  $default,) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.isDataFetching,_that.isDataFetchingFailed,_that.isDataFetchingSuccess,_that.error,_that.homeData,_that.treeDetails,_that.isTreeDetailFetching,_that.isTreeDetailFetchingFailed,_that.isTreeDetailFetchingSuccess,_that.treeDetailItems,_that.isTreeDetailItemsFetching,_that.isTreeDetailItemsFetchingFailed,_that.isTreeDetailItemsFetchingSuccess);case _:
  return null;

}
}

}

/// @nodoc


class _HomeState implements HomeState {
  const _HomeState({required this.isDataFetching, required this.isDataFetchingFailed, required this.isDataFetchingSuccess, required this.error, required this.homeData, final  List<TreeDetail> treeDetails = const [], this.isTreeDetailFetching = false, this.isTreeDetailFetchingFailed = false, this.isTreeDetailFetchingSuccess = false, final  List<TreeDetailItem> treeDetailItems = const [], this.isTreeDetailItemsFetching = false, this.isTreeDetailItemsFetchingFailed = false, this.isTreeDetailItemsFetchingSuccess = false}): _treeDetails = treeDetails,_treeDetailItems = treeDetailItems;
  

@override final  bool isDataFetching;
@override final  bool isDataFetchingFailed;
@override final  bool isDataFetchingSuccess;
@override final  ErrorModel error;
@override final  HomeData homeData;
 final  List<TreeDetail> _treeDetails;
@override@JsonKey() List<TreeDetail> get treeDetails {
  if (_treeDetails is EqualUnmodifiableListView) return _treeDetails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_treeDetails);
}

@override@JsonKey() final  bool isTreeDetailFetching;
@override@JsonKey() final  bool isTreeDetailFetchingFailed;
@override@JsonKey() final  bool isTreeDetailFetchingSuccess;
 final  List<TreeDetailItem> _treeDetailItems;
@override@JsonKey() List<TreeDetailItem> get treeDetailItems {
  if (_treeDetailItems is EqualUnmodifiableListView) return _treeDetailItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_treeDetailItems);
}

@override@JsonKey() final  bool isTreeDetailItemsFetching;
@override@JsonKey() final  bool isTreeDetailItemsFetchingFailed;
@override@JsonKey() final  bool isTreeDetailItemsFetchingSuccess;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&(identical(other.isDataFetching, isDataFetching) || other.isDataFetching == isDataFetching)&&(identical(other.isDataFetchingFailed, isDataFetchingFailed) || other.isDataFetchingFailed == isDataFetchingFailed)&&(identical(other.isDataFetchingSuccess, isDataFetchingSuccess) || other.isDataFetchingSuccess == isDataFetchingSuccess)&&(identical(other.error, error) || other.error == error)&&(identical(other.homeData, homeData) || other.homeData == homeData)&&const DeepCollectionEquality().equals(other._treeDetails, _treeDetails)&&(identical(other.isTreeDetailFetching, isTreeDetailFetching) || other.isTreeDetailFetching == isTreeDetailFetching)&&(identical(other.isTreeDetailFetchingFailed, isTreeDetailFetchingFailed) || other.isTreeDetailFetchingFailed == isTreeDetailFetchingFailed)&&(identical(other.isTreeDetailFetchingSuccess, isTreeDetailFetchingSuccess) || other.isTreeDetailFetchingSuccess == isTreeDetailFetchingSuccess)&&const DeepCollectionEquality().equals(other._treeDetailItems, _treeDetailItems)&&(identical(other.isTreeDetailItemsFetching, isTreeDetailItemsFetching) || other.isTreeDetailItemsFetching == isTreeDetailItemsFetching)&&(identical(other.isTreeDetailItemsFetchingFailed, isTreeDetailItemsFetchingFailed) || other.isTreeDetailItemsFetchingFailed == isTreeDetailItemsFetchingFailed)&&(identical(other.isTreeDetailItemsFetchingSuccess, isTreeDetailItemsFetchingSuccess) || other.isTreeDetailItemsFetchingSuccess == isTreeDetailItemsFetchingSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,isDataFetching,isDataFetchingFailed,isDataFetchingSuccess,error,homeData,const DeepCollectionEquality().hash(_treeDetails),isTreeDetailFetching,isTreeDetailFetchingFailed,isTreeDetailFetchingSuccess,const DeepCollectionEquality().hash(_treeDetailItems),isTreeDetailItemsFetching,isTreeDetailItemsFetchingFailed,isTreeDetailItemsFetchingSuccess);

@override
String toString() {
  return 'HomeState(isDataFetching: $isDataFetching, isDataFetchingFailed: $isDataFetchingFailed, isDataFetchingSuccess: $isDataFetchingSuccess, error: $error, homeData: $homeData, treeDetails: $treeDetails, isTreeDetailFetching: $isTreeDetailFetching, isTreeDetailFetchingFailed: $isTreeDetailFetchingFailed, isTreeDetailFetchingSuccess: $isTreeDetailFetchingSuccess, treeDetailItems: $treeDetailItems, isTreeDetailItemsFetching: $isTreeDetailItemsFetching, isTreeDetailItemsFetchingFailed: $isTreeDetailItemsFetchingFailed, isTreeDetailItemsFetchingSuccess: $isTreeDetailItemsFetchingSuccess)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 bool isDataFetching, bool isDataFetchingFailed, bool isDataFetchingSuccess, ErrorModel error, HomeData homeData, List<TreeDetail> treeDetails, bool isTreeDetailFetching, bool isTreeDetailFetchingFailed, bool isTreeDetailFetchingSuccess, List<TreeDetailItem> treeDetailItems, bool isTreeDetailItemsFetching, bool isTreeDetailItemsFetchingFailed, bool isTreeDetailItemsFetchingSuccess
});


@override $ErrorModelCopyWith<$Res> get error;@override $HomeDataCopyWith<$Res> get homeData;

}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isDataFetching = null,Object? isDataFetchingFailed = null,Object? isDataFetchingSuccess = null,Object? error = null,Object? homeData = null,Object? treeDetails = null,Object? isTreeDetailFetching = null,Object? isTreeDetailFetchingFailed = null,Object? isTreeDetailFetchingSuccess = null,Object? treeDetailItems = null,Object? isTreeDetailItemsFetching = null,Object? isTreeDetailItemsFetchingFailed = null,Object? isTreeDetailItemsFetchingSuccess = null,}) {
  return _then(_HomeState(
isDataFetching: null == isDataFetching ? _self.isDataFetching : isDataFetching // ignore: cast_nullable_to_non_nullable
as bool,isDataFetchingFailed: null == isDataFetchingFailed ? _self.isDataFetchingFailed : isDataFetchingFailed // ignore: cast_nullable_to_non_nullable
as bool,isDataFetchingSuccess: null == isDataFetchingSuccess ? _self.isDataFetchingSuccess : isDataFetchingSuccess // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,homeData: null == homeData ? _self.homeData : homeData // ignore: cast_nullable_to_non_nullable
as HomeData,treeDetails: null == treeDetails ? _self._treeDetails : treeDetails // ignore: cast_nullable_to_non_nullable
as List<TreeDetail>,isTreeDetailFetching: null == isTreeDetailFetching ? _self.isTreeDetailFetching : isTreeDetailFetching // ignore: cast_nullable_to_non_nullable
as bool,isTreeDetailFetchingFailed: null == isTreeDetailFetchingFailed ? _self.isTreeDetailFetchingFailed : isTreeDetailFetchingFailed // ignore: cast_nullable_to_non_nullable
as bool,isTreeDetailFetchingSuccess: null == isTreeDetailFetchingSuccess ? _self.isTreeDetailFetchingSuccess : isTreeDetailFetchingSuccess // ignore: cast_nullable_to_non_nullable
as bool,treeDetailItems: null == treeDetailItems ? _self._treeDetailItems : treeDetailItems // ignore: cast_nullable_to_non_nullable
as List<TreeDetailItem>,isTreeDetailItemsFetching: null == isTreeDetailItemsFetching ? _self.isTreeDetailItemsFetching : isTreeDetailItemsFetching // ignore: cast_nullable_to_non_nullable
as bool,isTreeDetailItemsFetchingFailed: null == isTreeDetailItemsFetchingFailed ? _self.isTreeDetailItemsFetchingFailed : isTreeDetailItemsFetchingFailed // ignore: cast_nullable_to_non_nullable
as bool,isTreeDetailItemsFetchingSuccess: null == isTreeDetailItemsFetchingSuccess ? _self.isTreeDetailItemsFetchingSuccess : isTreeDetailItemsFetchingSuccess // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ErrorModelCopyWith<$Res> get error {
  
  return $ErrorModelCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeDataCopyWith<$Res> get homeData {
  
  return $HomeDataCopyWith<$Res>(_self.homeData, (value) {
    return _then(_self.copyWith(homeData: value));
  });
}
}

// dart format on
