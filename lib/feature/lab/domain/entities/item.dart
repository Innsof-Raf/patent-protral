import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/item.freezed.dart';

@freezed
sealed class Item with _$Item {
  const factory Item({
    required int idItem,
    required String itemNmae,
    required double itemPrice,
    required String itemImg,
    required String itemShortDesc,
    required String itemType,
    required bool isCart,
    @Default(false) bool isChangingCartStatus,
  }) = _Item;
}
