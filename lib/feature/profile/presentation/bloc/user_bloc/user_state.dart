part of 'user_bloc.dart';

@freezed
sealed class UserState with _$UserState {
  const factory UserState({
    required UserModel? user,
    required bool isMemberAdding,
    required bool isMemberAddingFailed,
    required bool isMemberAddingSucess,
    required bool isFetchingMemberDetail,
    required bool isMemberDetailFetchingFailed,
    required bool isMemberDetailFetchingSucess,
    required ErrorModel error,
  }) = _UserState;

  factory UserState.initial() => UserState(
    user: null,
    isMemberAdding: false,
    isMemberAddingFailed: false,
    isMemberAddingSucess: false,
    isFetchingMemberDetail: false,
    isMemberDetailFetchingFailed: false,
    isMemberDetailFetchingSucess: false,
    error: ErrorModel(message: ''),
  );
}
