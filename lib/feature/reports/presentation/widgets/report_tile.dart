import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_helpers/string_extensions.dart';
import 'package:patient_portal/feature/reports/domain/entities/report.dart';

import 'test_report_button.dart';

class MyReportTile extends StatelessWidget {
  final Report report;
  const MyReportTile({super.key, required this.report});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: theme.colorScheme.outlineVariant.withValues(alpha: 0.5),
        ),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.shadow.withValues(alpha: 0.04),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                _buildIcon(theme),
                const Gap(16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${context.lang.patient}: ${report.customerName.trim().isEmpty ? context.lang.unknown : report.customerName.toTitleCase()}',
                        style: AppTextStyles.bodyTextRoboto.copyWith(
                          color: theme.colorScheme.primary,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const Gap(2),
                      Text(
                        report.doctorName.toTitleCase(),
                        style: AppTextStyles.subHeadingSemiBoldRoboto.copyWith(
                          fontWeight: FontWeight.w800,
                          color: theme.colorScheme.onSurface,
                          letterSpacing: -0.5,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const Gap(6),
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_month_outlined,
                            size: 14,
                            color: theme.colorScheme.primary.withValues(
                              alpha: 0.7,
                            ),
                          ),
                          const Gap(4),
                          Text(
                            DateFormat(
                              'dd MMM yyyy',
                            ).format(report.appointmentDate),
                            style: AppTextStyles.bodyTextRoboto.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Gap(12),
                          Icon(
                            Icons.schedule_rounded,
                            size: 14,
                            color: theme.colorScheme.onSurfaceVariant
                                .withValues(alpha: 0.7),
                          ),
                          const Gap(4),
                          Text(
                            DateFormat(
                              'hh:mm a',
                            ).format(report.appointmentDate),
                            style: AppTextStyles.bodyTextRoboto.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainerHighest.withValues(
                alpha: 0.2,
              ),
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
              border: Border(
                top: BorderSide(
                  color: theme.colorScheme.outlineVariant.withValues(
                    alpha: 0.5,
                  ),
                ),
              ),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: [
                  _buildReportAction(
                    context,
                    url: report.labPdfUrl,
                    title: context.lang.lab,
                  ),
                  const Gap(8),
                  _buildReportAction(
                    context,
                    url: report.xRayPdfUrl,
                    title: context.lang.xRay,
                  ),
                  const Gap(8),
                  _buildReportAction(
                    context,
                    url: report.ussPdfUrl,
                    title: context.lang.uss,
                  ),
                  const Gap(8),
                  _buildReportAction(
                    context,
                    url: report.ctPdfUrl,
                    title: context.lang.ctScan,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIcon(ThemeData theme) {
    return Container(
      height: 48,
      width: 48,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            theme.colorScheme.primaryContainer.withValues(alpha: 0.6),
            theme.colorScheme.primaryContainer.withValues(alpha: 0.2),
          ],
        ),
        borderRadius: BorderRadius.circular(14),
      ),
      child: SvgPicture.asset(Assets.icons.pdfIcon.path),
    );
  }

  Widget _buildReportAction(
    BuildContext context, {
    required String? url,
    required String title,
  }) {
    return TestReportButton(
      url: url,
      memberId: report.memberId,
      title: title,
      consultedDateTime: report.appointmentDate,
      doctorName: report.doctorName,
    );
  }
}
