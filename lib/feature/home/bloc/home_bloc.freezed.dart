// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  String get token => throw _privateConstructorUsedError;
  int get idBusunit => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, int idBusunit) getHomeData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token, int idBusunit)? getHomeData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, int idBusunit)? getHomeData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHomeData value) getHomeData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetHomeData value)? getHomeData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHomeData value)? getHomeData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeEventCopyWith<HomeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
  $Res call({String token, int idBusunit});
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;

  @override
  $Res call({
    Object? token = freezed,
    Object? idBusunit = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      idBusunit: idBusunit == freezed
          ? _value.idBusunit
          : idBusunit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$GetHomeDataCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory _$$GetHomeDataCopyWith(
          _$GetHomeData value, $Res Function(_$GetHomeData) then) =
      __$$GetHomeDataCopyWithImpl<$Res>;
  @override
  $Res call({String token, int idBusunit});
}

/// @nodoc
class __$$GetHomeDataCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$$GetHomeDataCopyWith<$Res> {
  __$$GetHomeDataCopyWithImpl(
      _$GetHomeData _value, $Res Function(_$GetHomeData) _then)
      : super(_value, (v) => _then(v as _$GetHomeData));

  @override
  _$GetHomeData get _value => super._value as _$GetHomeData;

  @override
  $Res call({
    Object? token = freezed,
    Object? idBusunit = freezed,
  }) {
    return _then(_$GetHomeData(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      idBusunit: idBusunit == freezed
          ? _value.idBusunit
          : idBusunit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetHomeData implements GetHomeData {
  const _$GetHomeData({required this.token, required this.idBusunit});

  @override
  final String token;
  @override
  final int idBusunit;

  @override
  String toString() {
    return 'HomeEvent.getHomeData(token: $token, idBusunit: $idBusunit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetHomeData &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.idBusunit, idBusunit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(idBusunit));

  @JsonKey(ignore: true)
  @override
  _$$GetHomeDataCopyWith<_$GetHomeData> get copyWith =>
      __$$GetHomeDataCopyWithImpl<_$GetHomeData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, int idBusunit) getHomeData,
  }) {
    return getHomeData(token, idBusunit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token, int idBusunit)? getHomeData,
  }) {
    return getHomeData?.call(token, idBusunit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, int idBusunit)? getHomeData,
    required TResult orElse(),
  }) {
    if (getHomeData != null) {
      return getHomeData(token, idBusunit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHomeData value) getHomeData,
  }) {
    return getHomeData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetHomeData value)? getHomeData,
  }) {
    return getHomeData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHomeData value)? getHomeData,
    required TResult orElse(),
  }) {
    if (getHomeData != null) {
      return getHomeData(this);
    }
    return orElse();
  }
}

abstract class GetHomeData implements HomeEvent {
  const factory GetHomeData(
      {required final String token,
      required final int idBusunit}) = _$GetHomeData;

  @override
  String get token;
  @override
  int get idBusunit;
  @override
  @JsonKey(ignore: true)
  _$$GetHomeDataCopyWith<_$GetHomeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  bool get isDataFetching => throw _privateConstructorUsedError;
  bool get isDataFetchingFailed => throw _privateConstructorUsedError;
  bool get isDataFetchingsuccess => throw _privateConstructorUsedError;
  ErrorModel get error => throw _privateConstructorUsedError;
  HomeDataModel get homeData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {bool isDataFetching,
      bool isDataFetchingFailed,
      bool isDataFetchingsuccess,
      ErrorModel error,
      HomeDataModel homeData});

  $HomeDataModelCopyWith<$Res> get homeData;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? isDataFetching = freezed,
    Object? isDataFetchingFailed = freezed,
    Object? isDataFetchingsuccess = freezed,
    Object? error = freezed,
    Object? homeData = freezed,
  }) {
    return _then(_value.copyWith(
      isDataFetching: isDataFetching == freezed
          ? _value.isDataFetching
          : isDataFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      isDataFetchingFailed: isDataFetchingFailed == freezed
          ? _value.isDataFetchingFailed
          : isDataFetchingFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isDataFetchingsuccess: isDataFetchingsuccess == freezed
          ? _value.isDataFetchingsuccess
          : isDataFetchingsuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
      homeData: homeData == freezed
          ? _value.homeData
          : homeData // ignore: cast_nullable_to_non_nullable
              as HomeDataModel,
    ));
  }

  @override
  $HomeDataModelCopyWith<$Res> get homeData {
    return $HomeDataModelCopyWith<$Res>(_value.homeData, (value) {
      return _then(_value.copyWith(homeData: value));
    });
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isDataFetching,
      bool isDataFetchingFailed,
      bool isDataFetchingsuccess,
      ErrorModel error,
      HomeDataModel homeData});

  @override
  $HomeDataModelCopyWith<$Res> get homeData;
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, (v) => _then(v as _$_HomeState));

  @override
  _$_HomeState get _value => super._value as _$_HomeState;

  @override
  $Res call({
    Object? isDataFetching = freezed,
    Object? isDataFetchingFailed = freezed,
    Object? isDataFetchingsuccess = freezed,
    Object? error = freezed,
    Object? homeData = freezed,
  }) {
    return _then(_$_HomeState(
      isDataFetching: isDataFetching == freezed
          ? _value.isDataFetching
          : isDataFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      isDataFetchingFailed: isDataFetchingFailed == freezed
          ? _value.isDataFetchingFailed
          : isDataFetchingFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isDataFetchingsuccess: isDataFetchingsuccess == freezed
          ? _value.isDataFetchingsuccess
          : isDataFetchingsuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
      homeData: homeData == freezed
          ? _value.homeData
          : homeData // ignore: cast_nullable_to_non_nullable
              as HomeDataModel,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {required this.isDataFetching,
      required this.isDataFetchingFailed,
      required this.isDataFetchingsuccess,
      required this.error,
      required this.homeData});

  @override
  final bool isDataFetching;
  @override
  final bool isDataFetchingFailed;
  @override
  final bool isDataFetchingsuccess;
  @override
  final ErrorModel error;
  @override
  final HomeDataModel homeData;

  @override
  String toString() {
    return 'HomeState(isDataFetching: $isDataFetching, isDataFetchingFailed: $isDataFetchingFailed, isDataFetchingsuccess: $isDataFetchingsuccess, error: $error, homeData: $homeData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            const DeepCollectionEquality()
                .equals(other.isDataFetching, isDataFetching) &&
            const DeepCollectionEquality()
                .equals(other.isDataFetchingFailed, isDataFetchingFailed) &&
            const DeepCollectionEquality()
                .equals(other.isDataFetchingsuccess, isDataFetchingsuccess) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.homeData, homeData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isDataFetching),
      const DeepCollectionEquality().hash(isDataFetchingFailed),
      const DeepCollectionEquality().hash(isDataFetchingsuccess),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(homeData));

  @JsonKey(ignore: true)
  @override
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final bool isDataFetching,
      required final bool isDataFetchingFailed,
      required final bool isDataFetchingsuccess,
      required final ErrorModel error,
      required final HomeDataModel homeData}) = _$_HomeState;

  @override
  bool get isDataFetching;
  @override
  bool get isDataFetchingFailed;
  @override
  bool get isDataFetchingsuccess;
  @override
  ErrorModel get error;
  @override
  HomeDataModel get homeData;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
