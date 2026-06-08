// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ItemModel _$ItemModelFromJson(Map<String, dynamic> json) => _ItemModel(
  idItem: (json['id_item'] as num).toInt(),
  itemNmae: json['item_name'] as String,
  itemPrice: (json['item_price'] as num).toDouble(),
  itemImg: json['item_img'] as String,
  itemShortDesc: json['item_shortdescr'] as String,
  itemType: json['item_Type'] as String,
  isCart: json['is_cart'] as bool,
  isChangingCartStatus: json['isChangingCartStatus'] ?? false,
);

Map<String, dynamic> _$ItemModelToJson(_ItemModel instance) =>
    <String, dynamic>{
      'id_item': instance.idItem,
      'item_name': instance.itemNmae,
      'item_price': instance.itemPrice,
      'item_img': instance.itemImg,
      'item_shortdescr': instance.itemShortDesc,
      'item_Type': instance.itemType,
      'is_cart': instance.isCart,
      'isChangingCartStatus': instance.isChangingCartStatus,
    };
