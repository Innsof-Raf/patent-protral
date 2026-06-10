import 'package:flutter/material.dart';
import 'package:patient_portal/feature/my_appointments/domain/entities/my_appointment_model.dart';

import 'my_appointment_tile.dart';

class MyAppointmentsListView extends StatelessWidget {
  final List<MyAppointmentModel> appointments;
  const MyAppointmentsListView({super.key, required this.appointments});

  @override
  Widget build(BuildContext context) {
    appointments.sort(
      (appointment1, appointment2) => appointment1.appointmentDateTime
          .compareTo(appointment2.appointmentDateTime),
    );
    return Flexible(
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.only(top: 9),
        shrinkWrap: true,
        itemBuilder: (context, index) => MyAppointmentTile(
          isCounselted: appointments[index].appointmentDateTime.isBefore(
            DateTime.now(),
          ),
          appointment: appointments[index],
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 9),
        itemCount: appointments.length,
      ),
    );
  }
}
