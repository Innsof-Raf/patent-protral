import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/feature/reports/domain/usecases/params/reports_params.dart';
import 'package:patient_portal/feature/reports/presentation/bloc/reports_bloc.dart';
import 'package:patient_portal/feature/reports/presentation/widgets/report_app_bar.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:patient_portal/gen/assets.gen.dart';

@RoutePage(name: 'ReportRoute')
class ReportScreen extends StatefulWidget {
  static PdfViewerController pdfController = PdfViewerController();
  final String doctorName;

  final String pdfUrl;
  final DateTime consultedDateTime;
  const ReportScreen({
    super.key,
    required this.doctorName,
    required this.pdfUrl,
    required this.consultedDateTime,
  });

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ReportsBloc>().add(
      StroeRport(params: ReportsParams.downloadReport(url: widget.pdfUrl)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGray,
      appBar: ReportAppBar(
        doctorName: widget.doctorName,
        consultaionDateTime: widget.consultedDateTime,
        documentUrl: widget.pdfUrl,
      ),
      body: BlocBuilder<ReportsBloc, ReportsState>(
        builder: (context, state) {
          return state.isRepoertSaving
              ? LayoutBuilder(
                  builder: (context, constraints) => Center(
                    child: Image.asset(
                      Assets.gifImages.ripple02.path,
                      width: constraints.maxWidth * .3,
                    ),
                  ),
                )
              : state.isReportSavingFailed
              ? Center(
                  child: Text(
                    state.error.message,
                    style: AppTextStyles.largeRobotoNormal,
                  ),
                )
              : state.report == null
              ? const SizedBox()
              : SfPdfViewer.memory(
                  state.report!.bytes,
                  pageSpacing: 10,
                  controller: ReportScreen.pdfController,
                  canShowScrollHead: false,
                );
        },
      ),
    );
  }
}
