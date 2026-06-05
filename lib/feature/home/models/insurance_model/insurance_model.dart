import 'package:freezed_annotation/freezed_annotation.dart';
part 'insurance_model.g.dart';
part 'insurance_model.freezed.dart';

@freezed
class InsuranceModel with _$InsuranceModel {
  const factory InsuranceModel({
    @JsonKey(name: "ID") required int id,
    @Default(null) @JsonKey(name: "Img") String? image,
    @JsonKey(name: "Name") required String insuranceName,
  }) = _InsuranceModel;

  factory InsuranceModel.fromJson(Map<String, dynamic> json) =>
      _$InsuranceModelFromJson(json);
}
