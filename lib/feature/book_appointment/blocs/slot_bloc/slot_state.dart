part of 'slot_bloc.dart';

@freezed
sealed class SlotState with _$SlotState {
  const factory SlotState({
    required bool isLoading,
    required bool isFetchingSuccses,
    required bool isFetchingError,
    required ErrorModel error,
    required ShiftModel shift,
  }) = _SlotState;

  factory SlotState.initial() => SlotState(
      isLoading: false,
      isFetchingSuccses: false,
      isFetchingError: false,
      shift: const ShiftModel(shift: '', slots: []),
      error: ErrorModel(message: ''));
}
