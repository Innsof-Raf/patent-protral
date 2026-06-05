// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../language_known_model/language_known_model.dart';

part 'doctor_model.g.dart';
part 'doctor_model.freezed.dart';

@freezed
class DoctorModel with _$DoctorModel {
  const factory DoctorModel({
    @JsonKey(name: 'employee_id') required String doctorId,
    @JsonKey(name: 'id_employee') required int idDoctor,
    @JsonKey(name: 'id_busunit') required int idBusUnit,
    @JsonKey(name: 'busunit_name') required String busUnitName,
    @JsonKey(name: 'employee_name') required String doctorName,
    @JsonKey(name: 'dept_name') required String departmentName,
    @JsonKey(name: 'speciality') required String doctorSpecility,
    required String experience,
    required String branch,
    @JsonKey(name: 'Language_Known')
        required List<LanguageKnownModel> knownLanguages,
    @JsonKey(name: 'profileUrl') required String doctorImage,
    @JsonKey(name: 'cons_fee') required double consultationFee,
    @JsonKey(name: 'employee_bio') required String? doctorBio,
  }) = _DoctorModel;

  factory DoctorModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorModelFromJson(json);
}
