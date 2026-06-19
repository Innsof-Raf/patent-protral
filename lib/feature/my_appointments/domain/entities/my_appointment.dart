import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/my_appointment.freezed.dart';

@freezed
sealed class MyAppointment with _$MyAppointment {
  const factory MyAppointment({
    required int id,
    required int memberId,
    required String memberName,
    required String email,
    required String mobileNumber,
    required String departName,
    required String doctorId,
    required String doctorName,
    required String speciality,
    required String branch,
    required String profileUrl,
    required String busUnitName,
    required DateTime appointmentDateTime,
    required int idDoctor,
    @Default(false) bool isCanceling,
  }) = _MyAppointment;
}
