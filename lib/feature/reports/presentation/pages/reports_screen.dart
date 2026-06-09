import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/feature/profile/data/models/user_model.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/feature/reports/domain/usecases/params/reports_params.dart';
import 'package:patient_portal/feature/reports/presentation/bloc/reports_bloc/reports_bloc.dart';
import 'package:patient_portal/feature/reports/presentation/widgets/report_tile.dart';
import 'package:patient_portal/resources/app_text_styles.dart';

class ReportsScreen extends StatelessWidget {
  const ReportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final UserModel user = context.read<UserBloc>().state.user!;
      context.read<ReportsBloc>().add(
        GetReports(
          params: ReportsParams.getReports(
            memberId: 0,
            token: user.accessToken,
            mobileNumber: user.mobileNumber,
          ),
        ),
      );
    });
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: BlocBuilder<ReportsBloc, ReportsState>(
          builder: (context, state) {
            return state.isFetchingReports
                ? LayoutBuilder(
                    builder: (context, constraints) => Center(
                      child: Image.asset(
                        'assets/gif_images/Ripple-0 2.gif',
                        width: constraints.maxWidth * .3,
                      ),
                    ),
                  )
                : state.isFetchingFailed
                ? Center(
                    child: Text(
                      state.error.message,
                      style: AppTextStyles.largeRobotoNormal,
                    ),
                  )
                : state.reports.isEmpty
                ? const Center(
                    child: Text(
                      'No Reports Available',
                      style: AppTextStyles.largeRobotoNormal,
                    ),
                  )
                : ListView.separated(
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 10),
                    padding: const EdgeInsets.only(top: 10, bottom: 90),
                    shrinkWrap: true,
                    itemCount: state.reports.length,
                    itemBuilder: (context, index) {
                      return MyReportTile(report: state.reports[index]);
                    },
                  );
          },
        ),
      ),
    );
  }
}
