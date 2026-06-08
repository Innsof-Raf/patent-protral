part of 'appointment_bloc.dart';

@freezed
sealed class AppointmentState with _$AppointmentState {
  const factory AppointmentState({
    required bool isLoading,
    required bool isAppointmentSavingSuccses,
    required bool isAppointmentSavingFailure,
    required ErrorModel error,
    required AppointmentModel? appointmentDetails,
  }) = _AppointmentState;

  factory AppointmentState.initial() => AppointmentState(
    isLoading: false,
    isAppointmentSavingSuccses: false,
    isAppointmentSavingFailure: false,
    appointmentDetails: null,
    error: ErrorModel(message: ''),
  );
}
