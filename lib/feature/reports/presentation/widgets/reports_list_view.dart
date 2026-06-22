import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/feature/reports/domain/entities/report.dart';
import 'package:patient_portal/feature/reports/presentation/widgets/report_tile.dart';

class ReportsListView extends StatelessWidget {
  final List<Report> reports;

  const ReportsListView({super.key, required this.reports});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: reports.length,
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 100),
      physics: const BouncingScrollPhysics(),
      separatorBuilder: (context, index) => const Gap(16),
      itemBuilder: (context, index) {
        return MyReportTile(report: reports[index]);
      },
    );
  }
}
