import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../resources/error_model.dart';
import '../../model/speciality_model.dart';
import '../../service/speciality_services.dart';

part 'speciality_event.dart';
part 'speciality_state.dart';
part 'speciality_bloc.freezed.dart';

class SpecialityBloc extends Bloc<SpecialityEvent, SpecialityState> {
  SpecialityBloc() : super(SpecialityState.initial()) {
    on<FetchSpecialities>((event, emit) async {
      emit(state.copyWith(
          isFetching: true,
          specialities: [],
          error: ErrorModel(message: ''),
          isFetchingError: false,
          isFetchingSuccess: false));
      Either<ErrorModel, List<SpecialityModel>> speclityOptions =
          await SpecialityServices.fetchSpecialities(
              token: event.token, idBusUnit: event.idBusUnit);
      speclityOptions.fold(
          (failure) => emit(state.copyWith(
              isFetching: false, isFetchingError: true, error: failure)),
          (sucsess) => emit(state.copyWith(
              isFetching: false,
              isFetchingSuccess: true,
              specialities: sucsess)));
    });
  }
}
