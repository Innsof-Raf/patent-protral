class Item {
  final int idItem;
  final String itemNmae;
  final double itemPrice;
  final String itemImg;
  final String itemShortDesc;
  final String itemType;
  final bool isCart;
  final bool isChangingCartStatus;

  const Item({
    required this.idItem,
    required this.itemNmae,
    required this.itemPrice,
    required this.itemImg,
    required this.itemShortDesc,
    required this.itemType,
    required this.isCart,
    this.isChangingCartStatus = false,
  });

  Item copyWith({
    int? idItem,
    String? itemNmae,
    double? itemPrice,
    String? itemImg,
    String? itemShortDesc,
    String? itemType,
    bool? isCart,
    bool? isChangingCartStatus,
  }) {
    return Item(
      idItem: idItem ?? this.idItem,
      itemNmae: itemNmae ?? this.itemNmae,
      itemPrice: itemPrice ?? this.itemPrice,
      itemImg: itemImg ?? this.itemImg,
      itemShortDesc: itemShortDesc ?? this.itemShortDesc,
      itemType: itemType ?? this.itemType,
      isCart: isCart ?? this.isCart,
      isChangingCartStatus:
          isChangingCartStatus ?? this.isChangingCartStatus,
    );
  }
}
