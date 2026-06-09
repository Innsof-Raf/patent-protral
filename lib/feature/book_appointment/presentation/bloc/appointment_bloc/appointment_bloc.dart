import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/book_appointment/domain/usecases/book_appointment_usecase.dart';
import 'package:patient_portal/feature/book_appointment/domain/usecases/params/book_appointment_params.dart';
import 'package:patient_portal/feature/book_appointment/domain/usecases/reschedule_appointment_usecase.dart';
import 'package:patient_portal/resources/common_models/appointment_model.dart/appointment_model.dart';
import 'package:patient_portal/resources/error_model.dart';

part 'appointment_event.dart';
part 'appointment_state.dart';
part 'generated/appointment_bloc.freezed.dart';

class AppointmentBloc extends Bloc<AppointmentEvent, AppointmentState> {
  final BookAppointmentUseCase bookAppointmentUseCase;
  final RescheduleAppointmentUseCase rescheduleAppointmentUseCase;

  AppointmentBloc({
    required this.bookAppointmentUseCase,
    required this.rescheduleAppointmentUseCase,
  }) : super(AppointmentState.initial()) {
    on<BookNewAppointment>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          isAppointmentSavingFailure: false,
          isAppointmentSavingSuccses: false,
        ),
      );

      final result = await bookAppointmentUseCase(
        BookAppointmentParams.bookAppointment(
          idDoctor: event.idDoctor,
          appointmentDateTime: event.appointmentDateTime,
          mobileNo: event.mobileNo,
          idMember: event.idMember,
          token: event.token,
        ),
      );

      result.fold(
        (failure) => emit(
          state.copyWith(
            isLoading: false,
            isAppointmentSavingFailure: true,
            error: ErrorModel(message: failure.message),
          ),
        ),
        (appointmentDetails) => emit(
          state.copyWith(
            isLoading: false,
            isAppointmentSavingSuccses: true,
            appointmentDetails: appointmentDetails,
          ),
        ),
      );
    });

    on<ResheduleAppointment>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          isAppointmentSavingFailure: false,
          isAppointmentSavingSuccses: false,
        ),
      );

      final result = await rescheduleAppointmentUseCase(
        BookAppointmentParams.rescheduleAppointment(
          appointmentDateTime: event.appointmentDateTime,
          idAppointment: event.idAppointment,
          token: event.token,
        ),
      );

      result.fold(
        (failure) => emit(
          state.copyWith(
            isLoading: false,
            isAppointmentSavingFailure: true,
            error: ErrorModel(message: failure.message),
          ),
        ),
        (appointmentDetails) => emit(
          state.copyWith(
            isLoading: false,
            isAppointmentSavingSuccses: true,
            appointmentDetails: appointmentDetails,
          ),
        ),
      );
    });
  }
}
