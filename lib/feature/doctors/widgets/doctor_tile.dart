import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:patient_portal/feature/book_appointment/helpers/book_appointment_screen_helpers.dart';
import 'package:patient_portal/feature/doctors/models/doctor_model/doctor_model.dart';
import 'package:patient_portal/resources/dimens.dart';
import 'package:patient_portal/resources/helpers.dart';
import 'package:patient_portal/route/route_constants.dart';

import '../../../resources/app_colors.dart';
import '../../../resources/app_text_styles.dart';
import '../../../resources/common_widgets.dart/active_button.dart';
import '../../../resources/urls.dart';

class DoctorTile extends StatelessWidget {
  final DoctorModel doctor;
  const DoctorTile({
    Key? key,
    required this.doctor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          foregroundColor: AppColors.textFormFIeldBagroundColor),
      onPressed: () {},
      child: Row(
        children: [
          Expanded(
              child: LayoutBuilder(
                  builder: (context, constraints) => ClipRRect(
                        borderRadius: const BorderRadius.horizontal(
                            left: Radius.circular(5)),
                        child: Image.network(
                          '${ConstantUrls.doctorImageUrl}/${doctor.idDoctor}/${doctor.doctorImage}',
                          fit: BoxFit.fill,
                          loadingBuilder: (context, child, loadingProgress) =>
                              AppHelpers.imageLoadingIndicator(
                                  context, child, loadingProgress),
                          errorBuilder: ((context, error, stackTrace) {
                            return SvgPicture.asset(
                              'assets/images/doctor_image_loading_failed_image.svg',
                              fit: BoxFit.fill,
                            );
                          }),
                        ),
                      ))),
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
                            doctor.doctorSpecility,
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
                            style: AppTextStyles.bodySmallRobotoNormal
                                .copyWith(color: AppColors.textDark),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ActiveButton(
                    child: Text('Book',
                        style: AppTextStyles.bodyLargeRobotoBold
                            .copyWith(color: AppColors.white)),
                    onPressed: () {
                      BookAppointmentScreenHelpers
                          .selectedMemberNotifier.value = null;
                      BookAppointmentScreenHelpers.createDateList();
                      BookAppointmentScreenHelpers.selectedDateNotifier.value =
                          BookAppointmentScreenHelpers.dateList[0];
                      Navigator.of(context).pushNamed(
                          RouteConstants.bookAppointmentScreen,
                          arguments: {
                            'doctor_name': doctor.doctorName,
                            'id_doctor': doctor.idDoctor,
                            'doctor_image':
                                '${ConstantUrls.doctorImageUrl}/${doctor.idDoctor}/${doctor.doctorImage}',
                            'appointment_id': 0
                          });
                    },
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
