import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/lab_params.freezed.dart';
part 'generated/lab_params.g.dart';

@freezed
sealed class LabParams with _$LabParams {
  const factory LabParams.getItems({
    @JsonKey(includeToJson: false) required String token,
  }) = _GetItemsParams;

  const factory LabParams.updateItemInCart({
    @JsonKey(name: 'id_item') required int idItem,
    @JsonKey(name: 'id_user') required int idUser,
    @JsonKey(includeToJson: false) required String token,
  }) = _UpdateItemInCartParams;

  const factory LabParams.getItemDetail({
    @JsonKey(name: 'id_item') required int idItem,
    @JsonKey(includeToJson: false) required String token,
  }) = _GetItemDetailParams;

  const factory LabParams.getPackages({
    @JsonKey(includeToJson: false) required String token,
  }) = _GetPackagesParams;

  factory LabParams.fromJson(Map<String, dynamic> json) =>
      _$LabParamsFromJson(json);
}
