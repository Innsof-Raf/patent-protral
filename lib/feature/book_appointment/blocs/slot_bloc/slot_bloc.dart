import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/book_appointment/models/slot_model/slot_model.dart';

import '../../../../resources/error_model.dart';
import '../../models/shift_model/shift_model.dart';
import '../../services/slot_services.dart';

part 'slot_event.dart';
part 'slot_state.dart';
part 'generated/slot_bloc.freezed.dart';

class SlotBloc extends Bloc<SlotEvent, SlotState> {
  SlotBloc() : super(SlotState.initial()) {
    on<GetAvailableSlots>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        isFetchingSuccses: false,
        isFetchingError: false,
      ));
      final Either<ErrorModel, ShiftModel> slotResponseOptions =
          await SlotServices.getAvailableSlots(
              date: event.date, idDoctor: event.idDoctor, token: event.token);
      slotResponseOptions.fold(
          (failure) => emit(state.copyWith(
              isLoading: false, isFetchingError: true, error: failure)),
          (shift) => emit(state.copyWith(
              isLoading: false, isFetchingSuccses: true, shift: shift)));
    });
    on<ChangeBookedSlotState>((event, emit) {
      List<SlotModel> slots = state.shift.slots;
      emit(state.copyWith(
          shift: state.shift.copyWith(
              slots: slots.map((slot) {
        if (slot.appdttm == event.slotTime) {
          return slot.copyWith(
            isBooked: true,
          );
        } else {
          return slot;
        }
      }).toList())));
    });
    on<ChangeResheduledSlotState>((event, emit) {
      List<SlotModel> slots = state.shift.slots;
      emit(state.copyWith(
          shift: state.shift.copyWith(
              slots: slots.map((slot) {
        if (slot.appdttm == event.currentSlot) {
          return slot.copyWith(
            isBooked: true,
          );
        } else if (slot.appdttm == event.oldSlot) {
          return slot.copyWith(isBooked: false);
        } else {
          return slot;
        }
      }).toList())));
    });
  }
}
