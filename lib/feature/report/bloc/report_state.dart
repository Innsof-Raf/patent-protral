part of 'report_bloc.dart';

@freezed
class ReportState with _$ReportState {
  const factory ReportState(
      {required Uint8List? report,
      required bool isRepoertSaving,
      required bool isReportSavingFailed,
      required ErrorModel error,
      required bool isReportSavingSucces}) = _ReportState;
  factory ReportState.initial() => ReportState(
      error: ErrorModel(message: ''),
      report: null,
      isRepoertSaving: false,
      isReportSavingFailed: false,
      isReportSavingSucces: false);
}
