import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_member_event.dart';
part 'delete_member_state.dart';
part 'delete_member_bloc.freezed.dart';

class DeleteMemberBloc extends Bloc<DeleteMemberEvent, DeleteMemberState> {
  DeleteMemberBloc() : super(_Initial()) {
    on<DeleteMemberEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
