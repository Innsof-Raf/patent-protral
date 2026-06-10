import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/report.freezed.dart';

@freezed
sealed class Report with _$Report {
  const factory Report({
    required int idConseltation,
    required int id,
    required int memberId,
    required String doctorName,
    required String departmentName,
    required DateTime appointmentDate,
    required String appointmentTime,
    String? labPdfUrl,
    String? xRayPdfUrl,
    String? ussPdfUrl,
    String? ctPdfUrl,
  }) = _Report;
}
