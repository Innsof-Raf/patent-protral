import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/tree_detail_item.freezed.dart';

@freezed
sealed class TreeDetailItem with _$TreeDetailItem {
  const factory TreeDetailItem({
    required int idTreedetail,
    required String treeName,
    required int level,
    required int seqNo,
    required int parent,
    required String treePath,
    required int idItem,
    required String itemId,
    required String itemName,
    required double price,
    required double discount,
    required String offerTag,
  }) = _TreeDetailItem;
}
