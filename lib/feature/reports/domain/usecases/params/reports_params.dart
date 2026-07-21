import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/reports_params.freezed.dart';
part 'generated/reports_params.g.dart';

@freezed
sealed class ReportsParams with _$ReportsParams {
  const factory ReportsParams.getReports({
    @JsonKey(name: 'id_customer') required int memberId,
    @JsonKey(includeToJson: false) required String token,
    @JsonKey(name: 'mobile_no') required String mobileNumber,
    @Default('ALL') String status,
  }) = GetReportsParams;

  const factory ReportsParams.downloadReport({
    @JsonKey(includeToJson: false) required String url,
  }) = DownloadReportParams;

  factory ReportsParams.fromJson(Map<String, dynamic> json) =>
      _$ReportsParamsFromJson(json);
}
