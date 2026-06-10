import 'dart:typed_data';
import 'package:patient_portal/feature/reports/domain/entities/report_file.dart';

class ReportFileModel {
  final Uint8List bytes;

  const ReportFileModel({required this.bytes});

  ReportFile toEntity() {
    return ReportFile(bytes: bytes);
  }
}
