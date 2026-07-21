import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/resources/error_model.dart';
import 'package:patient_portal/feature/reports/domain/entities/report.dart';
import 'package:patient_portal/feature/reports/domain/entities/report_file.dart';
import 'package:patient_portal/feature/reports/domain/repositories/reports_repository.dart';
import 'package:patient_portal/feature/reports/domain/usecases/params/reports_params.dart';

class ReportsUseCase {
  final ReportsRepository repository;

  ReportsUseCase(this.repository);

  Future<Either<ErrorModel, List<Report>>> getReports(ReportsParams params) {
    return repository.getReports(params);
  }

  Future<Either<ErrorModel, ReportFile>> downloadReport(ReportsParams params) {
    return repository.downloadReport(params);
  }
}
