import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_snack_bar.dart';
import 'package:patient_portal/feature/profile/domain/entities/member.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

import 'book_appointment_confirmation_popup.dart';

class BookAppointmentScreenHelpers {
  static final List<DateTime> dateList = [];
  static void createDateList() {
    if (dateList.isEmpty || dateList[0].day != DateTime.now().day) {
      dateList.clear();
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
    if (BookAppointmentScreenHelpers.selectedSlotNotifier.value == null) {
      CommonSnackBar.show(
        context,
        message: AppStaticTexts.selectSlotForRescheduleAppointment,
        type: SnackBarType.error,
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
                title: AppStaticTexts.rescheduleSlot,
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
    if (context.read<UserBloc>().state.user!.members.isEmpty) {
      CommonSnackBar.show(
        context,
        message: AppStaticTexts.addMemberToBookAppointment,
        type: SnackBarType.error,
      );
    } else if (BookAppointmentScreenHelpers.selectedSlotNotifier.value ==
            null &&
        BookAppointmentScreenHelpers.selectedMemberNotifier.value == null) {
      CommonSnackBar.show(
        context,
        message: AppStaticTexts.selectSlotAndMemberToBookAppointment,
        type: SnackBarType.error,
      );
    } else if (BookAppointmentScreenHelpers.selectedSlotNotifier.value ==
        null) {
      CommonSnackBar.show(
        context,
        message: AppStaticTexts.selectSlotToBookAppointment,
        type: SnackBarType.error,
      );
    } else if (BookAppointmentScreenHelpers.selectedMemberNotifier.value ==
        null) {
      CommonSnackBar.show(
        context,
        message: AppStaticTexts.selectMemberToBookAppointment,
        type: SnackBarType.error,
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
                title: AppStaticTexts.bookSlot,
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
}
