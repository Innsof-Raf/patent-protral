import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/doctor.freezed.dart';

@freezed
sealed class Doctor with _$Doctor {
  const factory Doctor({
    required String doctorId,
    required int idDoctor,
    required int idBusUnit,
    required String busUnitName,
    required String doctorName,
    required String departmentName,
    required String doctorSpecility,
    required String experience,
    required String branch,
    required List<String> knownLanguages,
    required String doctorImage,
    required double consultationFee,
    String? doctorBio,
  }) = _Doctor;
}
