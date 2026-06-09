import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/feature/reports/data/models/report_model.dart';

import 'package:patient_portal/resources/app_colors.dart';
import 'package:patient_portal/resources/app_text_styles.dart';
import 'test_report_button.dart';

class MyReportTile extends StatelessWidget {
  final ReportModel report;
  const MyReportTile({super.key, required this.report});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        elevation: 0,
        foregroundColor: AppColors.textLight,
        padding: const EdgeInsets.all(15),
        side: const BorderSide(color: AppColors.borderColor, width: 0.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
      onPressed: () {},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                "assets/icons/pdf_icon.svg",
                height: 25,
                width: 21,
              ),
              const SizedBox(width: 15),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      report.doctorName,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.bodyTextRobotoSemiBold.copyWith(
                        color: AppColors.textDark,
                      ),
                    ),
                    Text(
                      "Consulted on : ${DateFormat('dd/MM/yyyy  |  ').add_jm().format(report.appointmentDate)}",
                      style: AppTextStyles.bodySmallInterNormal,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TestReportButton(
                url: report.labPdfUrl,
                memberId: report.memberId,
                title: 'Lab',
                consultedDateTime: report.appointmentDate,
                doctorName: report.doctorName,
              ),
              TestReportButton(
                url: report.xRayPdfUrl,
                memberId: report.memberId,
                title: 'X-Ray',
                consultedDateTime: report.appointmentDate,
                doctorName: report.doctorName,
              ),
              TestReportButton(
                url: report.ussPdfUrl,
                memberId: report.memberId,
                title: 'Uss',
                consultedDateTime: report.appointmentDate,
                doctorName: report.doctorName,
              ),
              TestReportButton(
                url: report.ctPdfUrl,
                memberId: report.memberId,
                title: 'CT',
                consultedDateTime: report.appointmentDate,
                doctorName: report.doctorName,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
