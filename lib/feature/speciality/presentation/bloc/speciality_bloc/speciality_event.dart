part of 'speciality_bloc.dart';

@freezed
sealed class SpecialityEvent with _$SpecialityEvent {
  const factory SpecialityEvent.fetchSpecialities({
    required SpecialityParams params,
  }) = FetchSpecialities;

  const factory SpecialityEvent.searchSpecialities({
    required SpecialityParams params,
  }) = SearchSpecialities;
}
