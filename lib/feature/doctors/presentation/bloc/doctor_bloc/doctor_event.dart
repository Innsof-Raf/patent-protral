part of 'doctor_bloc.dart';

@freezed
sealed class DoctorEvent with _$DoctorEvent {
  const factory DoctorEvent.getAvailableDoctorsByDepartment({
    required int idspeciality,
    required String token,
  }) = GetAvailableDoctorsByDepartment;
}
