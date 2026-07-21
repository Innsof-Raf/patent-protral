import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
import 'package:patient_portal/feature/speciality/domain/entities/speciality.dart';

part 'generated/speciality_model.freezed.dart';
part 'generated/speciality_model.g.dart';

@freezed
sealed class SpecialityModel with _$SpecialityModel {
  const SpecialityModel._();

  const factory SpecialityModel({
    @JsonKey(name: 'id_dept', fromJson: intFromJson) required int idSpeciality,
    @Default('') @JsonKey(name: 'dept_id') String specialityId,
    @JsonKey(name: 'dept_name') required String specialityName,
    @JsonKey(name: 'dept_img') required String? specialityImage,
  }) = _SpecialityModel;

  factory SpecialityModel.fromJson(Map<String, dynamic> json) =>
      _$SpecialityModelFromJson(json);

  Speciality toEntity() => Speciality(
    idSpeciality: idSpeciality,
    specialityId: specialityId,
    specialityName: specialityName,
    specialityImage: specialityImage,
  );
}
