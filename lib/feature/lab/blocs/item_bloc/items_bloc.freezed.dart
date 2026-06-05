// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'items_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ItemsEvent {
  String get token => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) getItems,
    required TResult Function(int idItem, int idUser, String token)
        updateItemCartSatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token)? getItems,
    TResult Function(int idItem, int idUser, String token)? updateItemCartSatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? getItems,
    TResult Function(int idItem, int idUser, String token)? updateItemCartSatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetItems value) getItems,
    required TResult Function(UpdateItemCartSatus value) updateItemCartSatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetItems value)? getItems,
    TResult Function(UpdateItemCartSatus value)? updateItemCartSatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetItems value)? getItems,
    TResult Function(UpdateItemCartSatus value)? updateItemCartSatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemsEventCopyWith<ItemsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsEventCopyWith<$Res> {
  factory $ItemsEventCopyWith(
          ItemsEvent value, $Res Function(ItemsEvent) then) =
      _$ItemsEventCopyWithImpl<$Res>;
  $Res call({String token});
}

/// @nodoc
class _$ItemsEventCopyWithImpl<$Res> implements $ItemsEventCopyWith<$Res> {
  _$ItemsEventCopyWithImpl(this._value, this._then);

  final ItemsEvent _value;
  // ignore: unused_field
  final $Res Function(ItemsEvent) _then;

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
abstract class _$$GetItemsCopyWith<$Res> implements $ItemsEventCopyWith<$Res> {
  factory _$$GetItemsCopyWith(
          _$GetItems value, $Res Function(_$GetItems) then) =
      __$$GetItemsCopyWithImpl<$Res>;
  @override
  $Res call({String token});
}

/// @nodoc
class __$$GetItemsCopyWithImpl<$Res> extends _$ItemsEventCopyWithImpl<$Res>
    implements _$$GetItemsCopyWith<$Res> {
  __$$GetItemsCopyWithImpl(_$GetItems _value, $Res Function(_$GetItems) _then)
      : super(_value, (v) => _then(v as _$GetItems));

  @override
  _$GetItems get _value => super._value as _$GetItems;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$GetItems(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetItems implements GetItems {
  const _$GetItems({required this.token});

  @override
  final String token;

  @override
  String toString() {
    return 'ItemsEvent.getItems(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetItems &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$GetItemsCopyWith<_$GetItems> get copyWith =>
      __$$GetItemsCopyWithImpl<_$GetItems>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) getItems,
    required TResult Function(int idItem, int idUser, String token)
        updateItemCartSatus,
  }) {
    return getItems(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token)? getItems,
    TResult Function(int idItem, int idUser, String token)? updateItemCartSatus,
  }) {
    return getItems?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? getItems,
    TResult Function(int idItem, int idUser, String token)? updateItemCartSatus,
    required TResult orElse(),
  }) {
    if (getItems != null) {
      return getItems(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetItems value) getItems,
    required TResult Function(UpdateItemCartSatus value) updateItemCartSatus,
  }) {
    return getItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetItems value)? getItems,
    TResult Function(UpdateItemCartSatus value)? updateItemCartSatus,
  }) {
    return getItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetItems value)? getItems,
    TResult Function(UpdateItemCartSatus value)? updateItemCartSatus,
    required TResult orElse(),
  }) {
    if (getItems != null) {
      return getItems(this);
    }
    return orElse();
  }
}

