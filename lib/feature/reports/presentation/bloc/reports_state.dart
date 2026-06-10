part of 'reports_bloc.dart';

@freezed
sealed class ReportsState with _$ReportsState {
  const factory ReportsState({
    required bool isFetchingReports,
    required bool isFetchingFailed,
    required bool isFetchingSuccess,
    required ReportFile? report,
    required bool isRepoertSaving,
    required bool isReportSavingFailed,
    required bool isReportSavingSucces,
    required ErrorModel error,
    required int selectedMemberId,
    required List<Report> reports,
  }) = _ReportsState;

  factory ReportsState.initial() => ReportsState(
    isFetchingReports: false,
    isFetchingFailed: false,
    isFetchingSuccess: false,
    report: null,
    isRepoertSaving: false,
    isReportSavingFailed: false,
    isReportSavingSucces: false,
    reports: [],
    error: ErrorModel(message: ''),
    selectedMemberId: 0,
  );
}
