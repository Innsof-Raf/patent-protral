import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/feature/my_appointments/domain/entities/my_appointment.dart';

import 'my_appointment_tile.dart';

class MyAppointmentsListView extends StatelessWidget {
  final List<MyAppointment> appointments;

  const MyAppointmentsListView({super.key, required this.appointments});

  @override
  Widget build(BuildContext context) {
    final sortedAppointments = List<MyAppointment>.from(appointments)
      ..sort(
        (appointment1, appointment2) => appointment1.appointmentDateTime
            .compareTo(appointment2.appointmentDateTime),
      );

    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: sortedAppointments.length,
      separatorBuilder: (context, index) => const Gap(12),
      itemBuilder: (context, index) {
        final appointment = sortedAppointments[index];
        return MyAppointmentTile(
          appointment: appointment,
          isConsulted: appointment.appointmentDateTime.isBefore(DateTime.now()),
        );
      },
    );
  }
}