abstract class GetItems implements ItemsEvent {
  const factory GetItems({required final String token}) = _$GetItems;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$GetItemsCopyWith<_$GetItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateItemCartSatusCopyWith<$Res>
    implements $ItemsEventCopyWith<$Res> {
  factory _$$UpdateItemCartSatusCopyWith(_$UpdateItemCartSatus value,
          $Res Function(_$UpdateItemCartSatus) then) =
      __$$UpdateItemCartSatusCopyWithImpl<$Res>;
  @override
  $Res call({int idItem, int idUser, String token});
}

/// @nodoc
class __$$UpdateItemCartSatusCopyWithImpl<$Res>
    extends _$ItemsEventCopyWithImpl<$Res>
    implements _$$UpdateItemCartSatusCopyWith<$Res> {
  __$$UpdateItemCartSatusCopyWithImpl(
      _$UpdateItemCartSatus _value, $Res Function(_$UpdateItemCartSatus) _then)
      : super(_value, (v) => _then(v as _$UpdateItemCartSatus));

  @override
  _$UpdateItemCartSatus get _value => super._value as _$UpdateItemCartSatus;

  @override
  $Res call({
    Object? idItem = freezed,
    Object? idUser = freezed,
    Object? token = freezed,
  }) {
    return _then(_$UpdateItemCartSatus(
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

class _$UpdateItemCartSatus implements UpdateItemCartSatus {
  const _$UpdateItemCartSatus(
      {required this.idItem, required this.idUser, required this.token});

  @override
  final int idItem;
  @override
  final int idUser;
  @override
  final String token;

  @override
  String toString() {
    return 'ItemsEvent.updateItemCartSatus(idItem: $idItem, idUser: $idUser, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateItemCartSatus &&
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
  _$$UpdateItemCartSatusCopyWith<_$UpdateItemCartSatus> get copyWith =>
      __$$UpdateItemCartSatusCopyWithImpl<_$UpdateItemCartSatus>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) getItems,
    required TResult Function(int idItem, int idUser, String token)
        updateItemCartSatus,
  }) {
    return updateItemCartSatus(idItem, idUser, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token)? getItems,
    TResult Function(int idItem, int idUser, String token)? updateItemCartSatus,
  }) {
    return updateItemCartSatus?.call(idItem, idUser, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? getItems,
    TResult Function(int idItem, int idUser, String token)? updateItemCartSatus,
    required TResult orElse(),
  }) {
    if (updateItemCartSatus != null) {
      return updateItemCartSatus(idItem, idUser, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetItems value) getItems,
    required TResult Function(UpdateItemCartSatus value) updateItemCartSatus,
  }) {
    return updateItemCartSatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetItems value)? getItems,
    TResult Function(UpdateItemCartSatus value)? updateItemCartSatus,
  }) {
    return updateItemCartSatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetItems value)? getItems,
    TResult Function(UpdateItemCartSatus value)? updateItemCartSatus,
    required TResult orElse(),
  }) {
    if (updateItemCartSatus != null) {
      return updateItemCartSatus(this);
    }
    return orElse();
  }
}

abstract class UpdateItemCartSatus implements ItemsEvent {
  const factory UpdateItemCartSatus(
      {required final int idItem,
      required final int idUser,
      required final String token}) = _$UpdateItemCartSatus;

  int get idItem;
  int get idUser;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$UpdateItemCartSatusCopyWith<_$UpdateItemCartSatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ItemsState {
  bool get isItemsFetching => throw _privateConstructorUsedError;
  bool get isItemsFetchingFailed => throw _privateConstructorUsedError;
  bool get isItemsFetchingSuccess => throw _privateConstructorUsedError;
  bool get isCartUpdatingFailed => throw _privateConstructorUsedError;
  bool get isCartUpdatingSucees => throw _privateConstructorUsedError;
  ErrorModel get error => throw _privateConstructorUsedError;
  List<PackageModel> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemsStateCopyWith<ItemsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsStateCopyWith<$Res> {
  factory $ItemsStateCopyWith(
          ItemsState value, $Res Function(ItemsState) then) =
      _$ItemsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isItemsFetching,
      bool isItemsFetchingFailed,
      bool isItemsFetchingSuccess,
      bool isCartUpdatingFailed,
      bool isCartUpdatingSucees,
      ErrorModel error,
      List<PackageModel> items});
}

/// @nodoc
class _$ItemsStateCopyWithImpl<$Res> implements $ItemsStateCopyWith<$Res> {
  _$ItemsStateCopyWithImpl(this._value, this._then);

  final ItemsState _value;
  // ignore: unused_field
  final $Res Function(ItemsState) _then;

