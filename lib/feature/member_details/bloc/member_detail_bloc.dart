import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/resources/error_model.dart';

part 'member_detail_event.dart';
part 'member_detail_state.dart';
part 'member_detail_bloc.freezed.dart';

class MemberDetailBloc extends Bloc<MemberDetailEvent, MemberDetailState> {
  MemberDetailBloc() : super(MemberDetailState.initial()) {
    on<MemberDetailEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
