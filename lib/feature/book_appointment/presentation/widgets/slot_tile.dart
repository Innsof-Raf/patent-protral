import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/feature/book_appointment/domain/entities/slot_model.dart';
import 'package:patient_portal/feature/book_appointment/presentation/widgets/book_appointment_screen_helpers.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';

class SlotTile extends StatelessWidget {
  final bool isSelected;
  final SlotModel slot;
  const SlotTile({super.key, required this.isSelected, required this.slot});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: !slot.isBooked
            ? isSelected
                  ? AppColors.vilot
                  : AppColors.white
            : AppColors.disabledBagroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          side: BorderSide(
            width: .5,
            color: !slot.isBooked
                ? isSelected
                      ? AppColors.vilot
                      : AppColors.borderColor
                : AppColors.disabledBagroundColor,
          ),
        ),
        minimumSize: const Size(0, 0),
        padding: const EdgeInsets.all(10),
      ),
      onPressed: () {
        if (!slot.isBooked) {
          if (slot.appdttm ==
              BookAppointmentScreenHelpers.selectedSlotNotifier.value) {
            BookAppointmentScreenHelpers.selectedSlotNotifier.value = null;
          } else {
            BookAppointmentScreenHelpers.selectedSlotNotifier.value =
                slot.appdttm;
          }
        }
      },
      child: Text(
        DateFormat.jm().format(slot.appdttm),
        style: AppTextStyles.bodySemiBoldRoboto.copyWith(
          color: !slot.isBooked
              ? isSelected
                    ? AppColors.dividerGrayColor
                    : AppColors.textDark
              : AppColors.disabledTextColor,
          fontSize: 10,
        ),
      ),
    );
  }
}
