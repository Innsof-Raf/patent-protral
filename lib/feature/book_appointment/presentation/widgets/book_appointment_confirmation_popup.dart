import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/feature/book_appointment/presentation/bloc/book_appointment_bloc.dart';
import 'package:patient_portal/feature/profile/domain/entities/member.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/urls.dart';

import 'alert_active_elevated_button.dart';
import 'alert_active_oulined_button.dart';

class BookAppoitmentConfirmationPopUp extends StatelessWidget {
  final String title;
  final DateTime appintmentDateTime;
  final int appointmentId;
  final String doctorName;
  final int idDoctor;
  final String doctorImage;
  final Member member;

  const BookAppoitmentConfirmationPopUp({
    super.key,
    required this.title,
    required this.appintmentDateTime,
    required this.member,
    required this.appointmentId,
    required this.doctorName,
    required this.idDoctor,
    required this.doctorImage,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  splashRadius: 15,
                  style: IconButton.styleFrom(minimumSize: const Size(0, 0)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close, color: AppColors.black),
                ),
              ],
            ),
            Text(title, style: AppTextStyles.extraLargeRobotoSemiBold),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('On ', style: AppTextStyles.largeRobotoNormal),
                Text(
                  DateFormat('dd EEE yyyy ').format(appintmentDateTime),
                  style: AppTextStyles.largeSemiBoldRoboto,
                ),
                const Text('at ', style: AppTextStyles.largeRobotoNormal),
                Text(
                  DateFormat.jm().format(appintmentDateTime),
                  style: AppTextStyles.largeSemiBoldRoboto,
                ),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: SizedBox(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          doctorName,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: AppTextStyles.bodyLargeRobotoSemiBold,
                        ),
                        const SizedBox(height: 5),
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(doctorImage),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text('For', style: AppTextStyles.largeRobotoNormal),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        member.name,
                        style: AppTextStyles.bodyLargeRobotoSemiBold,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 5),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: member.profileImage == null
                            ? AppColors.orange
                            : null,
                        backgroundImage: member.profileImage != null
                            ? NetworkImage(
                                '${ConstantUrls.memberImageUrl}/${member.id}//${member.profileImage}',
                              )
                            : null,
                        child: member.profileImage == null
                            ? Text(
                                member.name[0],
                                style: AppTextStyles.subHeaddingSemiBoldRoboto
                                    .copyWith(
                                      fontSize: 18,
                                      color: AppColors.white,
                                    ),
                              )
                            : null,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AlertActiveOutlinedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  title: 'CANCEL',
                ),
                AlertActiveElevatedButton(
                  onPressed: () {
                    if (appointmentId == 0) {
                      context.read<BookAppointmentBloc>().add(
                        BookNewAppointment(
                          appointmentDateTime: appintmentDateTime,
                          idDoctor: idDoctor,
                          idMember: member.id,
                          mobileNo: context
                              .read<UserBloc>()
                              .state
                              .user!
                              .mobileNumber,
                          token: context
                              .read<UserBloc>()
                              .state
                              .user!
                              .accessToken,
                        ),
                      );
                    } else {
                      context.read<BookAppointmentBloc>().add(
                        ResheduleAppointment(
                          idAppointment: appointmentId,
                          appointmentDateTime: appintmentDateTime,
                          token: context
                              .read<UserBloc>()
                              .state
                              .user!
                              .accessToken,
                        ),
                      );
                    }
                    Navigator.pop(context);
                  },
                  title: 'CONFIRM',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
