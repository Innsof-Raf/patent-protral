part of 'speciality_bloc.dart';

@freezed
sealed class SpecialityState with _$SpecialityState {
  const factory SpecialityState({
    required bool isFetching,
    required bool isFetchingSuccess,
    required bool isFetchingError,
    required ErrorModel error,
    required List<SpecialityModel> specialities,
  }) = _SpecialityState;

  factory SpecialityState.initial() => SpecialityState(
    isFetching: false,
    specialities: [],
    error: ErrorModel(message: ''),
    isFetchingError: false,
    isFetchingSuccess: false,
  );
}
