import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/doctors/domain/entities/doctor.dart';
import 'package:patient_portal/feature/doctors/domain/usecases/get_available_doctors_usecase.dart';
import 'package:patient_portal/feature/doctors/domain/usecases/params/doctor_params.dart';
import 'package:patient_portal/resources/error_model.dart';

part 'doctor_event.dart';
part 'doctor_state.dart';
part 'generated/doctor_bloc.freezed.dart';

class DoctorBloc extends Bloc<DoctorEvent, DoctorState> {
  final GetAvailableDoctorsUseCase getAvailableDoctorsUseCase;

  DoctorBloc({required this.getAvailableDoctorsUseCase})
    : super(DoctorState.initial()) {
    on<GetAvailableDoctorsByDepartment>((event, emit) async {
      emit(
        state.copyWith(
          isDoctorsFetching: true,
          isDoctorsFetchingFailed: false,
          isDoctorsFetchingSuccess: false,
        ),
      );

      final result = await getAvailableDoctorsUseCase(
        DoctorParams.getAvailableDoctors(specialityId: event.idspeciality),
      );

      result.fold(
        (failure) => emit(
          state.copyWith(
            isDoctorsFetching: false,
            isDoctorsFetchingFailed: true,
            error: ErrorModel(message: failure.message),
          ),
        ),
        (doctors) => emit(
          state.copyWith(
            isDoctorsFetching: false,
            isDoctorsFetchingSuccess: true,
            doctors: doctors,
          ),
        ),
      );
    });
  }
}
