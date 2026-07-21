import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/reports/domain/entities/report_file.dart';

part 'generated/report_file_model.freezed.dart';

@freezed
sealed class ReportFileModel with _$ReportFileModel {
  const ReportFileModel._();

  const factory ReportFileModel({required Uint8List bytes}) = _ReportFileModel;

  ReportFile toEntity() => ReportFile(bytes: bytes);
}
