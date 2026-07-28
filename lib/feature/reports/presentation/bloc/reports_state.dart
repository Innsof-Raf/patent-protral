part of 'reports_bloc.dart';

@freezed
sealed class ReportsState with _$ReportsState {
  const factory ReportsState({
    required bool isFetchingReports,
    required bool isFetchingFailed,
    required bool isFetchingSuccess,
    required bool isFetchingPrescriptions,
    required bool isFetchingPrescriptionsFailed,
    required bool isFetchingPrescriptionsSuccess,
    required ReportFile? report,
    required bool isReportSaving,
    required bool isReportSavingFailed,
    required bool isReportSavingSuccess,
    required ErrorModel error,
    required int selectedMemberId,
    required List<Report> reports,
    required List<Report> prescriptions,
  }) = _ReportsState;

  factory ReportsState.initial() => ReportsState(
    isFetchingReports: false,
    isFetchingFailed: false,
    isFetchingSuccess: false,
    isFetchingPrescriptions: false,
    isFetchingPrescriptionsFailed: false,
    isFetchingPrescriptionsSuccess: false,
    report: null,
    isReportSaving: false,
    isReportSavingFailed: false,
    isReportSavingSuccess: false,
    reports: [],
    prescriptions: [],
    error: ErrorModel(message: ''),
    selectedMemberId: 0,
  );
}
