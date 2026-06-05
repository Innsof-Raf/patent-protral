part of 'insurance_bloc.dart';

@freezed
class InsuranceState with _$InsuranceState {
  const factory InsuranceState({
    required bool isFetchingInsurances,
    required bool isInsuranceFecthingFailed,
    required bool isInsuranceFechingSuccess,
    required List<InsuranceModel> insurances,
    required ErrorModel error,
  }) = _InsuranceState;
  factory InsuranceState.initial() => InsuranceState(
      isFetchingInsurances: false,
      isInsuranceFecthingFailed: false,
      isInsuranceFechingSuccess: false,
      insurances: [],
      error: ErrorModel(message: ''));
}
