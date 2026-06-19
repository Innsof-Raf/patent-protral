part of 'my_appointments_bloc.dart';

@freezed
sealed class MyAppointmentsState with _$MyAppointmentsState {
  const factory MyAppointmentsState({
    required bool isAppointmentsFetching,
    required bool isAppointmentsFetchingFailed,
    required bool isAppointmentsFetchingSuccess,
    required ErrorModel error,
    required List<DateTime> monthTimelineListOfNotConsulted,
    required List<MyAppointment> myNotConsultedAppointments,
    required List<DateTime> monthTimelineListOfConsulted,
    required List<MyAppointment> myConsultedAppointments,
    required List<DateTime> monthTimelineList,
    required bool isAppointmentsCancellationFailed,
    required bool isAppointmentsCancellationSuccess,
    required List<MyAppointment> myAppointments,
  }) = _MyAppointmentState;

  factory MyAppointmentsState.initial() => MyAppointmentsState(
    monthTimelineListOfConsulted: [],
    monthTimelineListOfNotConsulted: [],
    myConsultedAppointments: [],
    myNotConsultedAppointments: [],
    error: ErrorModel(message: ''),
    isAppointmentsCancellationFailed: false,
    isAppointmentsCancellationSuccess: false,
    monthTimelineList: [],
    isAppointmentsFetching: false,
    isAppointmentsFetchingFailed: false,
    isAppointmentsFetchingSuccess: false,
    myAppointments: [],
  );
}
