import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_helpers/string_extensions.dart';
import 'package:patient_portal/core/analytics/app_analytics_events.dart';
import 'package:patient_portal/core/injection_container.dart' as di;
import 'package:patient_portal/core/services/analytics_service.dart';
import 'package:patient_portal/feature/book_appointment/domain/entities/slot.dart';
import 'package:patient_portal/feature/book_appointment/presentation/widgets/book_appointment_screen_helpers.dart';

class SlotTile extends StatelessWidget {
  final bool isSelected;
  final Slot slot;
  final String doctorId;
  final String shiftType;

  const SlotTile({
    super.key,
    required this.isSelected,
    required this.slot,
    required this.doctorId,
    required this.shiftType,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final bool isBooked = slot.isBooked;

    Color getBackgroundColor() {
      if (isBooked) {
        return colorScheme.surfaceContainerHighest.withValues(alpha: 0.3);
      }
      if (isSelected) return AppColors.blue;
      return AppColors.white;
    }

    Color getForegroundColor() {
      if (isBooked) return colorScheme.onSurfaceVariant.withValues(alpha: 0.4);
      if (isSelected) return AppColors.white;
      return AppColors.blue;
    }

    BorderSide getBorder() {
      if (isBooked) return BorderSide.none;
      return const BorderSide(color: AppColors.blue, width: 1.5);
    }

    return InkWell(
      onTap: isBooked
          ? null
          : () {
              if (slot.appdttm ==
                  BookAppointmentScreenHelpers.selectedSlotNotifier.value) {
                BookAppointmentScreenHelpers.selectedSlotNotifier.value = null;
              } else {
                BookAppointmentScreenHelpers.selectedSlotNotifier.value =
                    slot.appdttm;

                final selectedDateStr =
                    DateFormat('yyyy-MM-dd').format(slot.appdttm);
                final selectedTimeSlotStr =
                    DateFormat('hh:mm a').format(slot.appdttm);

                di.sl<AnalyticsService>().logEvent(
                      AppAnalyticsEvents.slotSelected(
                        doctorId: doctorId,
                        selectedDate: selectedDateStr,
                        selectedTimeSlot: selectedTimeSlotStr,
                        shiftType: shiftType,
                      ),
                    );
              }
            },
      borderRadius: BorderRadius.circular(10),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color: getBackgroundColor(),
          borderRadius: BorderRadius.circular(10),
          border: Border.fromBorderSide(getBorder()),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: AppColors.blue.withValues(alpha: 0.2),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ]
              : null,
        ),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        alignment: Alignment.center,
        child: Text(
          DateFormat(
            'hh:mm a',
            context.currentLang,
          ).format(slot.appdttm).localize(context.currentLang),
          style: AppTextStyles.largeBoldRoboto.copyWith(
            color: getForegroundColor(),
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}
