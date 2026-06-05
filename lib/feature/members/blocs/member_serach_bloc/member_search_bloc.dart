import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../profile/models/member/member_model.dart';

part 'member_search_event.dart';
part 'member_search_state.dart';
part 'member_search_bloc.freezed.dart';

class MemberSearchBloc extends Bloc<MemberSearchEvent, MemberSearchState> {
  MemberSearchBloc() : super(MemberSearchState.initial()) {
    on<SearchMember>((event, emit) {
      List<MemberModel> searchResult = [];
      final List<MemberModel> availableMembers = event.members;
      for (MemberModel member in availableMembers) {
        if (member.name.toLowerCase().contains(event.searchKey)) {
          searchResult.add(member);
        }
      }
      emit(state.copyWith(searchResultMembers: searchResult));
    });
  }
}
