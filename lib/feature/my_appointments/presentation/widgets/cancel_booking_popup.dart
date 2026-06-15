import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/feature/my_appointments/domain/usecases/params/my_appointments_params.dart';
import 'package:patient_portal/feature/my_appointments/presentation/bloc/my_appointments_bloc/my_appointments_bloc.dart';
import 'package:patient_portal/feature/profile/domain/entities/member.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

class CancelBookingPopUp extends StatelessWidget {
  final int appointmentId;
  final DateTime appintmentDateTime;
  final String doctorName;
  final Member member;
  final String doctorImage;

  const CancelBookingPopUp({
    super.key,
    required this.appointmentId,
    required this.appintmentDateTime,
    required this.doctorName,
    required this.member,
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
            const Text(
              'Cancel Booking',
              style: AppTextStyles.extraLargeRobotoSemiBold,
            ),
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
                                '${ConstantUrls.memberImageUrl}/${member.id}/${member.profileImage}',
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
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                  minimumSize: const Size(0, 0),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  backgroundColor: AppColors.vilot,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                onPressed: () {
                  Navigator.pop(context);
                  context.read<MyAppointmentsBloc>().add(
                    CancelAppointment(
                      params: MyAppointmentsParams.cancelAppointment(
                        idAppointment: appointmentId,
                        token: context.read<UserBloc>().state.user!.accessToken,
                      ),
                    ),
                  );
                },
                child: Text(
                  'CONFIRM',
                  style: AppTextStyles.bodyLargeRobotoBold.copyWith(
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
