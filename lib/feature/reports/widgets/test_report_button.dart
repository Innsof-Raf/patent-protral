import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/feature/profile/bloc/user_bloc.dart';
import 'package:patient_portal/feature/report/bloc/report_bloc.dart';
import 'package:patient_portal/resources/app_colors.dart';
import 'package:patient_portal/resources/app_text_styles.dart';
import 'package:patient_portal/resources/urls.dart';
import 'package:patient_portal/route/route_constants.dart';

class TestReportButton extends StatelessWidget {
  final String? url;
  final String title;
  final String doctorName;
  final int memberId;
  final DateTime consultedDateTime;
  const TestReportButton({
    super.key,
    required this.url,
    required this.title,
    required this.doctorName,
    required this.consultedDateTime,
    required this.memberId,
  });

  @override
  Widget build(BuildContext context) {
    return url != null
        ? ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: 0,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 22),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                minimumSize: const Size(0, 0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                )),
            onPressed: () {
              context.read<ReportBloc>().add(const ClearReport());
              Navigator.of(context)
                  .pushNamed(RouteConstants.reportScreen, arguments: {
                'pdf_url': '${ConstantUrls.baseUrl}$url',
                'consulted_date_time': consultedDateTime,
                'doctor_name': doctorName,
              });
            },
            child: Text(
              title,
              style: AppTextStyles.bodyTextBoldRoboto
                  .copyWith(color: AppColors.white),
            ),
          )
        : OutlinedButton(
            style: OutlinedButton.styleFrom(
                elevation: 0,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 22),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                minimumSize: const Size(0, 0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                side: BorderSide(
                    width: .5,
                    strokeAlign: StrokeAlign.inside,
                    color: AppColors.vilot.withOpacity(.3))),
            onPressed: () {},
            child: Text(
              title,
              style: AppTextStyles.bodyTextBoldRoboto
                  .copyWith(color: AppColors.vilot.withOpacity(.3)),
            ));
  }
}
