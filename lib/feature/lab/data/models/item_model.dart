import 'package:patient_portal/feature/lab/domain/entities/item.dart';

class ItemModel {
  final int idItem;
  final String itemNmae;
  final double itemPrice;
  final String itemImg;
  final String itemShortDesc;
  final String itemType;
  final bool isCart;
  final bool isChangingCartStatus;

  const ItemModel({
    required this.idItem,
    required this.itemNmae,
    required this.itemPrice,
    required this.itemImg,
    required this.itemShortDesc,
    required this.itemType,
    required this.isCart,
    this.isChangingCartStatus = false,
  });

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

  Item toEntity() {
    return Item(
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
}
