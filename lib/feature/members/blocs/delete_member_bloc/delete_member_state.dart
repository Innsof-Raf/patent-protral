part of 'delete_member_bloc.dart';

@freezed
sealed class DeleteMemberState with _$DeleteMemberState {
  const factory DeleteMemberState({required List<int> selectedMebersList}) =
      _DeleteMemberState;
}
