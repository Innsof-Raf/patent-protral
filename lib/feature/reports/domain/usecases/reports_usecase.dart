import 'package:dartz/dartz.dart';
import 'package:patient_portal/feature/reports/data/models/report_file_model.dart';
import 'package:patient_portal/feature/reports/data/models/report_model.dart';
import 'package:patient_portal/feature/reports/domain/repositories/reports_repository.dart';
import 'package:patient_portal/feature/reports/domain/usecases/params/reports_params.dart';
import 'package:patient_portal/resources/error_model.dart';

class ReportsUseCase {
  final ReportsRepository repository;

  ReportsUseCase(this.repository);

  Future<Either<ErrorModel, List<ReportModel>>> getReports(
    ReportsParams params,
  ) {
    return repository.getReports(params);
  }

  Future<Either<ErrorModel, ReportFileModel>> downloadReport(
    ReportsParams params,
  ) {
    return repository.downloadReport(params);
  }
}
