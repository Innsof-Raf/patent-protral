part of 'member_detail_bloc.dart';

@freezed
class MemberDetailState with _$MemberDetailState {
  const factory MemberDetailState({
    required bool isFetching,
    required bool isFetchingFailed,
    required bool isFetchingSucces,
    required ErrorModel error,
  }) = _MemberDetailState;
}
