// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PackageEvent {
  String get token => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) getPackages,
    required TResult Function(int idItem, int idUser, String token)
        updatePackageInCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token)? getPackages,
    TResult Function(int idItem, int idUser, String token)? updatePackageInCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? getPackages,
    TResult Function(int idItem, int idUser, String token)? updatePackageInCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPackages value) getPackages,
    required TResult Function(UpdatePackageInCart value) updatePackageInCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetPackages value)? getPackages,
    TResult Function(UpdatePackageInCart value)? updatePackageInCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPackages value)? getPackages,
    TResult Function(UpdatePackageInCart value)? updatePackageInCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PackageEventCopyWith<ItemEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageEventCopyWith<$Res> {
  factory $PackageEventCopyWith(
          ItemEvent value, $Res Function(ItemEvent) then) =
      _$PackageEventCopyWithImpl<$Res>;
  $Res call({String token});
}

/// @nodoc
class _$PackageEventCopyWithImpl<$Res> implements $PackageEventCopyWith<$Res> {
  _$PackageEventCopyWithImpl(this._value, this._then);

  final ItemEvent _value;
  // ignore: unused_field
  final $Res Function(ItemEvent) _then;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$GetPackagesCopyWith<$Res>
    implements $PackageEventCopyWith<$Res> {
  factory _$$GetPackagesCopyWith(
          _$GetPackages value, $Res Function(_$GetPackages) then) =
      __$$GetPackagesCopyWithImpl<$Res>;
  @override
  $Res call({String token});
}

/// @nodoc
class __$$GetPackagesCopyWithImpl<$Res> extends _$PackageEventCopyWithImpl<$Res>
    implements _$$GetPackagesCopyWith<$Res> {
  __$$GetPackagesCopyWithImpl(
      _$GetPackages _value, $Res Function(_$GetPackages) _then)
      : super(_value, (v) => _then(v as _$GetPackages));

  @override
  _$GetPackages get _value => super._value as _$GetPackages;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$GetPackages(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPackages implements GetPackages {
  const _$GetPackages({required this.token});

  @override
  final String token;

  @override
  String toString() {
    return 'PackageEvent.getPackages(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPackages &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$GetPackagesCopyWith<_$GetPackages> get copyWith =>
      __$$GetPackagesCopyWithImpl<_$GetPackages>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) getPackages,
    required TResult Function(int idItem, int idUser, String token)
        updatePackageInCart,
  }) {
    return getPackages(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token)? getPackages,
    TResult Function(int idItem, int idUser, String token)? updatePackageInCart,
  }) {
    return getPackages?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? getPackages,
    TResult Function(int idItem, int idUser, String token)? updatePackageInCart,
    required TResult orElse(),
  }) {
    if (getPackages != null) {
      return getPackages(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPackages value) getPackages,
    required TResult Function(UpdatePackageInCart value) updatePackageInCart,
  }) {
    return getPackages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetPackages value)? getPackages,
    TResult Function(UpdatePackageInCart value)? updatePackageInCart,
  }) {
    return getPackages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPackages value)? getPackages,
    TResult Function(UpdatePackageInCart value)? updatePackageInCart,
    required TResult orElse(),
  }) {
    if (getPackages != null) {
      return getPackages(this);
    }
    return orElse();
  }
}

