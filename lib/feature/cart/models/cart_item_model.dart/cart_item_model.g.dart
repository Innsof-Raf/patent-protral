// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartItemModel _$$_CartItemModelFromJson(Map<String, dynamic> json) =>
    _$_CartItemModel(
      idItem: json['idItem'] as int,
      itemType: $enumDecode(_$CartItemTypesEnumMap, json['itemType']),
      itemImage: json['itemImage'] as String,
      shortDec: json['shortDec'] as String,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$$_CartItemModelToJson(_$_CartItemModel instance) =>
    <String, dynamic>{
      'idItem': instance.idItem,
      'itemType': _$CartItemTypesEnumMap[instance.itemType]!,
      'itemImage': instance.itemImage,
      'shortDec': instance.shortDec,
      'price': instance.price,
    };

const _$CartItemTypesEnumMap = {
  CartItemTypes.package: 'package',
  CartItemTypes.test: 'test',
};
