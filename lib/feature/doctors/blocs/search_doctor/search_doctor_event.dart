part of 'search_doctor_bloc.dart';

@freezed
class SearchDoctorEvent with _$SearchDoctorEvent {
  const factory SearchDoctorEvent.searchDoctor(
      {required String searchKey,
      required List<DoctorModel> doctors}) = SearchDoctor;
}
