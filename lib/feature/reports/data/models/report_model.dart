import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/report_model.freezed.dart';
part 'generated/report_model.g.dart';

@freezed
sealed class ReportModel with _$ReportModel {
  const factory ReportModel({
    @JsonKey(name: "id_cons") required int idConseltation,
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "ID_CUSTOMER") required int memberId,
    @JsonKey(name: "employee_name") required String doctorName,
    @JsonKey(name: "speciality") required String departmentName,
    @JsonKey(name: "appmnt_dttm") required DateTime appointmentDate,
    @JsonKey(name: "appmnt_time") required String appointmentTime,
    @JsonKey(name: "labreport_url") @Default(null) String? labPdfUrl,
    @JsonKey(name: "xrayreport_url") @Default(null) String? xRayPdfUrl,
    @JsonKey(name: "ussreport_url") @Default(null) String? ussPdfUrl,
    @JsonKey(name: "ct_url") @Default(null) String? ctPdfUrl,
  }) = _ReportModel;

  factory ReportModel.fromJson(Map<String, dynamic> json) =>
      _$ReportModelFromJson(json);
}
