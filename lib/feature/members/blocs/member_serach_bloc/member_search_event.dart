part of 'member_search_bloc.dart';

@freezed
class MemberSearchEvent with _$MemberSearchEvent {
  const factory MemberSearchEvent.searchMember(
      {required List<MemberModel> members,
      required String searchKey}) = SearchMember;
}
