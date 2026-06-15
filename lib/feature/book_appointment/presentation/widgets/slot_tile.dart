import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/feature/book_appointment/domain/entities/slot.dart';
import 'package:patient_portal/feature/book_appointment/presentation/widgets/book_appointment_screen_helpers.dart';

class SlotTile extends StatelessWidget {
  final bool isSelected;
  final Slot slot;
  const SlotTile({super.key, required this.isSelected, required this.slot});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final bool isBooked = slot.isBooked;

    Color getBackgroundColor() {
      if (isBooked) {
        return colorScheme.surfaceContainerHighest.withValues(alpha: 0.3);
      }
      if (isSelected) return colorScheme.primary;
      return colorScheme.surface;
    }

    Color getForegroundColor() {
      if (isBooked) return colorScheme.onSurfaceVariant.withValues(alpha: 0.4);
      if (isSelected) return colorScheme.onPrimary;
      return colorScheme.onSurface;
    }

    BorderSide getBorder() {
      if (isBooked) return BorderSide.none;
      if (isSelected) return BorderSide(color: colorScheme.primary, width: 1.5);
      return BorderSide(color: colorScheme.outline, width: 1);
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
              }
            },
      borderRadius: BorderRadius.circular(16),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color: getBackgroundColor(),
          borderRadius: BorderRadius.circular(16),
          border: Border.fromBorderSide(getBorder()),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: colorScheme.primary.withValues(alpha: 0.2),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ]
              : null,
        ),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
        alignment: Alignment.center,
        child: Text(
          DateFormat.jm().format(slot.appdttm),
          style: theme.textTheme.labelLarge?.copyWith(
            color: getForegroundColor(),
            fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
