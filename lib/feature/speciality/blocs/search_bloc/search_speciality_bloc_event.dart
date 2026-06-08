part of 'search_speciality_bloc_bloc.dart';

@freezed
sealed class SearchSpecialityBlocEvent with _$SearchSpecialityBlocEvent {
  const factory SearchSpecialityBlocEvent.searchSpeciality(
      {required String searchKey,
      required List<SpecialityModel> specialities}) = SearchSpeciality;
}
