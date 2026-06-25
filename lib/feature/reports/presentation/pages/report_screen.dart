import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
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
    final String url = kDebugMode
        ? 'https://images.drlogy.com/assets/uploads/lab/pdf/CBC-test-report-format-example-sample-template-Drlogy-lab-report.pdf'
        : widget.pdfUrl;
    context.read<ReportsBloc>().add(
      StoreReport(params: ReportsParams.downloadReport(url: url)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final String url = kDebugMode
        ? 'https://images.drlogy.com/assets/uploads/lab/pdf/CBC-test-report-format-example-sample-template-Drlogy-lab-report.pdf'
        : widget.pdfUrl;

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: ReportAppBar(
        doctorName: widget.doctorName,
        consultaionDateTime: widget.consultedDateTime,
        documentUrl: url,
      ),
      body: BlocBuilder<ReportsBloc, ReportsState>(
        builder: (context, state) {
          return state.isReportSaving
              ? const CommonLoadingView()
              : state.isReportSavingFailed
              ? CommonErrorView(
                  title: AppStaticTexts.unableToOpenReport,
                  message: state.error.message,
                  onRetry: _downloadReport,
                )
              : state.report == null
              ? const SizedBox.shrink()
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
