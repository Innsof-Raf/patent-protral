import 'package:flutter/material.dart';
import 'package:patient_portal/feature/notification/presentation/widgets/notification_widget.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_appbar.dart';

class Notificationscreen extends StatelessWidget {
  const Notificationscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppbar(title: 'Notifications'),
      body: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: ((context, index) {
          return const NotificationWidget(
            bookingDate: "27",
            bookingMonth: "FEB",
            title: "Appointment Booked",
            subTitle: "Last Consulted on : 30/01/2022  |  09:00 Amaaaaaaaaaaad",
            description: "adhjdjjkdjlkdkkjk",
          );
        }),
      ),
    );
  }
}
