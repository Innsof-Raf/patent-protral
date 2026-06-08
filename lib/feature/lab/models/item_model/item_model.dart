import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_model.freezed.dart';
part 'item_model.g.dart';

@freezed
sealed class ItemModel with _$ItemModel {
  const factory ItemModel({
    @JsonKey(name: 'id_item') required int idItem,
    @JsonKey(name: 'item_name') required String itemNmae,
    @JsonKey(name: 'item_price') required double itemPrice,
    @JsonKey(name: 'item_img') required String itemImg,
    @JsonKey(name: 'item_shortdescr') required String itemShortDesc,
    @JsonKey(name: 'item_Type') required String itemType,
    @JsonKey(name: 'is_cart') required bool isCart,
    @Default(false) isChangingCartStatus,
  }) = _ItemModel;

  factory ItemModel.fromJson(Map<String, dynamic> json) =>
      _$ItemModelFromJson(json);
}
