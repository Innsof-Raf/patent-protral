import 'package:dartz/dartz.dart';
import 'package:patient_portal/feature/reports/domain/entities/report.dart';
import 'package:patient_portal/feature/reports/domain/entities/report_file.dart';
import 'package:patient_portal/feature/reports/domain/usecases/params/reports_params.dart';
import 'package:patient_portal/resources/error_model.dart';

abstract class ReportsRepository {
  Future<Either<ErrorModel, List<Report>>> getReports(ReportsParams params);

  Future<Either<ErrorModel, ReportFile>> downloadReport(ReportsParams params);
}
