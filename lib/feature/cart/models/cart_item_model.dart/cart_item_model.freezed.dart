// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartItemModel _$CartItemModelFromJson(Map<String, dynamic> json) {
  return _CartItemModel.fromJson(json);
}

/// @nodoc
mixin _$CartItemModel {
  int get idItem => throw _privateConstructorUsedError;
  CartItemTypes get itemType => throw _privateConstructorUsedError;
  String get itemImage => throw _privateConstructorUsedError;
  String get shortDec => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartItemModelCopyWith<CartItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemModelCopyWith<$Res> {
  factory $CartItemModelCopyWith(
          CartItemModel value, $Res Function(CartItemModel) then) =
      _$CartItemModelCopyWithImpl<$Res>;
  $Res call(
      {int idItem,
      CartItemTypes itemType,
      String itemImage,
      String shortDec,
      double price});
}

/// @nodoc
class _$CartItemModelCopyWithImpl<$Res>
    implements $CartItemModelCopyWith<$Res> {
  _$CartItemModelCopyWithImpl(this._value, this._then);

  final CartItemModel _value;
  // ignore: unused_field
  final $Res Function(CartItemModel) _then;

  @override
  $Res call({
    Object? idItem = freezed,
    Object? itemType = freezed,
    Object? itemImage = freezed,
    Object? shortDec = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      idItem: idItem == freezed
          ? _value.idItem
          : idItem // ignore: cast_nullable_to_non_nullable
              as int,
      itemType: itemType == freezed
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as CartItemTypes,
      itemImage: itemImage == freezed
          ? _value.itemImage
          : itemImage // ignore: cast_nullable_to_non_nullable
              as String,
      shortDec: shortDec == freezed
          ? _value.shortDec
          : shortDec // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_CartItemModelCopyWith<$Res>
    implements $CartItemModelCopyWith<$Res> {
  factory _$$_CartItemModelCopyWith(
          _$_CartItemModel value, $Res Function(_$_CartItemModel) then) =
      __$$_CartItemModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int idItem,
      CartItemTypes itemType,
      String itemImage,
      String shortDec,
      double price});
}

/// @nodoc
class __$$_CartItemModelCopyWithImpl<$Res>
    extends _$CartItemModelCopyWithImpl<$Res>
    implements _$$_CartItemModelCopyWith<$Res> {
  __$$_CartItemModelCopyWithImpl(
      _$_CartItemModel _value, $Res Function(_$_CartItemModel) _then)
      : super(_value, (v) => _then(v as _$_CartItemModel));

  @override
  _$_CartItemModel get _value => super._value as _$_CartItemModel;

  @override
  $Res call({
    Object? idItem = freezed,
    Object? itemType = freezed,
    Object? itemImage = freezed,
    Object? shortDec = freezed,
    Object? price = freezed,
  }) {
    return _then(_$_CartItemModel(
      idItem: idItem == freezed
          ? _value.idItem
          : idItem // ignore: cast_nullable_to_non_nullable
              as int,
      itemType: itemType == freezed
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as CartItemTypes,
      itemImage: itemImage == freezed
          ? _value.itemImage
          : itemImage // ignore: cast_nullable_to_non_nullable
              as String,
      shortDec: shortDec == freezed
          ? _value.shortDec
          : shortDec // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartItemModel implements _CartItemModel {
  const _$_CartItemModel(
      {required this.idItem,
      required this.itemType,
      required this.itemImage,
      required this.shortDec,
      required this.price});

  factory _$_CartItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartItemModelFromJson(json);

  @override
  final int idItem;
  @override
  final CartItemTypes itemType;
  @override
  final String itemImage;
  @override
  final String shortDec;
  @override
  final double price;

  @override
  String toString() {
    return 'CartItemModel(idItem: $idItem, itemType: $itemType, itemImage: $itemImage, shortDec: $shortDec, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartItemModel &&
            const DeepCollectionEquality().equals(other.idItem, idItem) &&
            const DeepCollectionEquality().equals(other.itemType, itemType) &&
            const DeepCollectionEquality().equals(other.itemImage, itemImage) &&
            const DeepCollectionEquality().equals(other.shortDec, shortDec) &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idItem),
      const DeepCollectionEquality().hash(itemType),
      const DeepCollectionEquality().hash(itemImage),
      const DeepCollectionEquality().hash(shortDec),
      const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$$_CartItemModelCopyWith<_$_CartItemModel> get copyWith =>
      __$$_CartItemModelCopyWithImpl<_$_CartItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartItemModelToJson(
      this,
    );
  }
}

abstract class _CartItemModel implements CartItemModel {
  const factory _CartItemModel(
      {required final int idItem,
      required final CartItemTypes itemType,
      required final String itemImage,
      required final String shortDec,
      required final double price}) = _$_CartItemModel;

  factory _CartItemModel.fromJson(Map<String, dynamic> json) =
      _$_CartItemModel.fromJson;

  @override
  int get idItem;
  @override
  CartItemTypes get itemType;
  @override
  String get itemImage;
  @override
  String get shortDec;
  @override
  double get price;
  @override
  @JsonKey(ignore: true)
  _$$_CartItemModelCopyWith<_$_CartItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
