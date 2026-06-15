import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/notification/domain/entities/notification.dart';
import 'package:patient_portal/feature/notification/domain/usecases/get_notifications_usecase.dart';
import 'package:patient_portal/feature/notification/domain/usecases/params/notification_params.dart';

part 'generated/notification_bloc.freezed.dart';
part 'notification_event.dart';
part 'notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final GetNotificationsUseCase getNotificationsUseCase;

  NotificationBloc({required this.getNotificationsUseCase})
    : super(NotificationState.initial()) {
    on<GetNotifications>((event, emit) async {
      emit(state.copyWith(isLoading: true, isError: false));

      final result = await getNotificationsUseCase(
        NotificationParams(
          token: event.token,
          mobileNumber: event.mobileNumber,
        ),
      );

      result.fold(
        (failure) => emit(
          state.copyWith(
            isLoading: false,
            isError: true,
            errorMessage: failure.message,
          ),
        ),
        (notifications) => emit(
          state.copyWith(isLoading: false, notifications: notifications),
        ),
      );
    });
  }
}
