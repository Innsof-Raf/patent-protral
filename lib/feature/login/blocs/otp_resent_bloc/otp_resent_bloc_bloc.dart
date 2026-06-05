import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_resent_bloc_event.dart';
part 'otp_resent_bloc_state.dart';
part 'otp_resent_bloc_bloc.freezed.dart';

class OtpResentBlocBloc extends Bloc<OtpResentBlocEvent, OtpResentBlocState> {
  OtpResentBlocBloc() : super(_Initial()) {
    on<OtpResentBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
