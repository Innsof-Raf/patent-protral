import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/resources/enums.dart';
part 'cart_item_model.g.dart';
part 'cart_item_model.freezed.dart';

@freezed
class CartItemModel with _$CartItemModel {
  const factory CartItemModel({
    required int idItem,
    required CartItemTypes itemType,
    required String itemImage,
    required String shortDec,
    required double price,
  }) = _CartItemModel;

  factory CartItemModel.fromJson(Map<String, dynamic> json) =>
      _$CartItemModelFromJson(json);
}
