import 'package:flutter/material.dart';
import 'package:patient_portal/feature/book_appointment/helpers/book_appointment_screen_helpers.dart';
import 'package:patient_portal/feature/book_appointment/models/shift_model/shift_model.dart';

import 'package:patient_portal/resources/app_text_styles.dart';
import 'package:patient_portal/resources/dimens.dart';

import 'slot_tile.dart';

class AppointmentSlotSection extends StatelessWidget {
  final ShiftModel shift;
  const AppointmentSlotSection({super.key, required this.shift});

  @override
  Widget build(BuildContext context) {
    BookAppointmentScreenHelpers.selectedSlotNotifier.value = null;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Dimens.constPadding),
      child: shift.slots.isEmpty
          ? Column(mainAxisSize: MainAxisSize.min, children: const [
              SizedBox(
                height: 15,
              ),
              Text('No Slots  Available',
                  style: AppTextStyles.bodyLargeRobotoSemiBold),
              SizedBox(
                height: 15,
              ),
            ])
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Available Time',
                  style: AppTextStyles.subHeaddingSemiBoldRoboto,
                ),
                Text(
                  shift.shift,
                  style: AppTextStyles.bodyTextRoboto,
                ),
                ValueListenableBuilder(
                  valueListenable:
                      BookAppointmentScreenHelpers.selectedSlotNotifier,
                  builder: (context, value, child) => GridView.builder(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 2.2),
                    itemCount: shift.slots.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => SlotTile(
                      isSelected:
                          shift.slots[index].appdttm == value ? true : false,
                      slot: shift.slots[index],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
