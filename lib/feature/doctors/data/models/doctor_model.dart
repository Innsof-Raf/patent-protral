import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/doctor.dart';
import 'language_known_model.dart';

part 'generated/doctor_model.freezed.dart';
part 'generated/doctor_model.g.dart';

@freezed
sealed class DoctorModel with _$DoctorModel {
  const DoctorModel._();

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
    required List<LanguageKnownModel> languages,
    @JsonKey(name: 'profileUrl') required String doctorImage,
    @JsonKey(name: 'cons_fee') required double consultationFee,
    @JsonKey(name: 'employee_bio') String? doctorBio,
  }) = _DoctorModel;

  factory DoctorModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorModelFromJson(json);

  Doctor toEntity() {
    return Doctor(
      doctorId: doctorId,
      idDoctor: idDoctor,
      idBusUnit: idBusUnit,
      busUnitName: busUnitName,
      doctorName: doctorName,
      departmentName: departmentName,
      doctorSpecility: doctorSpecility,
      experience: experience,
      branch: branch,
      knownLanguages: languages.map((e) => e.lng).toList(),
      doctorImage: doctorImage,
      consultationFee: consultationFee,
      doctorBio: doctorBio,
    );
  }
}
