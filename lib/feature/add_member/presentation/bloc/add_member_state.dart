part of 'add_member_bloc.dart';

@freezed
sealed class AddMemberState with _$AddMemberState {
  const factory AddMemberState({
    required bool isFetchingInsurances,
    required bool isInsuranceFetchingFailed,
    required bool isInsuranceFetchingSuccess,
    required List<InsuranceModel> insurances,
    required bool isMemberAdding,
    required bool isMemberAddingFailed,
    required bool isMemberAddingSuccess,
    MemberModel? newMember,
    required ErrorModel error,
  }) = _AddMemberState;

  factory AddMemberState.initial() => AddMemberState(
    isFetchingInsurances: false,
    isInsuranceFetchingFailed: false,
    isInsuranceFetchingSuccess: false,
    insurances: [],
    isMemberAdding: false,
    isMemberAddingFailed: false,
    isMemberAddingSuccess: false,
    error: ErrorModel(message: ''),
  );
}
