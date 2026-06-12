import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/active_button.dart';
import 'package:patient_portal/core/resources/dimens.dart';
import 'package:patient_portal/core/resources/helpers.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/doctors/domain/entities/doctor.dart';

import '../../../book_appointment/presentation/widgets/book_appointment_screen_helpers.dart';

class DoctorTile extends StatelessWidget {
  final Doctor doctor;
  const DoctorTile({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        foregroundColor: AppColors.textFormFIeldBagroundColor,
      ),
      onPressed: () {},
      child: Row(
        children: [
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) => ClipRRect(
                borderRadius: const BorderRadius.horizontal(
                  left: Radius.circular(5),
                ),
                child: Image.network(
                  '${ConstantUrls.doctorImageUrl}/${doctor.idDoctor}/${doctor.doctorImage}',
                  fit: BoxFit.fill,
                  loadingBuilder: (context, child, loadingProgress) =>
                      AppHelpers.imageLoadingIndicator(
                        context,
                        child,
                        loadingProgress,
                      ),
                  errorBuilder: ((context, error, stackTrace) {
                    return SvgPicture.asset(
                      'assets/images/doctor_image_loading_failed_image.svg',
                      fit: BoxFit.fill,
                    );
                  }),
                ),
              ),
            ),
          ),
          Dimens.constWidth10,
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        doctor.doctorName,
                        style: AppTextStyles.bodyLargeRobotoSemiBold,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0.8),
                        child: Text(
                          doctor.doctorSpeciality,
                          style: AppTextStyles.bodySmallRobotoNormal,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset(
                              'assets/icons/experience_icon.svg',
                              height: 9.8,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 2.0),
                              child: Text(
                                '${doctor.experience} Years of Experience',
                                style: AppTextStyles.bodySmallRobotoNormal,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset(
                              'assets/icons/experience_icon.svg',
                              height: 9.8,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 2.0),
                              child: Text(
                                'QAR ${doctor.consultationFee}  Conseltation fee',
                                style: AppTextStyles.bodySmallRobotoNormal,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset(
                              'assets/icons/experience_icon.svg',
                              height: 9.8,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 2.0),
                              child: Text(
                                doctor.branch,
                                style: AppTextStyles.bodySmallRobotoNormal,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Text(
                          'Next Available At 10:00 AM 10/12/2022',
                          style: AppTextStyles.bodySmallRobotoNormal.copyWith(
                            color: AppColors.textDark,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ActiveButton(
                  child: Text(
                    'Book',
                    style: AppTextStyles.bodyLargeRobotoBold.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  onPressed: () {
                    BookAppointmentScreenHelpers.selectedMemberNotifier.value =
                        null;
                    BookAppointmentScreenHelpers.createDateList();
                    BookAppointmentScreenHelpers.selectedDateNotifier.value =
                        BookAppointmentScreenHelpers.dateList[0];
                    context.router.push(
                      BookAppointmentRoute(
                        doctorName: doctor.doctorName,
                        idDoctor: doctor.idDoctor,
                        doctorImage:
                            '${ConstantUrls.doctorImageUrl}/${doctor.idDoctor}/${doctor.doctorImage}',
                        appointmentId: 0,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
