import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/core/resources/error_model.dart';
import 'package:patient_portal/feature/reports/domain/entities/report.dart';
import 'package:patient_portal/feature/reports/domain/entities/report_file.dart';
import 'package:patient_portal/feature/reports/domain/usecases/params/reports_params.dart';
import 'package:patient_portal/feature/reports/domain/usecases/reports_usecase.dart';

part 'generated/reports_bloc.freezed.dart';
part 'reports_event.dart';
part 'reports_state.dart';

class ReportsBloc extends Bloc<ReportsEvent, ReportsState> {
  final ReportsUseCase reportsUseCase;

  ReportsBloc({required this.reportsUseCase}) : super(ReportsState.initial()) {
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
      final Either<ErrorModel, List<Report>> reportsFetchingOptions =
          await reportsUseCase.getReports(event.params);
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
      final Either<ErrorModel, ReportFile> reportSavingResponses =
          await reportsUseCase.downloadReport(event.params);
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
