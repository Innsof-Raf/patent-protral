import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_appbar.dart';
import 'package:patient_portal/feature/notification/presentation/bloc/notification_bloc.dart';
import 'package:patient_portal/feature/notification/presentation/widgets/empty_notifications_view.dart';
import 'package:patient_portal/feature/notification/presentation/widgets/notification_card.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

@RoutePage(name: 'NotificationRoute')
class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  void initState() {
    super.initState();
    final userState = context.read<UserBloc>().state;
    final token = userState.user?.accessToken ?? '';
    final mobileNumber = userState.user?.mobileNumber ?? '';

    context.read<NotificationBloc>().add(
      NotificationEvent.getNotifications(
        token: token,
        mobileNumber: mobileNumber,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppbar(title: 'Notifications'),
      body: BlocBuilder<NotificationBloc, NotificationState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.isError) {
            return Center(child: Text(state.errorMessage));
          }

          if (state.notifications.isEmpty) {
            return const EmptyNotificationsView();
          }

          return ListView.builder(
            padding: const EdgeInsets.fromLTRB(20, 16, 20, 32),
            physics: const BouncingScrollPhysics(),
            itemCount: state.notifications.length,
            itemBuilder: (context, index) {
              final notification = state.notifications[index];

              return NotificationCard(
                isRead: notification.isRead,
                date: notification.date,
                month: notification.month,
                title: notification.title,
                subtitle: notification.subtitle,
                description: notification.description,
                onTap: () {
                  // TODO: Handle notification tap
                },
              );
            },
          );
        },
      ),
    );
  }
}
