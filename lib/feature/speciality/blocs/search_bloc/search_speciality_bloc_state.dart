part of 'search_speciality_bloc_bloc.dart';

@freezed
sealed class SearchSpecialityBlocState with _$SearchSpecialityBlocState {
  const factory SearchSpecialityBlocState({
    required List<SpecialityModel> searchResult,
  }) = _SearchSpecialityBlocState;

  factory SearchSpecialityBlocState.initial() =>
      const SearchSpecialityBlocState(searchResult: []);
}
