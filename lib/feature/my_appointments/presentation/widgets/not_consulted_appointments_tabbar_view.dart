import 'package:flutter/material.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
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
      title: context.lang.upcomingAppointments,
      appointments: appointments,
      monthTimelineList: monthTimelineList,
      emptyTitle: context.lang.noUpcomingAppointments,
      emptyMessage: context.lang.noUpcomingAppointmentsMessage,
      onRefresh: onRefresh,
    );
  }
}
