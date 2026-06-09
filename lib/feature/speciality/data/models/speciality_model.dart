// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/speciality_model.freezed.dart';
part 'generated/speciality_model.g.dart';

@freezed
sealed class SpecialityModel with _$SpecialityModel {
  const factory SpecialityModel({
    @JsonKey(name: 'id_dept') required int idSpeciality,
    @JsonKey(name: 'dept_id') required String specialityId,
    @JsonKey(name: 'dept_name') required String specialityName,
    @JsonKey(name: 'dept_img') required String? specialityImage,
  }) = _SpecilityModel;

  factory SpecialityModel.fromJson(Map<String, dynamic> json) =>
      _$SpecialityModelFromJson(json);
}
