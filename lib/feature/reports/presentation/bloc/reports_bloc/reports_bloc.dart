import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/reports/data/models/report_model.dart';
import 'package:patient_portal/feature/reports/domain/usecases/download_report_usecase.dart';
import 'package:patient_portal/feature/reports/domain/usecases/get_reports_usecase.dart';
import 'package:patient_portal/feature/reports/domain/usecases/params/reports_params.dart';
import 'package:patient_portal/resources/error_model.dart';

part 'reports_event.dart';
part 'reports_state.dart';
part 'generated/reports_bloc.freezed.dart';

class ReportsBloc extends Bloc<ReportsEvent, ReportsState> {
  final GetReportsUseCase getReportsUseCase;
  final DownloadReportUseCase downloadReportUseCase;

  ReportsBloc({
    required this.getReportsUseCase,
    required this.downloadReportUseCase,
  }) : super(ReportsState.initial()) {
    on<GetReports>((event, emit) async {
      final getReportsParams = event.params.maybeMap(
        getReports: (value) => value,
        orElse: () => throw Exception('Invalid reports params'),
      );
      emit(
        state.copyWith(
          selectedMemberId: getReportsParams.memberId,
          isFetchingReports: true,
          isFetchingSuccess: false,
          isFetchingFailed: false,
        ),
      );
      final Either<ErrorModel, List<ReportModel>> reportsFetchingOptions =
          await getReportsUseCase(event.params);
      reportsFetchingOptions.fold(
        (error) => emit(
          state.copyWith(
            isFetchingReports: false,
            isFetchingFailed: true,
            error: error,
          ),
        ),
        (reports) => emit(
          state.copyWith(
            isFetchingReports: false,
            isFetchingSuccess: true,
            reports: reports,
          ),
        ),
      );
    });
    on<StroeRport>((event, emit) async {
      emit(
        state.copyWith(
          isRepoertSaving: true,
          isReportSavingFailed: false,
          isReportSavingSucces: false,
        ),
      );
      final Either<ErrorModel, Uint8List> reportSavingResponses =
          await downloadReportUseCase(event.params);
      reportSavingResponses.fold(
        (error) => emit(
          state.copyWith(
            isRepoertSaving: false,
            isReportSavingFailed: true,
            error: error,
          ),
        ),
        (file) => emit(
          state.copyWith(
            isRepoertSaving: false,
            isReportSavingSucces: true,
            report: file,
          ),
        ),
      );
    });
    on<ClearReport>((event, emit) {
      emit(state.copyWith(report: null));
    });
  }
}
