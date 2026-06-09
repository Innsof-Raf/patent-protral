import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/book_appointment/data/models/shift_model.dart';
import 'package:patient_portal/feature/book_appointment/data/models/slot_model.dart';
import 'package:patient_portal/feature/book_appointment/domain/usecases/get_available_slots_usecase.dart';
import 'package:patient_portal/feature/book_appointment/domain/usecases/params/book_appointment_params.dart';
import 'package:patient_portal/resources/error_model.dart';

part 'generated/slot_bloc.freezed.dart';
part 'slot_event.dart';
part 'slot_state.dart';

class SlotBloc extends Bloc<SlotEvent, SlotState> {
  final GetAvailableSlotsUseCase getAvailableSlotsUseCase;

  SlotBloc({required this.getAvailableSlotsUseCase})
    : super(SlotState.initial()) {
    on<GetAvailableSlots>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          isFetchingSuccses: false,
          isFetchingError: false,
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
            isLoading: false,
            isFetchingError: true,
            error: ErrorModel(message: failure.message),
          ),
        ),
        (shift) => emit(
          state.copyWith(
            isLoading: false,
            isFetchingSuccses: true,
            shift: shift,
          ),
        ),
      );
    });

    on<ChangeBookedSlotState>((event, emit) {
      List<SlotModel> slots = state.shift.slots;
      emit(
        state.copyWith(
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
    });

    on<ChangeResheduledSlotState>((event, emit) {
      List<SlotModel> slots = state.shift.slots;
      emit(
        state.copyWith(
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
    });
  }
}
