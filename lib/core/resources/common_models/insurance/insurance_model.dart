// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/insurance_model.freezed.dart';
part 'generated/insurance_model.g.dart';

@freezed
sealed class InsuranceModel with _$InsuranceModel {
  const factory InsuranceModel({
    @JsonKey(name: 'id_insurance') required int idInsurance,
    @JsonKey(name: 'ins_name') required String insuranceName,
    @JsonKey(name: "Img") @Default(null) String? img,
  }) = _InsuranceModel;

  factory InsuranceModel.fromJson(Map<String, dynamic> json) =>
      _$InsuranceModelFromJson(json);
}
