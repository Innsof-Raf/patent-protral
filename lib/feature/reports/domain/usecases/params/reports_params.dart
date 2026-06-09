import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/reports_params.freezed.dart';

@freezed
sealed class ReportsParams with _$ReportsParams {
  const factory ReportsParams.getReports({
    required int memberId,
    required String token,
    required String mobileNumber,
  }) = GetReportsParams;

  const factory ReportsParams.downloadReport({required String url}) =
      DownloadReportParams;
}
