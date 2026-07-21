part of 'member_search_bloc.dart';

@freezed
sealed class MemberSearchState with _$MemberSearchState {
  const factory MemberSearchState({required List<Member> searchResultMembers}) =
      _MemberSearchState;

  factory MemberSearchState.initial() =>
      const MemberSearchState(searchResultMembers: []);
}