  @override
  $Res call({
    Object? isItemsFetching = freezed,
    Object? isItemsFetchingFailed = freezed,
    Object? isItemsFetchingSuccess = freezed,
    Object? isCartUpdatingFailed = freezed,
    Object? isCartUpdatingSucees = freezed,
    Object? error = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      isItemsFetching: isItemsFetching == freezed
          ? _value.isItemsFetching
          : isItemsFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      isItemsFetchingFailed: isItemsFetchingFailed == freezed
          ? _value.isItemsFetchingFailed
          : isItemsFetchingFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isItemsFetchingSuccess: isItemsFetchingSuccess == freezed
          ? _value.isItemsFetchingSuccess
          : isItemsFetchingSuccess // ignore: cast_nullable_to_non_nullable
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
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<PackageModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_ItemStateCopyWith<$Res>
    implements $ItemsStateCopyWith<$Res> {
  factory _$$_ItemStateCopyWith(
          _$_ItemState value, $Res Function(_$_ItemState) then) =
      __$$_ItemStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isItemsFetching,
      bool isItemsFetchingFailed,
      bool isItemsFetchingSuccess,
      bool isCartUpdatingFailed,
      bool isCartUpdatingSucees,
      ErrorModel error,
      List<PackageModel> items});
}

/// @nodoc
class __$$_ItemStateCopyWithImpl<$Res> extends _$ItemsStateCopyWithImpl<$Res>
    implements _$$_ItemStateCopyWith<$Res> {
  __$$_ItemStateCopyWithImpl(
      _$_ItemState _value, $Res Function(_$_ItemState) _then)
      : super(_value, (v) => _then(v as _$_ItemState));

  @override
  _$_ItemState get _value => super._value as _$_ItemState;

  @override
  $Res call({
    Object? isItemsFetching = freezed,
    Object? isItemsFetchingFailed = freezed,
    Object? isItemsFetchingSuccess = freezed,
    Object? isCartUpdatingFailed = freezed,
    Object? isCartUpdatingSucees = freezed,
    Object? error = freezed,
    Object? items = freezed,
  }) {
    return _then(_$_ItemState(
      isItemsFetching: isItemsFetching == freezed
          ? _value.isItemsFetching
          : isItemsFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      isItemsFetchingFailed: isItemsFetchingFailed == freezed
          ? _value.isItemsFetchingFailed
          : isItemsFetchingFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isItemsFetchingSuccess: isItemsFetchingSuccess == freezed
          ? _value.isItemsFetchingSuccess
          : isItemsFetchingSuccess // ignore: cast_nullable_to_non_nullable
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
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<PackageModel>,
    ));
  }
}

/// @nodoc

class _$_ItemState implements _ItemState {
  const _$_ItemState(
      {required this.isItemsFetching,
      required this.isItemsFetchingFailed,
      required this.isItemsFetchingSuccess,
      required this.isCartUpdatingFailed,
      required this.isCartUpdatingSucees,
      required this.error,
      required final List<PackageModel> items})
      : _items = items;

  @override
  final bool isItemsFetching;
  @override
  final bool isItemsFetchingFailed;
  @override
  final bool isItemsFetchingSuccess;
  @override
  final bool isCartUpdatingFailed;
  @override
  final bool isCartUpdatingSucees;
  @override
  final ErrorModel error;
  final List<PackageModel> _items;
  @override
  List<PackageModel> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'ItemsState(isItemsFetching: $isItemsFetching, isItemsFetchingFailed: $isItemsFetchingFailed, isItemsFetchingSuccess: $isItemsFetchingSuccess, isCartUpdatingFailed: $isCartUpdatingFailed, isCartUpdatingSucees: $isCartUpdatingSucees, error: $error, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemState &&
            const DeepCollectionEquality()
                .equals(other.isItemsFetching, isItemsFetching) &&
            const DeepCollectionEquality()
                .equals(other.isItemsFetchingFailed, isItemsFetchingFailed) &&
            const DeepCollectionEquality()
                .equals(other.isItemsFetchingSuccess, isItemsFetchingSuccess) &&
            const DeepCollectionEquality()
                .equals(other.isCartUpdatingFailed, isCartUpdatingFailed) &&
            const DeepCollectionEquality()
                .equals(other.isCartUpdatingSucees, isCartUpdatingSucees) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isItemsFetching),
      const DeepCollectionEquality().hash(isItemsFetchingFailed),
      const DeepCollectionEquality().hash(isItemsFetchingSuccess),
      const DeepCollectionEquality().hash(isCartUpdatingFailed),
      const DeepCollectionEquality().hash(isCartUpdatingSucees),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  _$$_ItemStateCopyWith<_$_ItemState> get copyWith =>
      __$$_ItemStateCopyWithImpl<_$_ItemState>(this, _$identity);
}

abstract class _ItemState implements ItemsState {
  const factory _ItemState(
      {required final bool isItemsFetching,
      required final bool isItemsFetchingFailed,
      required final bool isItemsFetchingSuccess,
      required final bool isCartUpdatingFailed,
      required final bool isCartUpdatingSucees,
      required final ErrorModel error,
      required final List<PackageModel> items}) = _$_ItemState;

  @override
  bool get isItemsFetching;
  @override
  bool get isItemsFetchingFailed;
  @override
  bool get isItemsFetchingSuccess;
  @override
  bool get isCartUpdatingFailed;
  @override
  bool get isCartUpdatingSucees;
  @override
  ErrorModel get error;
  @override
  List<PackageModel> get items;
  @override
  @JsonKey(ignore: true)
  _$$_ItemStateCopyWith<_$_ItemState> get copyWith =>
      throw _privateConstructorUsedError;
}