abstract class GetPackages implements ItemEvent {
  const factory GetPackages({required final String token}) = _$GetPackages;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$GetPackagesCopyWith<_$GetPackages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePackageInCartCopyWith<$Res>
    implements $PackageEventCopyWith<$Res> {
  factory _$$UpdatePackageInCartCopyWith(_$UpdatePackageInCart value,
          $Res Function(_$UpdatePackageInCart) then) =
      __$$UpdatePackageInCartCopyWithImpl<$Res>;
  @override
  $Res call({int idItem, int idUser, String token});
}

/// @nodoc
class __$$UpdatePackageInCartCopyWithImpl<$Res>
    extends _$PackageEventCopyWithImpl<$Res>
    implements _$$UpdatePackageInCartCopyWith<$Res> {
  __$$UpdatePackageInCartCopyWithImpl(
      _$UpdatePackageInCart _value, $Res Function(_$UpdatePackageInCart) _then)
      : super(_value, (v) => _then(v as _$UpdatePackageInCart));

  @override
  _$UpdatePackageInCart get _value => super._value as _$UpdatePackageInCart;

  @override
  $Res call({
    Object? idItem = freezed,
    Object? idUser = freezed,
    Object? token = freezed,
  }) {
    return _then(_$UpdatePackageInCart(
      idItem: idItem == freezed
          ? _value.idItem
          : idItem // ignore: cast_nullable_to_non_nullable
              as int,
      idUser: idUser == freezed
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as int,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdatePackageInCart implements UpdatePackageInCart {
  const _$UpdatePackageInCart(
      {required this.idItem, required this.idUser, required this.token});

  @override
  final int idItem;
  @override
  final int idUser;
  @override
  final String token;

  @override
  String toString() {
    return 'PackageEvent.updatePackageInCart(idItem: $idItem, idUser: $idUser, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePackageInCart &&
            const DeepCollectionEquality().equals(other.idItem, idItem) &&
            const DeepCollectionEquality().equals(other.idUser, idUser) &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idItem),
      const DeepCollectionEquality().hash(idUser),
      const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$UpdatePackageInCartCopyWith<_$UpdatePackageInCart> get copyWith =>
      __$$UpdatePackageInCartCopyWithImpl<_$UpdatePackageInCart>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) getPackages,
    required TResult Function(int idItem, int idUser, String token)
        updatePackageInCart,
  }) {
    return updatePackageInCart(idItem, idUser, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token)? getPackages,
    TResult Function(int idItem, int idUser, String token)? updatePackageInCart,
  }) {
    return updatePackageInCart?.call(idItem, idUser, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? getPackages,
    TResult Function(int idItem, int idUser, String token)? updatePackageInCart,
    required TResult orElse(),
  }) {
    if (updatePackageInCart != null) {
      return updatePackageInCart(idItem, idUser, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPackages value) getPackages,
    required TResult Function(UpdatePackageInCart value) updatePackageInCart,
  }) {
    return updatePackageInCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetPackages value)? getPackages,
    TResult Function(UpdatePackageInCart value)? updatePackageInCart,
  }) {
    return updatePackageInCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPackages value)? getPackages,
    TResult Function(UpdatePackageInCart value)? updatePackageInCart,
    required TResult orElse(),
  }) {
    if (updatePackageInCart != null) {
      return updatePackageInCart(this);
    }
    return orElse();
  }
}

abstract class UpdatePackageInCart implements ItemEvent {
  const factory UpdatePackageInCart(
      {required final int idItem,
      required final int idUser,
      required final String token}) = _$UpdatePackageInCart;

