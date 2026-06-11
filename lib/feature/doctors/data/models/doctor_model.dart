import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';

import '../../domain/entities/doctor.dart';
import 'language_known_model.dart';

part 'generated/doctor_model.freezed.dart';
part 'generated/doctor_model.g.dart';

@freezed
sealed class DoctorModel with _$DoctorModel {
  const DoctorModel._();

  const factory DoctorModel({
    @JsonKey(name: 'employee_id', fromJson: stringFromJson)
    required String doctorId,
    @JsonKey(name: 'id_employee', fromJson: intFromJson) required int idDoctor,
    @Default(0) @JsonKey(name: 'id_dept', fromJson: intFromJson) int idDept,
    @JsonKey(name: 'id_busunit', fromJson: intFromJson) required int idBusUnit,
    @JsonKey(name: 'busunit_name', fromJson: stringFromJson)
    required String busUnitName,
    @JsonKey(name: 'employee_name', fromJson: stringFromJson)
    required String doctorName,
    @JsonKey(name: 'dept_name', fromJson: stringFromJson)
    required String departmentName,
    @JsonKey(
      name: 'speciality',
      readValue: _readDoctorSpeciality,
      fromJson: stringFromJson,
    )
    required String doctorSpeciality,
    @JsonKey(fromJson: stringFromJson) required String experience,
    @JsonKey(fromJson: stringFromJson) required String branch,
    @JsonKey(name: 'Language_Known', fromJson: _languagesFromJson)
    required List<LanguageKnownModel> languages,
    @JsonKey(name: 'profileUrl', fromJson: stringFromJson)
    required String doctorImage,
    @JsonKey(name: 'cons_fee', fromJson: doubleFromJson)
    required double consultationFee,
    @JsonKey(name: 'online_cons_fee', fromJson: doubleFromJson)
    required double onlineConsultationFee,
    @JsonKey(name: 'isOnline', fromJson: boolFromJson) required bool isOnline,
    @JsonKey(name: 'employee_bio', fromJson: _nullableStringFromJson)
    String? doctorBio,
  }) = _DoctorModel;

  factory DoctorModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorModelFromJson(json);

  Doctor toEntity() {
    return Doctor(
      doctorId: doctorId,
      idDoctor: idDoctor,
      idDept: idDept,
      idBusUnit: idBusUnit,
      busUnitName: busUnitName,
      doctorName: doctorName,
      departmentName: departmentName,
      doctorSpeciality: doctorSpeciality,
      experience: experience,
      branch: branch,
      knownLanguages: languages.map((e) => e.lng).toList(),
      doctorImage: doctorImage,
      consultationFee: consultationFee,
      onlineConsultationFee: onlineConsultationFee,
      isOnline: isOnline,
      doctorBio: doctorBio,
    );
  }
}

Object? _readDoctorSpeciality(Map json, String key) =>
    json['speciality'] ?? json['dept_name'];

List<LanguageKnownModel> _languagesFromJson(Object? value) {
  if (value is! List) return const [];
  return value
      .whereType<Map<String, dynamic>>()
      .map(LanguageKnownModel.fromJson)
      .toList();
}

String? _nullableStringFromJson(Object? value) => value?.toString();
