import 'package:flutter/material.dart';
import 'package:patient_portal/feature/my_appointments/domain/entities/my_appointment.dart';
import 'package:patient_portal/feature/my_appointments/presentation/widgets/appointment_empty_state.dart';
import 'package:patient_portal/feature/my_appointments/presentation/widgets/month_tile.dart';
import 'package:patient_portal/feature/my_appointments/presentation/widgets/my_appointments_list_view.dart';

class AppointmentsTabbarView extends StatelessWidget {
  final String title;
  final String emptyTitle;
  final String emptyMessage;
  final List<DateTime> monthTimeLineList;
  final List<MyAppointment> appointments;

  const AppointmentsTabbarView({
    super.key,
    required this.title,
    required this.emptyTitle,
    required this.emptyMessage,
    required this.monthTimeLineList,
    required this.appointments,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    if (appointments.isEmpty) {
      return AppointmentEmptyState(title: emptyTitle, message: emptyMessage);
    }

    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      itemCount: monthTimeLineList.length + 1,
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemBuilder: (context, index) {
        if (index == 0) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 12, top: 12),
            child: Row(
              children: [
                Container(
                  width: 4,
                  height: 24,
                  decoration: BoxDecoration(
                    color: colorScheme.primary,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  title,
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: colorScheme.onSurface,
                    fontWeight: FontWeight.w800,
                    letterSpacing: -0.2,
                  ),
                ),
              ],
            ),
          );
        }

        final month = monthTimeLineList[index - 1];
        final monthlyAppointments = appointments.where((appointment) {
          return appointment.appointmentDateTime.year == month.year &&
              appointment.appointmentDateTime.month == month.month;
        }).toList();

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MonthTile(month: month),
            const SizedBox(height: 10),
            MyAppointmentsListView(appointments: monthlyAppointments),
          ],
        );
      },
    );
  }
}
