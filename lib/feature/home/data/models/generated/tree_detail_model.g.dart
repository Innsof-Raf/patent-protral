// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../tree_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TreeDetailModel _$TreeDetailModelFromJson(
  Map<String, dynamic> json,
) => _TreeDetailModel(
  idTreedetail: intFromJson(json['id_treedetail']),
  treeName: json['tree_name'] == null ? '' : stringFromJson(json['tree_name']),
  level: json['level'] == null ? 0 : intFromJson(json['level']),
  seqNo: json['seq_no'] == null ? 0 : intFromJson(json['seq_no']),
  parent: json['parent'] == null ? 0 : intFromJson(json['parent']),
  treePath: json['tree_path'] == null ? '' : stringFromJson(json['tree_path']),
);

Map<String, dynamic> _$TreeDetailModelToJson(_TreeDetailModel instance) =>
    <String, dynamic>{
      'id_treedetail': instance.idTreedetail,
      'tree_name': instance.treeName,
      'level': instance.level,
      'seq_no': instance.seqNo,
      'parent': instance.parent,
      'tree_path': instance.treePath,
    };
