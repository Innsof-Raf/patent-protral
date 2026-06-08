import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_member_bloc.freezed.dart';
part 'delete_member_event.dart';
part 'delete_member_state.dart';

class DeleteMemberBloc extends Bloc<DeleteMemberEvent, DeleteMemberState> {
  DeleteMemberBloc() : super(const DeleteMemberState(selectedMebersList: [])) {
    on<UpdateSelectedMemberList>((event, emit) {
      final List<int> currentList = List.from(state.selectedMebersList);
      if (currentList.contains(event.memberId)) {
        currentList.remove(event.memberId);
      } else {
        currentList.add(event.memberId);
      }
      emit(state.copyWith(selectedMebersList: currentList));
    });
    on<ClearSelectedMemberList>((event, emit) {
      emit(state.copyWith(selectedMebersList: []));
    });
    on<SelectAllMembers>((event, emit) {
      emit(state.copyWith(selectedMebersList: event.membersIdList));
    });
  }
}
