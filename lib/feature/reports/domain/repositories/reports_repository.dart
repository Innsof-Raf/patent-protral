import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:patient_portal/feature/reports/data/models/report_model.dart';
import 'package:patient_portal/feature/reports/domain/usecases/params/reports_params.dart';
import 'package:patient_portal/resources/error_model.dart';

abstract class ReportsRepository {
  Future<Either<ErrorModel, List<ReportModel>>> getReports(
    ReportsParams params,
  );

  Future<Either<ErrorModel, Uint8List>> downloadReport(ReportsParams params);
}
