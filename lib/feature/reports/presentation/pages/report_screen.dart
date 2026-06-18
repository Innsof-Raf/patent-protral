import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_error_view.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_loading_view.dart';
import 'package:patient_portal/feature/reports/domain/usecases/params/reports_params.dart';
import 'package:patient_portal/feature/reports/presentation/bloc/reports_bloc.dart';
import 'package:patient_portal/feature/reports/presentation/widgets/report_app_bar.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

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
    _downloadReport();
  }

  void _downloadReport() {
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
              ? const CommonLoadingView()
              : state.isReportSavingFailed
              ? CommonErrorView(
                  title: 'Unable to open report',
                  message: state.error.message,
                  onRetry: _downloadReport,
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
