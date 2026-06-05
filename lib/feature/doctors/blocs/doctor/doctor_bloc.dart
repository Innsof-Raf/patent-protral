import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/doctors/models/doctor_model/doctor_model.dart';
import 'package:patient_portal/resources/error_model.dart';

import '../../service/doctor_services.dart';

part 'doctor_event.dart';
part 'doctor_state.dart';
part 'doctor_bloc.freezed.dart';

class DoctorBloc extends Bloc<DoctorEvent, DoctorState> {
  DoctorBloc() : super(DoctorState.initial()) {
    on<GetAvailableDoctorsByDepartment>((event, emit) async {
      emit(state.copyWith(
          isDoctorsFetching: true,
          isDoctorsFetchingFailed: false,
          isDoctorsFetchingSuccess: false));
      final Either<ErrorModel, List<DoctorModel>> doctorResponseOptions =
          await DoctorServices.getAvailableDoctors(
        event.idspeciality,
      );
      doctorResponseOptions.fold(
          (error) => emit(state.copyWith(
              isDoctorsFetching: false,
              isDoctorsFetchingFailed: true,
              error: error)),
          (doctors) => emit(state.copyWith(
              isDoctorsFetching: false,
              isDoctorsFetchingSuccess: true,
              doctors: doctors)));
    });
  }
}
