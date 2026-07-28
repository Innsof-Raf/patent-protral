import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_empty_state.dart';
import 'package:patient_portal/feature/book_appointment/domain/entities/shift.dart';
import 'package:patient_portal/feature/book_appointment/presentation/widgets/book_appointment_screen_helpers.dart';

import 'slot_tile.dart';

class AppointmentSlotSection extends StatelessWidget {
  final Shift shift;
  final String doctorId;

  const AppointmentSlotSection({
    super.key,
    required this.shift,
    required this.doctorId,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: shift.slots.isEmpty
          ? _buildEmptyState(theme, context)
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildHeader(theme, colorScheme, context),
                const Gap(16),
                _buildSlotsGrid(),
              ],
            ),
    );
  }

  Widget _buildHeader(
    ThemeData theme,
    ColorScheme colorScheme,
    BuildContext context,
  ) {
    final displayShift = shift.shift.split('<').first.trim();

    return Row(
      children: [
        Text(
          context.lang.availableTime,
          style: AppTextStyles.subHeadingSemiBoldRoboto.copyWith(
            fontWeight: FontWeight.bold,
            color: colorScheme.onSurface,
          ),
        ),
        const Gap(12),
        if (displayShift.isNotEmpty)
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: colorScheme.primaryContainer.withValues(alpha: 0.7),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  displayShift,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.bodyTextRoboto.copyWith(
                    color: colorScheme.onPrimaryContainer,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildSlotsGrid() {
    final shiftType = shift.shift.split('<').first.trim();

    return ValueListenableBuilder(
      valueListenable: BookAppointmentScreenHelpers.selectedSlotNotifier,
      builder: (context, value, child) => SizedBox(
        height: 110,
        child: GridView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(vertical: 4),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 12,
            childAspectRatio: 0.45,
          ),
          itemCount: shift.slots.length,
          itemBuilder: (context, index) => SlotTile(
            isSelected: shift.slots[index].appdttm == value,
            slot: shift.slots[index],
            doctorId: doctorId,
            shiftType: shiftType,
          ),
        ),
      ),
    );
  }

  Widget _buildEmptyState(ThemeData theme, BuildContext context) =>
      CommonEmptyState(
        title: context.lang.noSlotsAvailable,
        description: context.lang.noSlotsAvailableMessage,
        icon: Icons.event_busy_rounded,
      );
}
