import 'package:dartz/dartz.dart';
import 'package:patient_portal/feature/reports/data/models/report_model.dart';
import 'package:patient_portal/feature/reports/domain/repositories/reports_repository.dart';
import 'package:patient_portal/feature/reports/domain/usecases/params/reports_params.dart';
import 'package:patient_portal/resources/error_model.dart';

class GetReportsUseCase {
  final ReportsRepository repository;

  GetReportsUseCase(this.repository);

  Future<Either<ErrorModel, List<ReportModel>>> call(ReportsParams params) {
    return repository.getReports(params);
  }
}
