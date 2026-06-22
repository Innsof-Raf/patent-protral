import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/feature/reports/domain/entities/report.dart';

import 'test_report_button.dart';

class MyReportTile extends StatelessWidget {
  final Report report;
  const MyReportTile({super.key, required this.report});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

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
                Assets.icons.pdfIcon.path,
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
                      style: theme.textTheme.bodyLarge?.copyWith(
                        color: theme.colorScheme.onSurface,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "Consulted on : ${DateFormat('dd/MM/yyyy  |  ').add_jm().format(report.appointmentDate)}",
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
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
