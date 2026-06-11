part of 'my_appointments_bloc.dart';

@freezed
sealed class MyAppointmentsState with _$MyAppointmentsState {
  const factory MyAppointmentsState({
    required bool isAppointmentsFetching,
    required bool isAppointmentsFetchingFailed,
    required bool isAppointmentsFetchingSuccess,
    required ErrorModel error,
    required List<DateTime> monthTimeLineListOfNotConsulted,
    required List<MyAppointment> myNotConsultedAppointments,
    required List<DateTime> monthTimeLineListOfConsulted,
    required List<MyAppointment> myConsultedAppointments,
    required List<DateTime> monthTimeLineList,
    required bool isAppointmentsCancelationFailed,
    required bool isAppointmentsCancelationSuccess,
    required List<MyAppointment> myAppointments,
  }) = _MyAppointmentState;

  factory MyAppointmentsState.initial() => MyAppointmentsState(
    monthTimeLineListOfConsulted: [],
    monthTimeLineListOfNotConsulted: [],
    myConsultedAppointments: [],
    myNotConsultedAppointments: [],
    error: ErrorModel(message: ''),
    isAppointmentsCancelationFailed: false,
    isAppointmentsCancelationSuccess: false,
    monthTimeLineList: [],
    isAppointmentsFetching: false,
    isAppointmentsFetchingFailed: false,
    isAppointmentsFetchingSuccess: false,
    myAppointments: [],
  );
}
