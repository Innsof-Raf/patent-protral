import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/reports/presentation/bloc/reports_bloc.dart';

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
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 22),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              minimumSize: const Size(0, 0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            onPressed: () {
              context.read<ReportsBloc>().add(const ClearReport());
              context.router.push(
                ReportRoute(
                  pdfUrl: '${ConstantUrls.baseUrl}$url',
                  consultedDateTime: consultedDateTime,
                  doctorName: doctorName,
                ),
              );
            },
            child: Text(
              title,
              style: AppTextStyles.bodyTextBoldRoboto.copyWith(
                color: AppColors.white,
              ),
            ),
          )
        : OutlinedButton(
            style: OutlinedButton.styleFrom(
              elevation: 0,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 22),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              minimumSize: const Size(0, 0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              side: BorderSide(
                width: .5,
                color: AppColors.vilot.withValues(alpha: .3),
              ),
            ),
            onPressed: () {},
            child: Text(
              title,
              style: AppTextStyles.bodyTextBoldRoboto.copyWith(
                color: AppColors.vilot.withValues(alpha: .3),
              ),
            ),
          );
  }
}
