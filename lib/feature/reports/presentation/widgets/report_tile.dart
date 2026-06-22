import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
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
                        report.doctorName,
                        style: theme.textTheme.titleMedium?.copyWith(
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
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Gap(12),
                          Icon(
                            Icons.schedule_rounded,
                            size: 14,
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                          const Gap(4),
                          Text(
                            DateFormat(
                              'hh:mm a',
                            ).format(report.appointmentDate),
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
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
            padding: const EdgeInsets.all(12),
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
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: [
                  _buildReportAction(
                    context,
                    url: report.labPdfUrl,
                    title: 'Lab',
                  ),
                  const Gap(8),
                  _buildReportAction(
                    context,
                    url: report.xRayPdfUrl,
                    title: 'X-Ray',
                  ),
                  const Gap(8),
                  _buildReportAction(
                    context,
                    url: report.ussPdfUrl,
                    title: 'USS',
                  ),
                  const Gap(8),
                  _buildReportAction(
                    context,
                    url: report.ctPdfUrl,
                    title: 'CT Scan',
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
