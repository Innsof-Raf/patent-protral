import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/feature/book_appointment/presentation/widgets/book_appointment_screen_helpers.dart';
import 'package:patient_portal/feature/my_appointments/data/models/my_appointment_model.dart';
import 'package:patient_portal/feature/my_appointments/presentation/bloc/my_appointments_bloc/my_appointments_bloc.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/resources/app_colors.dart';
import 'package:patient_portal/resources/app_text_styles.dart';
import 'package:patient_portal/resources/common_widgets.dart/active_button.dart';
import 'package:patient_portal/resources/common_widgets.dart/active_outlined_button.dart';
import 'package:patient_portal/resources/dimens.dart';
import 'package:patient_portal/resources/helpers.dart';
import 'package:patient_portal/resources/urls.dart';
import 'package:patient_portal/route/route_constants.dart';

import 'cancel_booking_popup.dart';

class MyAppointmentTile extends StatelessWidget {
  final bool isCounselted;
  final MyAppointmentModel appointment;

  const MyAppointmentTile({
    super.key,
    required this.appointment,
    required this.isCounselted,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: AppColors.white,
        elevation: 0,
        foregroundColor: AppColors.textDark,
        minimumSize: const Size(0, 0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        side: const BorderSide(color: AppColors.borderColor, width: .5),
        padding: EdgeInsets.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            flex: 2,
            child: LayoutBuilder(
              builder: (context, constraints) => ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(
                  '${ConstantUrls.doctorImageUrl}/${appointment.idDoctor}/${appointment.profileUrl}',
                  height: constraints.maxWidth,
                  loadingBuilder: (context, child, loadingProgress) =>
                      AppHelpers.imageLoadingIndicator(
                        context,
                        child,
                        loadingProgress,
                      ),
                  errorBuilder: (context, error, stackTrace) {
                    return SvgPicture.asset(
                      'assets/images/doctor_image_loading_failed_image.svg',
                      fit: BoxFit.fill,
                    );
                  },
                ),
              ),
            ),
          ),
          Dimens.constWidth10,
          Flexible(
            flex: 4,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    appointment.doctorName,
                    style: AppTextStyles.bodyLargeRobotoSemiBold,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0.8),
                    child: Text(
                      appointment.departName,
                      style: AppTextStyles.bodySmallRobotoNormal,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          isCounselted ? 'Consulted for : ' : 'Booked for : ',
                          style: AppTextStyles.bodySmallRobotoNormal,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: AppColors.lightGreen,
                          ),
                          child: Text(
                            appointment.memberName,
                            style: AppTextStyles.bodyXSmallInterNormal.copyWith(
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      isCounselted
                          ? 'Consulted on : ${DateFormat('dd/MM/yyyy |').add_jm().format(appointment.appointmentDateTime)}'
                          : 'Booked on : ${DateFormat('dd/MM/yyyy |').add_jm().format(appointment.appointmentDateTime)}',
                      style: AppTextStyles.bodySmallRobotoNormal,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: !isCounselted
                  ? IntrinsicWidth(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ActiveButton(
                            child: Text(
                              'Reshedule',
                              style: AppTextStyles.bodyLargeRobotoBold.copyWith(
                                color: AppColors.white,
                              ),
                            ),
                            onPressed: () {
                              if (!appointment.isCanceling) {
                                BookAppointmentScreenHelpers
                                    .selectedMemberNotifier
                                    .value = context
                                    .read<UserBloc>()
                                    .state
                                    .user!
                                    .members
                                    .firstWhere(
                                      (member) =>
                                          member.id == appointment.memberId,
                                    );
                                BookAppointmentScreenHelpers.createDateList();

                                BookAppointmentScreenHelpers
                                    .selectedDateNotifier
                                    .value = BookAppointmentScreenHelpers
                                    .dateList
                                    .firstWhere(
                                      (date) =>
                                          date.day ==
                                          appointment.appointmentDateTime.day,
                                    );
                                Navigator.of(context).pushNamed(
                                  RouteConstants.bookAppointmentScreen,
                                  arguments: {
                                    'doctor_name': appointment.doctorName,
                                    'id_doctor': appointment.idDoctor,
                                    'doctor_image':
                                        '${ConstantUrls.doctorImageUrl}/${appointment.idDoctor}/${appointment.profileUrl}',
                                    'appointment_id': appointment.id,
                                  },
                                );
                              }
                            },
                          ),
                          const SizedBox(height: 5),
                          ActiveOutlinedButton(
                            onPressed: () {
                              if (!context
                                  .read<MyAppointmentsBloc>()
                                  .state
                                  .myAppointments
                                  .any(
                                    (appointment) => appointment.isCanceling,
                                  )) {
                                showGeneralDialog(
                                  transitionDuration: const Duration(
                                    milliseconds: 300,
                                  ),
                                  pageBuilder:
                                      (context, animation, secondaryAnimation) {
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
                                        scale: Curves.easeOut.transform(
                                          animation.value,
                                        ),
                                        child: CancelBookingPopUp(
                                          appintmentDateTime:
                                              appointment.appointmentDateTime,
                                          appointmentId: appointment.id,
                                          doctorImage:
                                              '${ConstantUrls.doctorImageUrl}/${appointment.idDoctor}/${appointment.profileUrl}',
                                          doctorName: appointment.doctorName,
                                          member: context
                                              .read<UserBloc>()
                                              .state
                                              .user!
                                              .members
                                              .singleWhere(
                                                (member) =>
                                                    member.id ==
                                                    appointment.memberId,
                                              ),
                                        ),
                                      ),
                                );
                              }
                            },
                            child: Text(
                              'Cancel',
                              style: AppTextStyles.bodyLargeRobotoBold.copyWith(
                                color: AppColors.vilot,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : ActiveButton(
                      child: Text(
                        'Book again ',
                        style: AppTextStyles.bodyLargeRobotoBold.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                      onPressed: () {
                        BookAppointmentScreenHelpers
                            .selectedMemberNotifier
                            .value = context
                            .read<UserBloc>()
                            .state
                            .user!
                            .members
                            .firstWhere(
                              (member) => member.id == appointment.memberId,
                            );
                        BookAppointmentScreenHelpers
                                .selectedSlotNotifier
                                .value =
                            null;
                        BookAppointmentScreenHelpers.createDateList();
                        BookAppointmentScreenHelpers
                                .selectedDateNotifier
                                .value =
                            BookAppointmentScreenHelpers.dateList[0];
                        Navigator.of(context).pushNamed(
                          RouteConstants.bookAppointmentScreen,
                          arguments: {
                            'doctor_name': appointment.doctorName,
                            'id_doctor': appointment.idDoctor,
                            'doctor_image':
                                '${ConstantUrls.doctorImageUrl}/${appointment.idDoctor}/${appointment.profileUrl}',
                            'appointment_id': 0,
                          },
                        );
                      },
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
