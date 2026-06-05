part of 'reports_bloc.dart';

@freezed
class ReportsState with _$ReportsState {
  const factory ReportsState(
      {required bool isFetchingReports,
      required bool isFetchingFailed,
      required bool isFetchingSuccess,
      required ErrorModel error,
      required int selectedMemberId,
      required List<ReportModel> reports}) = _ReportsState;
  factory ReportsState.initial() => ReportsState(
      isFetchingReports: false,
      isFetchingFailed: false,
      isFetchingSuccess: false,
      reports: [],
      error: ErrorModel(message: ''),
      selectedMemberId: 0);
}
