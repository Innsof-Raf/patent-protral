import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/feature/profile/domain/entities/member.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

import 'book_appointment_confirmation_popup.dart';

class BookAppointmentScreenHelpers {
  static final List<DateTime> dateList = [];
  static void createDateList() {
    if (dateList.isEmpty || dateList[0].day != DateTime.now().day) {
      for (int i = 0; i < 14; i++) {
        dateList.add(DateTime.now().add(Duration(days: i)));
      }
    }
  }

  static void rescheduleAppointment({
    required BuildContext context,
    required int idAppointment,
    required int idDoctor,
    required String doctorName,
    required String doctorImage,
  }) {
    ScaffoldMessenger.of(context).clearSnackBars();
    if (BookAppointmentScreenHelpers.selectedSlotNotifier.value == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        alertSnackBar(content: 'Select slot for reschedule appointment'),
      );
    } else {
      showGeneralDialog(
        transitionDuration: const Duration(milliseconds: 300),
        pageBuilder: (context, animation, secondaryAnimation) {
          return Container();
        },
        context: context,
        transitionBuilder:
            (
              context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) => Transform.scale(
              scale: Curves.easeOut.transform(animation.value),
              child: BookAppointmentConfirmationPopUp(
                appointmentId: idAppointment,
                title: 'Reschedule Slot',
                appointmentDateTime: selectedSlotNotifier.value!,
                doctorImage: doctorImage,
                doctorName: doctorName,
                idDoctor: idDoctor,
                member: selectedMemberNotifier.value!,
              ),
            ),
      );
    }
  }

  static void bookAppointment({
    required BuildContext context,
    required String doctorName,
    required String doctorImage,
    required int idDoctor,
  }) {
    ScaffoldMessenger.of(context).clearSnackBars();
    if (context.read<UserBloc>().state.user!.members.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        alertSnackBar(content: 'Add a Member to book an appointment'),
      );
    } else if (BookAppointmentScreenHelpers.selectedSlotNotifier.value ==
            null &&
        BookAppointmentScreenHelpers.selectedMemberNotifier.value == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        alertSnackBar(
          content: 'Select a slot and a member to book appointment',
        ),
      );
    } else if (BookAppointmentScreenHelpers.selectedSlotNotifier.value ==
        null) {
      ScaffoldMessenger.of(context).showSnackBar(
        alertSnackBar(content: 'Select a slot to book appointment'),
      );
    } else if (BookAppointmentScreenHelpers.selectedMemberNotifier.value ==
        null) {
      ScaffoldMessenger.of(context).showSnackBar(
        alertSnackBar(content: 'Select a member to book appointment'),
      );
    } else {
      showGeneralDialog(
        transitionDuration: const Duration(milliseconds: 300),
        pageBuilder: (context, animation, secondaryAnimation) {
          return Container();
        },
        context: context,
        transitionBuilder:
            (
              context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) => Transform.scale(
              scale: Curves.easeOut.transform(animation.value),
              child: BookAppointmentConfirmationPopUp(
                appointmentId: 0,
                title: 'Book Slot',
                appointmentDateTime: selectedSlotNotifier.value!,
                doctorImage: doctorImage,
                doctorName: doctorName,
                idDoctor: idDoctor,
                member: selectedMemberNotifier.value!,
              ),
            ),
      );
    }
  }

  static ValueNotifier<DateTime> selectedDateNotifier = ValueNotifier(
    DateTime.now(),
  );
  static ValueNotifier<DateTime?> selectedSlotNotifier = ValueNotifier(null);
  static ValueNotifier<Member?> selectedMemberNotifier = ValueNotifier(null);

  static SnackBar alertSnackBar({required String content}) {
    return SnackBar(
      content: Text(
        content,
        style: AppTextStyles.bodySemiBoldRoboto.copyWith(
          color: AppColors.white,
        ),
      ),
      backgroundColor: AppColors.black,
    );
  }
}
