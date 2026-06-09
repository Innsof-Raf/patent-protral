import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:patient_portal/feature/reports/domain/repositories/reports_repository.dart';
import 'package:patient_portal/feature/reports/domain/usecases/params/reports_params.dart';
import 'package:patient_portal/resources/error_model.dart';

class DownloadReportUseCase {
  final ReportsRepository repository;

  DownloadReportUseCase(this.repository);

  Future<Either<ErrorModel, Uint8List>> call(ReportsParams params) {
    return repository.downloadReport(params);
  }
}
