import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/book_appointment/services/appointment_services.dart';
import 'package:patient_portal/resources/common_models/appointment_model.dart/appointment_model.dart';

import '../../../../resources/error_model.dart';

part 'appointment_event.dart';
part 'appointment_state.dart';
part 'generated/appointment_bloc.freezed.dart';

class AppointmentBloc extends Bloc<AppointmentEvent, AppointmentState> {
  AppointmentBloc() : super(AppointmentState.initial()) {
    on<BookNewAppointment>((event, emit) async {
      emit(state.copyWith(
          isLoading: true,
          isAppointmentSavingFailure: false,
          isAppointmentSavingSuccses: false));
      final Either<ErrorModel, AppointmentModel> newApoointmentOptions =
          await AppointmentServices.bookAppointment(
              idDoctor: event.idDoctor,
              appointmentDateTime: event.appointmentDateTime,
              mobileNo: event.mobileNo,
              idMember: event.idMember,
              token: event.token);
      newApoointmentOptions.fold(
          (error) => emit(state.copyWith(
              isLoading: false,
              isAppointmentSavingFailure: true,
              error: error)),
          (appointmentDetails) => emit(state.copyWith(
              isLoading: false,
              isAppointmentSavingSuccses: true,
              appointmentDetails: appointmentDetails)));
    });
    on<ResheduleAppointment>((event, emit) async {
      emit(state.copyWith(
          isLoading: true,
          isAppointmentSavingFailure: false,
          isAppointmentSavingSuccses: false));
      final Either<ErrorModel, AppointmentModel> resheduleAppointmentOptions =
          await AppointmentServices.resheduleAppointment(
              appointmentDateTime: event.appointmentDateTime,
              idAppointment: event.idAppointment,
              token: event.token);
      resheduleAppointmentOptions.fold(
          (error) => emit(state.copyWith(
              isLoading: false,
              isAppointmentSavingFailure: true,
              error: error)),
          (appointmentDetails) => emit(state.copyWith(
              isLoading: false,
              isAppointmentSavingSuccses: true,
              appointmentDetails: appointmentDetails)));
    });
  }
}
