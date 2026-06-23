import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    final theme = Theme.of(context);
    final bool isAvailable = url != null && url!.isNotEmpty;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: isAvailable
            ? () {
                context.read<ReportsBloc>().add(const ClearReport());
                context.router.push(
                  ReportRoute(
                    pdfUrl: '${ConstantUrls.baseUrl}$url',
                    consultedDateTime: consultedDateTime,
                    doctorName: doctorName,
                  ),
                );
              }
            : null,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          constraints: const BoxConstraints(minWidth: 72),
          decoration: BoxDecoration(
            color: isAvailable
                ? theme.colorScheme.primaryContainer.withValues(alpha: 0.4)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: isAvailable
                  ? theme.colorScheme.primary.withValues(alpha: 0.3)
                  : theme.colorScheme.outlineVariant.withValues(alpha: 0.6),
              width: 1.2,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                isAvailable
                    ? Icons.description_outlined
                    : Icons.lock_outline_rounded,
                size: 14,
                color: isAvailable
                    ? theme.colorScheme.primary
                    : theme.colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
              ),
              const SizedBox(width: 6),
              Text(
                title,
                style: AppTextStyles.largeSemiBoldRoboto.copyWith(
                  fontWeight: isAvailable ? FontWeight.bold : FontWeight.w600,
                  color: isAvailable
                      ? theme.colorScheme.primary
                      : theme.colorScheme.onSurfaceVariant.withValues(
                          alpha: 0.6,
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
