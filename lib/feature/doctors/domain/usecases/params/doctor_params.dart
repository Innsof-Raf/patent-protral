import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/doctor_params.freezed.dart';

@freezed
sealed class DoctorParams with _$DoctorParams {
  const factory DoctorParams.getAvailableDoctors({required int specialityId}) =
      GetAvailableDoctorsParams;
}
