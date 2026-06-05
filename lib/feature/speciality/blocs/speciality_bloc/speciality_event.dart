part of 'speciality_bloc.dart';

@freezed
class SpecialityEvent with _$SpecialityEvent {
  const factory SpecialityEvent.fetchSpecialities(
      {required String token, required int idBusUnit}) = FetchSpecialities;
}
