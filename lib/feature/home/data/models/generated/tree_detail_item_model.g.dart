// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../tree_detail_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TreeDetailItemModel _$TreeDetailItemModelFromJson(
  Map<String, dynamic> json,
) => _TreeDetailItemModel(
  idTreedetail: intFromJson(json['id_treedetail']),
  treeName: json['tree_name'] == null ? '' : stringFromJson(json['tree_name']),
  level: json['level'] == null ? 0 : intFromJson(json['level']),
  seqNo: json['seq_no'] == null ? 0 : intFromJson(json['seq_no']),
  parent: json['parent'] == null ? 0 : intFromJson(json['parent']),
  treePath: json['tree_path'] == null ? '' : stringFromJson(json['tree_path']),
  idItem: json['id_item'] == null ? 0 : intFromJson(json['id_item']),
  itemId: json['item_id'] == null ? '' : stringFromJson(json['item_id']),
  itemName: json['item_name'] == null ? '' : stringFromJson(json['item_name']),
  price: json['price'] == null ? 0.0 : doubleFromJson(json['price']),
  discount: json['discount'] == null ? 0.0 : doubleFromJson(json['discount']),
  offerTag: json['offer_tag'] == null ? '' : stringFromJson(json['offer_tag']),
);

Map<String, dynamic> _$TreeDetailItemModelToJson(
  _TreeDetailItemModel instance,
) => <String, dynamic>{
  'id_treedetail': instance.idTreedetail,
  'tree_name': instance.treeName,
  'level': instance.level,
  'seq_no': instance.seqNo,
  'parent': instance.parent,
  'tree_path': instance.treePath,
  'id_item': instance.idItem,
  'item_id': instance.itemId,
  'item_name': instance.itemName,
  'price': instance.price,
  'discount': instance.discount,
  'offer_tag': instance.offerTag,
};
