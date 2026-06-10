import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/profile/domain/entities/member.dart';

part 'generated/member_search_bloc.freezed.dart';
part 'member_search_event.dart';
part 'member_search_state.dart';

class MemberSearchBloc extends Bloc<MemberSearchEvent, MemberSearchState> {
  MemberSearchBloc() : super(MemberSearchState.initial()) {
    on<SearchMember>((event, emit) {
      List<Member> searchResult = [];
      final List<Member> availableMembers = event.members;
      for (Member member in availableMembers) {
        if (member.name.toLowerCase().contains(event.searchKey)) {
          searchResult.add(member);
        }
      }
      emit(state.copyWith(searchResultMembers: searchResult));
    });
  }
}
