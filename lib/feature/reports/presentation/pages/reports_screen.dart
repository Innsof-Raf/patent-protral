import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_empty_state.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_error_view.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_loading_view.dart';
import 'package:patient_portal/feature/profile/domain/entities/user.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/feature/reports/domain/usecases/params/reports_params.dart';
import 'package:patient_portal/feature/reports/presentation/bloc/reports_bloc.dart';
import 'package:patient_portal/feature/reports/presentation/widgets/reports_list_view.dart';

@RoutePage(name: 'ReportsRoute')
class ReportsScreen extends StatefulWidget {
  const ReportsScreen({super.key});

  @override
  State<ReportsScreen> createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  @override
  void initState() {
    super.initState();
    _fetchReports();
  }

  void _fetchReports() {
    final User? user = context.read<UserBloc>().state.user;
    if (user == null) return;

    context.read<ReportsBloc>().add(
      GetReports(
        params: ReportsParams.getReports(
          memberId: context.read<ReportsBloc>().state.selectedMemberId,
          token: user.accessToken,
          mobileNumber: user.mobileNumber,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      body: BlocBuilder<ReportsBloc, ReportsState>(
        builder: (context, state) {
          if (state.isFetchingReports) {
            return const CommonLoadingView();
          }

          if (state.isFetchingFailed) {
            return CommonErrorView(
              title: AppStaticTexts.unableToLoadReports,
              message: state.error.message,
              onRetry: _fetchReports,
            );
          }

          if (state.reports.isEmpty) {
            return CommonEmptyState(
              title: AppStaticTexts.noReportsAvailable,
              description: AppStaticTexts.noReportsMessage,
              icon: Icons.assignment_outlined,
              actionLabel: AppStaticTexts.refresh,
              onAction: _fetchReports,
            );
          }

          return RefreshIndicator(
            onRefresh: () async => _fetchReports(),
            child: ReportsListView(reports: state.reports),
          );
        },
      ),
    );
  }
}
