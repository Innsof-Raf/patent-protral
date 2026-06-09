import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/lab_params.freezed.dart';

@freezed
sealed class LabParams with _$LabParams {
  const factory LabParams.getItems({required String token}) = _GetItemsParams;

  const factory LabParams.updateItemInCart({
    required int idItem,
    required int idUser,
    required String token,
  }) = _UpdateItemInCartParams;

  const factory LabParams.getItemDetail({
    required int idItem,
    required String token,
  }) = _GetItemDetailParams;

  const factory LabParams.getPackages({required String token}) =
      _GetPackagesParams;
}
