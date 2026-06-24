import 'package:flutter/material.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/feature/my_appointments/domain/entities/my_appointment.dart';

import 'appointments_tabbar_view.dart';

class ConsultedAppointmentsTabbarView extends StatelessWidget {
  final List<DateTime> monthTimelineList;
  final List<MyAppointment> appointments;
  final RefreshCallback onRefresh;

  const ConsultedAppointmentsTabbarView({
    super.key,
    required this.monthTimelineList,
    required this.appointments,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return AppointmentsTabbarView(
      title: AppStaticTexts.consultedAppointments,
      appointments: appointments,
      monthTimelineList: monthTimelineList,
      emptyTitle: AppStaticTexts.noConsultedAppointments,
      emptyMessage: AppStaticTexts.noConsultedAppointmentsMessage,
      onRefresh: onRefresh,
    );
  }
}
