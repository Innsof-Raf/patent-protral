import 'package:flutter/material.dart';

import '../models/my_appointment_model.dart';
import 'month_tile.dart';
import 'my_appointments_list_view.dart';

class ConsultedAppointmentsTabbarView extends StatelessWidget {
  final List<DateTime> monthTimeLineList;
  final List<MyAppointmentModel> appointments;
  const ConsultedAppointmentsTabbarView(
      {super.key, required this.monthTimeLineList, required this.appointments});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: monthTimeLineList.length,
      separatorBuilder: (context, index) => const SizedBox(
        height: 9,
      ),
      itemBuilder: (context, index) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MonthTile(
            month: monthTimeLineList[index],
          ),
          MyAppointmentsListView(
            appointments: appointments
                .where((appointment) =>
                    appointment.appointmentDateTime.year ==
                        monthTimeLineList[index].year &&
                    appointment.appointmentDateTime.month ==
                        monthTimeLineList[index].month)
                .toList(),
          )
        ],
      ),
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(vertical: 9),
    );
  }
}
