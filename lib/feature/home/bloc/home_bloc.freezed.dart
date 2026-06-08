// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {

 String get token; int get idBusunit;
/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeEventCopyWith<HomeEvent> get copyWith => _$HomeEventCopyWithImpl<HomeEvent>(this as HomeEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent&&(identical(other.token, token) || other.token == token)&&(identical(other.idBusunit, idBusunit) || other.idBusunit == idBusunit));
}


@override
int get hashCode => Object.hash(runtimeType,token,idBusunit);

@override
String toString() {
  return 'HomeEvent(token: $token, idBusunit: $idBusunit)';
}


}

/// @nodoc
abstract mixin class $HomeEventCopyWith<$Res>  {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) _then) = _$HomeEventCopyWithImpl;
@useResult
$Res call({
 String token, int idBusunit
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
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,Object? idBusunit = null,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,idBusunit: null == idBusunit ? _self.idBusunit : idBusunit // ignore: cast_nullable_to_non_nullable
as int,
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetHomeData value)?  getHomeData,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetHomeData() when getHomeData != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetHomeData value)  getHomeData,}){
final _that = this;
switch (_that) {
case GetHomeData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetHomeData value)?  getHomeData,}){
final _that = this;
switch (_that) {
case GetHomeData() when getHomeData != null:
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
case GetHomeData() when getHomeData != null:
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
case GetHomeData():
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
case GetHomeData() when getHomeData != null:
return getHomeData(_that.token,_that.idBusunit);case _:
  return null;

}
}

}

/// @nodoc


class GetHomeData implements HomeEvent {
  const GetHomeData({required this.token, required this.idBusunit});
  

@override final  String token;
@override final  int idBusunit;

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
mixin _$HomeState {

 bool get isDataFetching; bool get isDataFetchingFailed; bool get isDataFetchingsuccess; ErrorModel get error; HomeDataModel get homeData;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.isDataFetching, isDataFetching) || other.isDataFetching == isDataFetching)&&(identical(other.isDataFetchingFailed, isDataFetchingFailed) || other.isDataFetchingFailed == isDataFetchingFailed)&&(identical(other.isDataFetchingsuccess, isDataFetchingsuccess) || other.isDataFetchingsuccess == isDataFetchingsuccess)&&(identical(other.error, error) || other.error == error)&&(identical(other.homeData, homeData) || other.homeData == homeData));
}


@override
int get hashCode => Object.hash(runtimeType,isDataFetching,isDataFetchingFailed,isDataFetchingsuccess,error,homeData);

@override
String toString() {
  return 'HomeState(isDataFetching: $isDataFetching, isDataFetchingFailed: $isDataFetchingFailed, isDataFetchingsuccess: $isDataFetchingsuccess, error: $error, homeData: $homeData)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 bool isDataFetching, bool isDataFetchingFailed, bool isDataFetchingsuccess, ErrorModel error, HomeDataModel homeData
});


$HomeDataModelCopyWith<$Res> get homeData;

}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isDataFetching = null,Object? isDataFetchingFailed = null,Object? isDataFetchingsuccess = null,Object? error = null,Object? homeData = null,}) {
  return _then(_self.copyWith(
isDataFetching: null == isDataFetching ? _self.isDataFetching : isDataFetching // ignore: cast_nullable_to_non_nullable
as bool,isDataFetchingFailed: null == isDataFetchingFailed ? _self.isDataFetchingFailed : isDataFetchingFailed // ignore: cast_nullable_to_non_nullable
as bool,isDataFetchingsuccess: null == isDataFetchingsuccess ? _self.isDataFetchingsuccess : isDataFetchingsuccess // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,homeData: null == homeData ? _self.homeData : homeData // ignore: cast_nullable_to_non_nullable
as HomeDataModel,
  ));
}
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeDataModelCopyWith<$Res> get homeData {
  
  return $HomeDataModelCopyWith<$Res>(_self.homeData, (value) {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isDataFetching,  bool isDataFetchingFailed,  bool isDataFetchingsuccess,  ErrorModel error,  HomeDataModel homeData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.isDataFetching,_that.isDataFetchingFailed,_that.isDataFetchingsuccess,_that.error,_that.homeData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isDataFetching,  bool isDataFetchingFailed,  bool isDataFetchingsuccess,  ErrorModel error,  HomeDataModel homeData)  $default,) {final _that = this;
switch (_that) {
case _HomeState():
return $default(_that.isDataFetching,_that.isDataFetchingFailed,_that.isDataFetchingsuccess,_that.error,_that.homeData);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isDataFetching,  bool isDataFetchingFailed,  bool isDataFetchingsuccess,  ErrorModel error,  HomeDataModel homeData)?  $default,) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.isDataFetching,_that.isDataFetchingFailed,_that.isDataFetchingsuccess,_that.error,_that.homeData);case _:
  return null;

}
}

}

/// @nodoc


class _HomeState implements HomeState {
  const _HomeState({required this.isDataFetching, required this.isDataFetchingFailed, required this.isDataFetchingsuccess, required this.error, required this.homeData});
  

@override final  bool isDataFetching;
@override final  bool isDataFetchingFailed;
@override final  bool isDataFetchingsuccess;
@override final  ErrorModel error;
@override final  HomeDataModel homeData;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&(identical(other.isDataFetching, isDataFetching) || other.isDataFetching == isDataFetching)&&(identical(other.isDataFetchingFailed, isDataFetchingFailed) || other.isDataFetchingFailed == isDataFetchingFailed)&&(identical(other.isDataFetchingsuccess, isDataFetchingsuccess) || other.isDataFetchingsuccess == isDataFetchingsuccess)&&(identical(other.error, error) || other.error == error)&&(identical(other.homeData, homeData) || other.homeData == homeData));
}


@override
int get hashCode => Object.hash(runtimeType,isDataFetching,isDataFetchingFailed,isDataFetchingsuccess,error,homeData);

@override
String toString() {
  return 'HomeState(isDataFetching: $isDataFetching, isDataFetchingFailed: $isDataFetchingFailed, isDataFetchingsuccess: $isDataFetchingsuccess, error: $error, homeData: $homeData)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 bool isDataFetching, bool isDataFetchingFailed, bool isDataFetchingsuccess, ErrorModel error, HomeDataModel homeData
});


@override $HomeDataModelCopyWith<$Res> get homeData;

}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isDataFetching = null,Object? isDataFetchingFailed = null,Object? isDataFetchingsuccess = null,Object? error = null,Object? homeData = null,}) {
  return _then(_HomeState(
isDataFetching: null == isDataFetching ? _self.isDataFetching : isDataFetching // ignore: cast_nullable_to_non_nullable
as bool,isDataFetchingFailed: null == isDataFetchingFailed ? _self.isDataFetchingFailed : isDataFetchingFailed // ignore: cast_nullable_to_non_nullable
as bool,isDataFetchingsuccess: null == isDataFetchingsuccess ? _self.isDataFetchingsuccess : isDataFetchingsuccess // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,homeData: null == homeData ? _self.homeData : homeData // ignore: cast_nullable_to_non_nullable
as HomeDataModel,
  ));
}

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeDataModelCopyWith<$Res> get homeData {
  
  return $HomeDataModelCopyWith<$Res>(_self.homeData, (value) {
    return _then(_self.copyWith(homeData: value));
  });
}
}

// dart format on
