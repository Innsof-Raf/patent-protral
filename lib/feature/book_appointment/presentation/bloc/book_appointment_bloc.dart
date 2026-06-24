import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/core/resources/common_models/appointment_model.dart/appointment_model.dart';
import 'package:patient_portal/core/resources/error_model.dart';
import 'package:patient_portal/feature/book_appointment/domain/entities/shift.dart';
import 'package:patient_portal/feature/book_appointment/domain/entities/slot.dart';
import 'package:patient_portal/feature/book_appointment/domain/usecases/book_appointment_usecase.dart';
import 'package:patient_portal/feature/book_appointment/domain/usecases/params/book_appointment_params.dart';

part 'book_appointment_event.dart';
part 'book_appointment_state.dart';
part 'generated/book_appointment_bloc.freezed.dart';

class BookAppointmentBloc
    extends Bloc<BookAppointmentEvent, BookAppointmentState> {
  final BookAppointmentUseCase bookAppointmentUseCase;
  final RescheduleAppointmentUseCase rescheduleAppointmentUseCase;
  final GetAvailableSlotsUseCase getAvailableSlotsUseCase;

  BookAppointmentBloc({
    required this.bookAppointmentUseCase,
    required this.rescheduleAppointmentUseCase,
    required this.getAvailableSlotsUseCase,
  }) : super(BookAppointmentState.initial()) {
    on<BookNewAppointment>(_bookNewAppointment);
    on<RescheduleAppointment>(_rescheduleAppointment);
    on<GetAvailableSlots>(_getAvailableSlots);
    on<ChangeBookedSlotState>(_changeBookedSlotState);
    on<ChangeRescheduledSlotState>(_changeRescheduledSlotState);
  }

  Future<void> _bookNewAppointment(
    BookNewAppointment event,
    Emitter<BookAppointmentState> emit,
  ) async {
    emit(
      state.copyWith(
        isAppointmentLoading: true,
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

    _emitAppointmentResult(result, emit);
  }

  Future<void> _rescheduleAppointment(
    RescheduleAppointment event,
    Emitter<BookAppointmentState> emit,
  ) async {
    emit(
      state.copyWith(
        isAppointmentLoading: true,
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

    _emitAppointmentResult(result, emit);
  }

  void _emitAppointmentResult(
    Either<Failure, AppointmentModel> result,
    Emitter<BookAppointmentState> emit,
  ) {
    result.fold(
      (failure) => emit(
        state.copyWith(
          isAppointmentLoading: false,
          isAppointmentSavingFailure: true,
          error: ErrorModel(message: failure.message),
        ),
      ),
      (appointmentDetails) => emit(
        state.copyWith(
          isAppointmentLoading: false,
          isAppointmentSavingSuccses: true,
          appointmentDetails: appointmentDetails,
        ),
      ),
    );
  }

  Future<void> _getAvailableSlots(
    GetAvailableSlots event,
    Emitter<BookAppointmentState> emit,
  ) async {
    emit(
      state.copyWith(
        isSlotLoading: true,
        isFetchingSuccses: false,
        isFetchingError: false,
        isAppointmentSavingFailure: false,
        isAppointmentSavingSuccses: false,
        isAppointmentLoading: false,
        error: ErrorModel(message: ''),
        appointmentDetails: null,
      ),
    );

    final result = await getAvailableSlotsUseCase(
      BookAppointmentParams.getAvailableSlots(
        date: event.date,
        idDoctor: event.idDoctor,
        token: event.token,
      ),
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          isSlotLoading: false,
          isFetchingError: true,
          error: ErrorModel(message: failure.message),
        ),
      ),
      (shift) => emit(
        state.copyWith(
          isSlotLoading: false,
          isFetchingSuccses: true,
          shift: shift,
        ),
      ),
    );
  }

  void _changeBookedSlotState(
    ChangeBookedSlotState event,
    Emitter<BookAppointmentState> emit,
  ) {
    final List<Slot> slots = state.shift.slots;
    emit(
      state.copyWith(
        isAppointmentSavingSuccses: false,
        isAppointmentSavingFailure: false,
        shift: state.shift.copyWith(
          slots: slots.map((slot) {
            if (slot.appdttm == event.slotTime) {
              return slot.copyWith(isBooked: true);
            } else {
              return slot;
            }
          }).toList(),
        ),
      ),
    );
  }

  void _changeRescheduledSlotState(
    ChangeRescheduledSlotState event,
    Emitter<BookAppointmentState> emit,
  ) {
    final List<Slot> slots = state.shift.slots;
    emit(
      state.copyWith(
        isAppointmentSavingSuccses: false,
        isAppointmentSavingFailure: false,
        shift: state.shift.copyWith(
          slots: slots.map((slot) {
            if (slot.appdttm == event.currentSlot) {
              return slot.copyWith(isBooked: true);
            } else if (slot.appdttm == event.oldSlot) {
              return slot.copyWith(isBooked: false);
            } else {
              return slot;
            }
          }).toList(),
        ),
      ),
    );
  }
}
