import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/speciality/domain/entities/speciality.dart';

part 'generated/speciality_model.freezed.dart';

@freezed
sealed class SpecialityModel with _$SpecialityModel {
  const SpecialityModel._();

  const factory SpecialityModel({
    required int idSpeciality,
    required String specialityId,
    required String specialityName,
    required String? specialityImage,
  }) = _SpecialityModel;

  factory SpecialityModel.fromJson(Map<String, dynamic> json) {
    return SpecialityModel(
      idSpeciality: json['id_dept'] as int,
      specialityId: json['dept_id'] as String,
      specialityName: json['dept_name'] as String,
      specialityImage: json['dept_img'] as String?,
    );
  }

  Speciality toEntity() => Speciality(
        idSpeciality: idSpeciality,
        specialityId: specialityId,
        specialityName: specialityName,
        specialityImage: specialityImage,
      );
}
