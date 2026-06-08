import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'apoointment_event.dart';
part 'apoointment_state.dart';
part 'generated/apoointment_bloc.freezed.dart';

class ApoointmentBloc extends Bloc<ApoointmentEvent, ApoointmentState> {
  ApoointmentBloc() : super(const ApoointmentState.initial()) {
    on<ApoointmentEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
