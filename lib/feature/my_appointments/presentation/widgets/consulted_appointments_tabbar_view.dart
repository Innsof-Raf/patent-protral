import 'package:flutter/material.dart';
import 'package:patient_portal/feature/my_appointments/domain/entities/my_appointment.dart';

import 'appointments_tabbar_view.dart';

class ConsultedAppointmentsTabbarView extends StatelessWidget {
  final List<DateTime> monthTimeLineList;
  final List<MyAppointment> appointments;

  const ConsultedAppointmentsTabbarView({
    super.key,
    required this.monthTimeLineList,
    required this.appointments,
  });

  @override
  Widget build(BuildContext context) {
    return AppointmentsTabbarView(
      title: 'Consulted appointments',
      appointments: appointments,
      monthTimeLineList: monthTimeLineList,
      emptyTitle: 'No consulted appointments',
      emptyMessage: 'Completed visits will appear here after consultation.',
    );
  }
}
