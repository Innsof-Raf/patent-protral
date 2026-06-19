import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
import 'package:patient_portal/feature/reports/domain/entities/report.dart';

part 'generated/report_model.freezed.dart';
part 'generated/report_model.g.dart';

@freezed
sealed class ReportModel with _$ReportModel {
  const ReportModel._();

  const factory ReportModel({
    @JsonKey(name: 'id_cons', fromJson: intFromJson)
    required int idConseltation,
    @JsonKey(name: 'id', fromJson: intFromJson) required int id,
    @JsonKey(name: 'ID_CUSTOMER', fromJson: intFromJson) required int memberId,
    @JsonKey(name: 'employee_name', fromJson: stringFromJson)
    required String doctorName,
    @JsonKey(name: 'speciality', fromJson: stringFromJson)
    required String departmentName,
    @JsonKey(name: 'appmnt_dttm') required DateTime appointmentDate,
    @JsonKey(name: 'appmnt_time', fromJson: stringFromJson)
    required String appointmentTime,
    @JsonKey(name: 'labreport_url') String? labPdfUrl,
    @JsonKey(name: 'xrayreport_url') String? xRayPdfUrl,
    @JsonKey(name: 'ussreport_url') String? ussPdfUrl,
    @JsonKey(name: 'ct_url') String? ctPdfUrl,
  }) = _ReportModel;

  factory ReportModel.fromJson(Map<String, dynamic> json) =>
      _$ReportModelFromJson(json);

  Report toEntity() {
    return Report(
      idConseltation: idConseltation,
      id: id,
      memberId: memberId,
      doctorName: doctorName,
      departmentName: departmentName,
      appointmentDate: appointmentDate,
      appointmentTime: appointmentTime,
      labPdfUrl: labPdfUrl,
      xRayPdfUrl: xRayPdfUrl,
      ussPdfUrl: ussPdfUrl,
      ctPdfUrl: ctPdfUrl,
    );
  }
}
