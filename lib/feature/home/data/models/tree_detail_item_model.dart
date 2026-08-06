import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
import 'package:patient_portal/feature/home/domain/entities/tree_detail_item.dart';

part 'generated/tree_detail_item_model.freezed.dart';
part 'generated/tree_detail_item_model.g.dart';

@freezed
sealed class TreeDetailItemModel with _$TreeDetailItemModel {
  const TreeDetailItemModel._();

  const factory TreeDetailItemModel({
    @JsonKey(name: 'id_treedetail', fromJson: intFromJson)
    required int idTreedetail,
    @Default('')
    @JsonKey(name: 'tree_name', fromJson: stringFromJson)
    String treeName,
    @Default(0) @JsonKey(name: 'level', fromJson: intFromJson) int level,
    @Default(0) @JsonKey(name: 'seq_no', fromJson: intFromJson) int seqNo,
    @Default(0) @JsonKey(name: 'parent', fromJson: intFromJson) int parent,
    @Default('')
    @JsonKey(name: 'tree_path', fromJson: stringFromJson)
    String treePath,
    @Default(0) @JsonKey(name: 'id_item', fromJson: intFromJson) int idItem,
    @Default('')
    @JsonKey(name: 'item_id', fromJson: stringFromJson)
    String itemId,
    @Default('')
    @JsonKey(name: 'item_name', fromJson: stringFromJson)
    String itemName,
    @Default(0.0)
    @JsonKey(name: 'price', fromJson: doubleFromJson)
    double price,
    @Default(0.0)
    @JsonKey(name: 'discount', fromJson: doubleFromJson)
    double discount,
    @Default('')
    @JsonKey(name: 'offer_tag', fromJson: stringFromJson)
    String offerTag,
  }) = _TreeDetailItemModel;

  factory TreeDetailItemModel.fromJson(Map<String, dynamic> json) =>
      _$TreeDetailItemModelFromJson(json);

  TreeDetailItem toEntity() => TreeDetailItem(
        idTreedetail: idTreedetail,
        treeName: treeName,
        level: level,
        seqNo: seqNo,
        parent: parent,
        treePath: treePath,
        idItem: idItem,
        itemId: itemId,
        itemName: itemName,
        price: price,
        discount: discount,
        offerTag: offerTag,
      );
}
