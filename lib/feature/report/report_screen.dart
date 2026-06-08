import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/resources/app_colors.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../resources/app_text_styles.dart';
import 'bloc/report_bloc.dart';
import 'widgets/report_app_bar.dart';

class ReportScreen extends StatelessWidget {
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
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ReportBloc>().add(StroeRport(url: pdfUrl));
    });
    return Scaffold(
      backgroundColor: AppColors.lightGray,
      appBar: ReportAppBar(
        doctorName: doctorName,
        consultaionDateTime: consultedDateTime,
        documentUrl: pdfUrl,
      ),
      body: BlocBuilder<ReportBloc, ReportState>(
        builder: (context, state) {
          return state.isRepoertSaving
              ? LayoutBuilder(
                  builder: (context, constraints) => Center(
                    child: Image.asset(
                      'assets/gif_images/Ripple-0 2.gif',
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
                  state.report!,
                  pageSpacing: 10,
                  controller: pdfController,
                  canShowScrollHead: false,
                );
        },
      ),
    );
  }
}
