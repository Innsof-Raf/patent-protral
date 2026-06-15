import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/feature/profile/domain/entities/user.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/feature/reports/domain/usecases/params/reports_params.dart';
import 'package:patient_portal/feature/reports/presentation/bloc/reports_bloc.dart';
import 'package:patient_portal/feature/reports/presentation/widgets/report_tile.dart';
import 'package:patient_portal/gen/assets.gen.dart';

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
    final User user = context.read<UserBloc>().state.user!;
    context.read<ReportsBloc>().add(
      GetReports(
        params: ReportsParams.getReports(
          memberId: 0,
          token: user.accessToken,
          mobileNumber: user.mobileNumber,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: BlocBuilder<ReportsBloc, ReportsState>(
          builder: (context, state) {
            return state.isFetchingReports
                ? LayoutBuilder(
                    builder: (context, constraints) => Center(
                      child: Image.asset(
                        Assets.gifImages.ripple02.path,
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
