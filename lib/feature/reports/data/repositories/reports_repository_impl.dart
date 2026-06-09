import 'package:dartz/dartz.dart';
import 'package:patient_portal/feature/reports/data/datasources/reports_remote_data_source.dart';
import 'package:patient_portal/feature/reports/data/models/report_file_model.dart';
import 'package:patient_portal/feature/reports/data/models/report_model.dart';
import 'package:patient_portal/feature/reports/domain/repositories/reports_repository.dart';
import 'package:patient_portal/feature/reports/domain/usecases/params/reports_params.dart';
import 'package:patient_portal/resources/error_model.dart';

class ReportsRepositoryImpl implements ReportsRepository {
  final ReportsRemoteDataSource remoteDataSource;

  ReportsRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<ErrorModel, List<ReportModel>>> getReports(
    ReportsParams params,
  ) {
    return remoteDataSource.getReports(params);
  }

  @override
  Future<Either<ErrorModel, ReportFileModel>> downloadReport(
    ReportsParams params,
  ) {
    return remoteDataSource.downloadReport(params);
  }
}