  int get idItem;
  int get idUser;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$UpdatePackageInCartCopyWith<_$UpdatePackageInCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PackageState {
  bool get isPackageFetching => throw _privateConstructorUsedError;
  bool get isPackageFetchingFailed => throw _privateConstructorUsedError;
  bool get isPackageFetchingSuccess => throw _privateConstructorUsedError;
  bool get isCartUpdatingFailed => throw _privateConstructorUsedError;
  bool get isCartUpdatingSucees => throw _privateConstructorUsedError;
  ErrorModel get error => throw _privateConstructorUsedError;
  List<PackageModel> get packages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PackageStateCopyWith<ItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageStateCopyWith<$Res> {
  factory $PackageStateCopyWith(
          ItemState value, $Res Function(ItemState) then) =
      _$PackageStateCopyWithImpl<$Res>;
  $Res call(
      {bool isPackageFetching,
      bool isPackageFetchingFailed,
      bool isPackageFetchingSuccess,
      bool isCartUpdatingFailed,
      bool isCartUpdatingSucees,
      ErrorModel error,
      List<PackageModel> packages});
}

/// @nodoc
class _$PackageStateCopyWithImpl<$Res> implements $PackageStateCopyWith<$Res> {
  _$PackageStateCopyWithImpl(this._value, this._then);

  final ItemState _value;
  // ignore: unused_field
  final $Res Function(ItemState) _then;

  @override
  $Res call({
    Object? isPackageFetching = freezed,
    Object? isPackageFetchingFailed = freezed,
    Object? isPackageFetchingSuccess = freezed,
    Object? isCartUpdatingFailed = freezed,
    Object? isCartUpdatingSucees = freezed,
    Object? error = freezed,
    Object? packages = freezed,
  }) {
    return _then(_value.copyWith(
      isPackageFetching: isPackageFetching == freezed
          ? _value.isPackageFetching
          : isPackageFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      isPackageFetchingFailed: isPackageFetchingFailed == freezed
          ? _value.isPackageFetchingFailed
          : isPackageFetchingFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isPackageFetchingSuccess: isPackageFetchingSuccess == freezed
          ? _value.isPackageFetchingSuccess
          : isPackageFetchingSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isCartUpdatingFailed: isCartUpdatingFailed == freezed
          ? _value.isCartUpdatingFailed
          : isCartUpdatingFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isCartUpdatingSucees: isCartUpdatingSucees == freezed
          ? _value.isCartUpdatingSucees
          : isCartUpdatingSucees // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
      packages: packages == freezed
          ? _value.packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<PackageModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_PackageStateCopyWith<$Res>
    implements $PackageStateCopyWith<$Res> {
  factory _$$_PackageStateCopyWith(
          _$_PackageState value, $Res Function(_$_PackageState) then) =
      __$$_PackageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isPackageFetching,
      bool isPackageFetchingFailed,
      bool isPackageFetchingSuccess,
      bool isCartUpdatingFailed,
      bool isCartUpdatingSucees,
      ErrorModel error,
      List<PackageModel> packages});
}

/// @nodoc
class __$$_PackageStateCopyWithImpl<$Res>
    extends _$PackageStateCopyWithImpl<$Res>
    implements _$$_PackageStateCopyWith<$Res> {
  __$$_PackageStateCopyWithImpl(
      _$_PackageState _value, $Res Function(_$_PackageState) _then)
      : super(_value, (v) => _then(v as _$_PackageState));

  @override
  _$_PackageState get _value => super._value as _$_PackageState;

  @override
  $Res call({
    Object? isPackageFetching = freezed,
    Object? isPackageFetchingFailed = freezed,
    Object? isPackageFetchingSuccess = freezed,
    Object? isCartUpdatingFailed = freezed,
    Object? isCartUpdatingSucees = freezed,
    Object? error = freezed,
    Object? packages = freezed,
  }) {
    return _then(_$_PackageState(
      isPackageFetching: isPackageFetching == freezed
          ? _value.isPackageFetching
          : isPackageFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      isPackageFetchingFailed: isPackageFetchingFailed == freezed
          ? _value.isPackageFetchingFailed
          : isPackageFetchingFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isPackageFetchingSuccess: isPackageFetchingSuccess == freezed
          ? _value.isPackageFetchingSuccess
          : isPackageFetchingSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isCartUpdatingFailed: isCartUpdatingFailed == freezed
          ? _value.isCartUpdatingFailed
          : isCartUpdatingFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isCartUpdatingSucees: isCartUpdatingSucees == freezed
          ? _value.isCartUpdatingSucees
          : isCartUpdatingSucees // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
      packages: packages == freezed
          ? _value._packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<PackageModel>,
    ));
  }
}

/// @nodoc

class _$_PackageState implements _PackageState {
  const _$_PackageState(
      {required this.isPackageFetching,
      required this.isPackageFetchingFailed,
      required this.isPackageFetchingSuccess,
      required this.isCartUpdatingFailed,
      required this.isCartUpdatingSucees,
      required this.error,
      required final List<PackageModel> packages})
      : _packages = packages;

  @override
  final bool isPackageFetching;
  @override
  final bool isPackageFetchingFailed;
  @override
  final bool isPackageFetchingSuccess;
  @override
  final bool isCartUpdatingFailed;
  @override
  final bool isCartUpdatingSucees;
  @override
  final ErrorModel error;
  final List<PackageModel> _packages;
  @override
  List<PackageModel> get packages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_packages);
  }

  @override
  String toString() {
    return 'PackageState(isPackageFetching: $isPackageFetching, isPackageFetchingFailed: $isPackageFetchingFailed, isPackageFetchingSuccess: $isPackageFetchingSuccess, isCartUpdatingFailed: $isCartUpdatingFailed, isCartUpdatingSucees: $isCartUpdatingSucees, error: $error, packages: $packages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PackageState &&
            const DeepCollectionEquality()
                .equals(other.isPackageFetching, isPackageFetching) &&
            const DeepCollectionEquality().equals(
                other.isPackageFetchingFailed, isPackageFetchingFailed) &&
            const DeepCollectionEquality().equals(
                other.isPackageFetchingSuccess, isPackageFetchingSuccess) &&
            const DeepCollectionEquality()
                .equals(other.isCartUpdatingFailed, isCartUpdatingFailed) &&
            const DeepCollectionEquality()
                .equals(other.isCartUpdatingSucees, isCartUpdatingSucees) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other._packages, _packages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isPackageFetching),
      const DeepCollectionEquality().hash(isPackageFetchingFailed),
      const DeepCollectionEquality().hash(isPackageFetchingSuccess),
      const DeepCollectionEquality().hash(isCartUpdatingFailed),
      const DeepCollectionEquality().hash(isCartUpdatingSucees),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(_packages));

  @JsonKey(ignore: true)
  @override
  _$$_PackageStateCopyWith<_$_PackageState> get copyWith =>
      __$$_PackageStateCopyWithImpl<_$_PackageState>(this, _$identity);
}

abstract class _PackageState implements ItemState {
  const factory _PackageState(
      {required final bool isPackageFetching,
      required final bool isPackageFetchingFailed,
      required final bool isPackageFetchingSuccess,
      required final bool isCartUpdatingFailed,
      required final bool isCartUpdatingSucees,
      required final ErrorModel error,
      required final List<PackageModel> packages}) = _$_PackageState;

  @override
  bool get isPackageFetching;
  @override
  bool get isPackageFetchingFailed;
  @override
  bool get isPackageFetchingSuccess;
  @override
  bool get isCartUpdatingFailed;
  @override
  bool get isCartUpdatingSucees;
  @override
  ErrorModel get error;
  @override
  List<PackageModel> get packages;
  @override
  @JsonKey(ignore: true)
  _$$_PackageStateCopyWith<_$_PackageState> get copyWith =>
      throw _privateConstructorUsedError;
}
