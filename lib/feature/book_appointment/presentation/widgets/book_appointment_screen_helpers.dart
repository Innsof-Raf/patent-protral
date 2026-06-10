import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/feature/book_appointment/presentation/widgets/book_appointment_confirmation_popup.dart';
import 'package:patient_portal/feature/profile/domain/entities/member.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/resources/app_colors.dart';
import 'package:patient_portal/resources/app_text_styles.dart';

class BookAppointmentScreenHelpers {
  static final List<DateTime> dateList = [];
  static void createDateList() {
    if (dateList.isEmpty || dateList[0].day != DateTime.now().day) {
      for (int i = 0; i < 14; i++) {
        dateList.add(DateTime.now().add(Duration(days: i)));
      }
    }
  }

  static void resheduleAppointment({
    required BuildContext context,
    required int idAppointment,
    required int idDoctor,
    required String doctorName,
    required String doctorImage,
  }) {
    ScaffoldMessenger.of(context).clearSnackBars();
    if (BookAppointmentScreenHelpers.selectedSlotNotifier.value == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        alertSnakBar(content: 'Select slot for reshedule appointment'),
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
              child: BookAppoitmentConfirmationPopUp(
                appointmentId: idAppointment,
                title: 'Reshedule Slot',
                appintmentDateTime: selectedSlotNotifier.value!,
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
        alertSnakBar(content: 'Add a Member to book an apoointment'),
      );
    } else if (BookAppointmentScreenHelpers.selectedSlotNotifier.value ==
            null &&
        BookAppointmentScreenHelpers.selectedMemberNotifier.value == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        alertSnakBar(content: 'Select a slot and a member to book appointment'),
      );
    } else if (BookAppointmentScreenHelpers.selectedSlotNotifier.value ==
        null) {
      ScaffoldMessenger.of(context).showSnackBar(
        alertSnakBar(content: 'Select a slot to book appointment'),
      );
    } else if (BookAppointmentScreenHelpers.selectedMemberNotifier.value ==
        null) {
      ScaffoldMessenger.of(context).showSnackBar(
        alertSnakBar(content: 'Select a member to book appointment'),
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
              child: BookAppoitmentConfirmationPopUp(
                appointmentId: 0,
                title: 'Book Slot',
                appintmentDateTime: selectedSlotNotifier.value!,
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

  static SnackBar alertSnakBar({required String content}) {
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
