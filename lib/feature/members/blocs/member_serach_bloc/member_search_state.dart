part of 'member_search_bloc.dart';

@freezed
class MemberSearchState with _$MemberSearchState {
  const factory MemberSearchState({
    required List<MemberModel> searchResultMembers,
  }) = _MemberSearchState;
  factory MemberSearchState.initial() =>
      const MemberSearchState(searchResultMembers: []);
}
