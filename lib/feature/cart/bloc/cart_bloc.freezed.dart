// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCartItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCartItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCartItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCartItems value) getCartItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCartItems value)? getCartItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCartItems value)? getCartItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res> implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  final CartEvent _value;
  // ignore: unused_field
  final $Res Function(CartEvent) _then;
}

/// @nodoc
abstract class _$$GetCartItemsCopyWith<$Res> {
  factory _$$GetCartItemsCopyWith(
          _$GetCartItems value, $Res Function(_$GetCartItems) then) =
      __$$GetCartItemsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCartItemsCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements _$$GetCartItemsCopyWith<$Res> {
  __$$GetCartItemsCopyWithImpl(
      _$GetCartItems _value, $Res Function(_$GetCartItems) _then)
      : super(_value, (v) => _then(v as _$GetCartItems));

  @override
  _$GetCartItems get _value => super._value as _$GetCartItems;
}

/// @nodoc

class _$GetCartItems implements GetCartItems {
  const _$GetCartItems();

  @override
  String toString() {
    return 'CartEvent.getCartItems()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCartItems);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCartItems,
  }) {
    return getCartItems();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCartItems,
  }) {
    return getCartItems?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCartItems,
    required TResult orElse(),
  }) {
    if (getCartItems != null) {
      return getCartItems();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCartItems value) getCartItems,
  }) {
    return getCartItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCartItems value)? getCartItems,
  }) {
    return getCartItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCartItems value)? getCartItems,
    required TResult orElse(),
  }) {
    if (getCartItems != null) {
      return getCartItems(this);
    }
    return orElse();
  }
}

abstract class GetCartItems implements CartEvent {
  const factory GetCartItems() = _$GetCartItems;
}

/// @nodoc
mixin _$CartState {
  List<CartItemModel> get cartItems => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
  $Res call({List<CartItemModel> cartItems});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;
  // ignore: unused_field
  final $Res Function(CartState) _then;

  @override
  $Res call({
    Object? cartItems = freezed,
  }) {
    return _then(_value.copyWith(
      cartItems: cartItems == freezed
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItemModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_CartStateCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$$_CartStateCopyWith(
          _$_CartState value, $Res Function(_$_CartState) then) =
      __$$_CartStateCopyWithImpl<$Res>;
  @override
  $Res call({List<CartItemModel> cartItems});
}

/// @nodoc
class __$$_CartStateCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$$_CartStateCopyWith<$Res> {
  __$$_CartStateCopyWithImpl(
      _$_CartState _value, $Res Function(_$_CartState) _then)
      : super(_value, (v) => _then(v as _$_CartState));

  @override
  _$_CartState get _value => super._value as _$_CartState;

  @override
  $Res call({
    Object? cartItems = freezed,
  }) {
    return _then(_$_CartState(
      cartItems: cartItems == freezed
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItemModel>,
    ));
  }
}

/// @nodoc

class _$_CartState implements _CartState {
  const _$_CartState({required final List<CartItemModel> cartItems})
      : _cartItems = cartItems;

  final List<CartItemModel> _cartItems;
  @override
  List<CartItemModel> get cartItems {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartItems);
  }

  @override
  String toString() {
    return 'CartState(cartItems: $cartItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartState &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cartItems));

  @JsonKey(ignore: true)
  @override
  _$$_CartStateCopyWith<_$_CartState> get copyWith =>
      __$$_CartStateCopyWithImpl<_$_CartState>(this, _$identity);
}

abstract class _CartState implements CartState {
  const factory _CartState({required final List<CartItemModel> cartItems}) =
      _$_CartState;

  @override
  List<CartItemModel> get cartItems;
  @override
  @JsonKey(ignore: true)
  _$$_CartStateCopyWith<_$_CartState> get copyWith =>
      throw _privateConstructorUsedError;
}
