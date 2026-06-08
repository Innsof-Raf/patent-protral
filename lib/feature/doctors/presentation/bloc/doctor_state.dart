part of 'doctor_bloc.dart';

@freezed
sealed class DoctorState with _$DoctorState {
  const factory DoctorState({
    required bool isDoctorsFetching,
    required bool isDoctorsFetchingFailed,
    required bool isDoctorsFetchingSuccess,
    required ErrorModel error,
    required List<Doctor> doctors,
  }) = _DoctorState;

  factory DoctorState.initial() => DoctorState(
    error: ErrorModel(message: ''),
    isDoctorsFetchingSuccess: false,
    isDoctorsFetchingFailed: false,
    isDoctorsFetching: false,
    doctors: [],
  );
}
