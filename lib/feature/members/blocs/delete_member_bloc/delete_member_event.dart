part of 'delete_member_bloc.dart';

@freezed
class DeleteMemberEvent with _$DeleteMemberEvent {
  const factory DeleteMemberEvent.updateSelectedMemberList(
      {required int memberId}) = UpdateSelectedMemberList;
  const factory DeleteMemberEvent.clearSelectedMemberList() =
      ClearSelectedMemberList;
  const factory DeleteMemberEvent.selectAllMembers(
      {required List<int> membersIdList}) = SelectAllMembers;
}
