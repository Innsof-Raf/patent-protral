part of 'user_bloc.dart';

@freezed
sealed class UserState with _$UserState {
  const factory UserState({
    required User? user,
    required bool isLoading,
    required bool isMemberAdding,
    required bool isMemberAddingFailed,
    required bool isMemberAddingSucess,
    required bool isFetchingMemberDetail,
    required bool isMemberDetailFetchingFailed,
    required bool isMemberDetailFetchingSucess,
    required Member? selectedMember,
    required ErrorModel error,
  }) = _UserState;

  factory UserState.initial() => UserState(
    user: null,
    isLoading: false,
    isMemberAdding: false,
    isMemberAddingFailed: false,
    isMemberAddingSucess: false,
    isFetchingMemberDetail: false,
    isMemberDetailFetchingFailed: false,
    isMemberDetailFetchingSucess: false,
    selectedMember: null,
    error: ErrorModel(message: ''),
  );
}
