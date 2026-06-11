import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/lab/domain/entities/item.dart';

part 'generated/item_model.freezed.dart';

@freezed
sealed class ItemModel with _$ItemModel {
  const ItemModel._();

  const factory ItemModel({
    required int idItem,
    required String itemNmae,
    required double itemPrice,
    required String itemImg,
    required String itemShortDesc,
    required String itemType,
    required bool isCart,
    @Default(false) bool isChangingCartStatus,
  }) = _ItemModel;

  factory ItemModel.fromJson(Map<String, dynamic> json) {
    return ItemModel(
      idItem: json['id_item'] as int,
      itemNmae: json['item_name'] as String,
      itemPrice: (json['item_price'] as num).toDouble(),
      itemImg: json['item_img'] as String,
      itemShortDesc: json['item_shortdescr'] as String,
      itemType: json['item_Type'] as String,
      isCart: json['is_cart'] as bool,
    );
  }

  Item toEntity() => Item(
        idItem: idItem,
        itemNmae: itemNmae,
        itemPrice: itemPrice,
        itemImg: itemImg,
        itemShortDesc: itemShortDesc,
        itemType: itemType,
        isCart: isCart,
        isChangingCartStatus: isChangingCartStatus,
      );
}
