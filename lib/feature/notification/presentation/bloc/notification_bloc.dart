import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/notification/domain/entities/notification.dart';
import 'package:patient_portal/feature/notification/domain/usecases/get_notifications_usecase.dart';

part 'generated/notification_bloc.freezed.dart';
part 'notification_event.dart';
part 'notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final GetNotificationsUseCase getNotificationsUseCase;

  NotificationBloc({required this.getNotificationsUseCase})
    : super(NotificationState.initial()) {
    on<GetNotifications>((event, emit) async {
      emit(state.copyWith(isLoading: true, isError: false, isSuccess: false));

      // Temporarily using static data instead of calling API
      await Future.delayed(const Duration(milliseconds: 500));

      final staticNotifications = [
        const NotificationEntity(
          date: '12',
          month: 'Oct',
          title: 'Appointment Confirmed',
          subtitle: 'Dr. John Doe',
          description: 'Your appointment has been confirmed for 10:30 AM.',
          isRead: false,
        ),
        const NotificationEntity(
          date: '10',
          month: 'Oct',
          title: 'New Lab Report',
          subtitle: 'Blood Test',
          description: 'Your lab report for the blood test is now available.',
          isRead: true,
        ),
        const NotificationEntity(
          date: '08',
          month: 'Oct',
          title: 'Reminder',
          subtitle: 'Follow-up Visit',
          description:
              'Don\'t forget your follow-up visit with Dr. Sarah Smith tomorrow.',
          isRead: true,
        ),
      ];

      emit(
        state.copyWith(
          isLoading: false,
          isSuccess: true,
          notifications: staticNotifications,
        ),
      );

      /*
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
            isSuccess: false,
            errorMessage: failure.message,
          ),
        ),
        (notifications) => emit(
          state.copyWith(
            isLoading: false,
            isSuccess: true,
            notifications: notifications,
          ),
        ),
      );
      */
    });
  }
}
