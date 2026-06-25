import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_empty_state.dart';
import 'package:patient_portal/feature/my_appointments/domain/entities/my_appointment.dart';
import 'package:patient_portal/feature/my_appointments/presentation/widgets/month_tile.dart';
import 'package:patient_portal/feature/my_appointments/presentation/widgets/my_appointments_list_view.dart';

class AppointmentsTabbarView extends StatelessWidget {
  final String title;
  final String emptyTitle;
  final String emptyMessage;
  final List<DateTime> monthTimelineList;
  final List<MyAppointment> appointments;
  final RefreshCallback onRefresh;

  const AppointmentsTabbarView({
    super.key,
    required this.title,
    required this.emptyTitle,
    required this.emptyMessage,
    required this.monthTimelineList,
    required this.appointments,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    if (appointments.isEmpty) {
      return CommonEmptyState(
        title: emptyTitle,
        description: emptyMessage,
        icon: Icons.calendar_today_outlined,
        actionLabel: AppStaticTexts.refresh,
        onAction: onRefresh,
      );
    }

    return RefreshIndicator(
      onRefresh: onRefresh,
      child: ListView.separated(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 100),
        itemCount: monthTimelineList.length + 1,
        separatorBuilder: (context, index) => const Gap(16),
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
                  const Gap(12),
                  Text(
                    title,
                    style: AppTextStyles.subHeadingSemiBoldRoboto.copyWith(
                      color: colorScheme.onSurface,
                      fontWeight: FontWeight.w800,
                      letterSpacing: -0.2,
                    ),
                  ),
                ],
              ),
            );
          }

          final month = monthTimelineList[index - 1];
          final monthlyAppointments = appointments.where((appointment) {
            return appointment.appointmentDateTime.year == month.year &&
                appointment.appointmentDateTime.month == month.month;
          }).toList();

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MonthTile(month: month),
              const Gap(10),
              MyAppointmentsListView(appointments: monthlyAppointments),
            ],
          );
        },
      ),
    );
  }
}
