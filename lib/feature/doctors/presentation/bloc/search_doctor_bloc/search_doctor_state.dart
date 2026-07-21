part of 'search_doctor_bloc.dart';

@freezed
sealed class SearchDoctorState with _$SearchDoctorState {
  const factory SearchDoctorState({required List<Doctor> searchResult}) =
      _SearchDoctorState;
  factory SearchDoctorState.initial() =>
      const SearchDoctorState(searchResult: []);
}
