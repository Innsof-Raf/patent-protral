import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/speciality.freezed.dart';

@freezed
sealed class Speciality with _$Speciality {
  const factory Speciality({
    required int idSpeciality,
    required String specialityId,
    required String specialityName,
    required String? specialityImage,
  }) = _Speciality;
}
