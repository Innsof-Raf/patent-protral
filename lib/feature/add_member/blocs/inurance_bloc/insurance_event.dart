part of 'insurance_bloc.dart';

@freezed
sealed class InsuranceEvent with _$InsuranceEvent {
  const factory InsuranceEvent.featchInsurance({
    required String token,
  }) = FeatchInsurance;
}
