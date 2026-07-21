import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/report_file.freezed.dart';

@freezed
sealed class ReportFile with _$ReportFile {
  const factory ReportFile({required Uint8List bytes}) = _ReportFile;
}
