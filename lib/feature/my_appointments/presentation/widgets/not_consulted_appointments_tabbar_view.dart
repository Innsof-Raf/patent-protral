import 'package:flutter/material.dart';
import 'package:patient_portal/feature/my_appointments/domain/entities/my_appointment.dart';

import 'appointments_tabbar_view.dart';

class NotConsultedAppointmentsTabbarView extends StatelessWidget {
  final List<DateTime> monthTimelineList;
  final List<MyAppointment> appointments;
  final RefreshCallback onRefresh;

  const NotConsultedAppointmentsTabbarView({
    super.key,
    required this.monthTimelineList,
    required this.appointments,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return AppointmentsTabbarView(
      title: 'Upcoming appointments',
      appointments: appointments,
      monthTimelineList: monthTimelineList,
      emptyTitle: 'No upcoming appointments',
      emptyMessage: 'You do not have any scheduled visits right now.',
      onRefresh: onRefresh,
    );
  }
}
