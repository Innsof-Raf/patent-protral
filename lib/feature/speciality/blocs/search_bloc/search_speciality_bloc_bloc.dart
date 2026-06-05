import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/speciality/model/speciality_model.dart';

part 'search_speciality_bloc_event.dart';
part 'search_speciality_bloc_state.dart';
part 'search_speciality_bloc_bloc.freezed.dart';

class SearchSpecialityBloc
    extends Bloc<SearchSpecialityBlocEvent, SearchSpecialityBlocState> {
  SearchSpecialityBloc() : super(SearchSpecialityBlocState.initial()) {
    on<SearchSpeciality>((event, emit) {
      List<SpecialityModel> searchResult = [];
      for (final speciality in event.specialities) {
        if (speciality.specialityName.toLowerCase().contains(event.searchKey)) {
          searchResult.add(speciality);
        }
      }
      emit(state.copyWith(searchResult: searchResult));
    });
  }
}
