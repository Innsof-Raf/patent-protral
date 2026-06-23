part of 'member_detail_bloc.dart';

@freezed
sealed class MemberDetailState with _$MemberDetailState {
  const factory MemberDetailState({
    required bool isFetching,
    required bool isFetchingFailed,
    required bool isFetchingSuccess,
    required ErrorModel error,
  }) = _MemberDetailState;

  factory MemberDetailState.initial() => MemberDetailState(
    isFetching: false,
    isFetchingFailed: false,
    isFetchingSuccess: false,
    error: ErrorModel(message: ''),
  );
}
