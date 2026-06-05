part of 'insurance_bloc.dart';

@freezed
class InsuranceEvent with _$InsuranceEvent {
  const factory InsuranceEvent.featchInsurance({
    required String token,
  }) = FeatchInsurance;
}
