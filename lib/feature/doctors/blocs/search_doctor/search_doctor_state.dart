part of 'search_doctor_bloc.dart';

@freezed
class SearchDoctorState with _$SearchDoctorState {
  const factory SearchDoctorState({
    required List<DoctorModel> searchResult,
  }) = _SearchDoctorState;
  factory SearchDoctorState.initial() =>
      const SearchDoctorState(searchResult: []);
}
