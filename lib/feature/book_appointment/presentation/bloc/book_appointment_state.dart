part of 'book_appointment_bloc.dart';

@freezed
sealed class BookAppointmentState with _$BookAppointmentState {
  const factory BookAppointmentState({
    required bool isAppointmentLoading,
    required bool isAppointmentSavingSuccses,
    required bool isAppointmentSavingFailure,
    required bool isSlotLoading,
    required bool isFetchingSuccses,
    required bool isFetchingError,
    required ErrorModel error,
    required AppointmentModel? appointmentDetails,
    required ShiftModel shift,
  }) = _BookAppointmentState;

  factory BookAppointmentState.initial() => BookAppointmentState(
    isAppointmentLoading: false,
    isAppointmentSavingSuccses: false,
    isAppointmentSavingFailure: false,
    isSlotLoading: false,
    isFetchingSuccses: false,
    isFetchingError: false,
    appointmentDetails: null,
    shift: const ShiftModel(shift: '', slots: []),
    error: ErrorModel(message: ''),
  );
}
