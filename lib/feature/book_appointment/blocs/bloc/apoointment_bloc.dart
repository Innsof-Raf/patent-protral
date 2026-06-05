import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'apoointment_event.dart';
part 'apoointment_state.dart';
part 'apoointment_bloc.freezed.dart';

class ApoointmentBloc extends Bloc<ApoointmentEvent, ApoointmentState> {
  ApoointmentBloc() : super(_Initial()) {
    on<ApoointmentEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
