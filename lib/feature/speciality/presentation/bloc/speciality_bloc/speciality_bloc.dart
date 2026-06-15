import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/core/resources/error_model.dart';
import 'package:patient_portal/feature/speciality/domain/entities/speciality.dart';
import 'package:patient_portal/feature/speciality/domain/usecases/fetch_specialities_usecase.dart';
import 'package:patient_portal/feature/speciality/domain/usecases/params/speciality_params.dart';
import 'package:patient_portal/feature/speciality/domain/usecases/search_specialities_usecase.dart';

part 'generated/speciality_bloc.freezed.dart';
part 'speciality_event.dart';
part 'speciality_state.dart';

class SpecialityBloc extends Bloc<SpecialityEvent, SpecialityState> {
  final FetchSpecialitiesUseCase fetchSpecialitiesUseCase;
  final SearchSpecialitiesUseCase searchSpecialitiesUseCase;

  SpecialityBloc({
    required this.fetchSpecialitiesUseCase,
    required this.searchSpecialitiesUseCase,
  }) : super(SpecialityState.initial()) {
    on<FetchSpecialities>((event, emit) async {
      emit(
        state.copyWith(
          isFetching: true,
          specialities: [],
          error: ErrorModel(message: ''),
          isFetchingError: false,
          isFetchingSuccess: false,
        ),
      );
      final Either<ErrorModel, List<Speciality>> speclityOptions =
          await fetchSpecialitiesUseCase(event.params);
      speclityOptions.fold(
        (failure) => emit(
          state.copyWith(
            isFetching: false,
            isFetchingError: true,
            error: failure,
          ),
        ),
        (sucsess) => emit(
          state.copyWith(
            isFetching: false,
            isFetchingSuccess: true,
            specialities: sucsess,
          ),
        ),
      );
    });
    on<SearchSpecialities>((event, emit) async {
      final searchResult = await searchSpecialitiesUseCase(event.params);
      emit(state.copyWith(searchResult: searchResult));
    });
  }
}
