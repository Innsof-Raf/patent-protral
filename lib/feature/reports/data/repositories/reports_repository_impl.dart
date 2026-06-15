import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/resources/error_model.dart';
import 'package:patient_portal/feature/reports/data/datasources/reports_remote_data_source.dart';
import 'package:patient_portal/feature/reports/domain/entities/report.dart';
import 'package:patient_portal/feature/reports/domain/entities/report_file.dart';
import 'package:patient_portal/feature/reports/domain/repositories/reports_repository.dart';
import 'package:patient_portal/feature/reports/domain/usecases/params/reports_params.dart';

class ReportsRepositoryImpl implements ReportsRepository {
  final ReportsRemoteDataSource remoteDataSource;

  ReportsRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<ErrorModel, List<Report>>> getReports(
    ReportsParams params,
  ) async {
    final result = await remoteDataSource.getReports(params);
    return result.map(
      (models) => models.map((model) => model.toEntity()).toList(),
    );
  }

  @override
  Future<Either<ErrorModel, ReportFile>> downloadReport(
    ReportsParams params,
  ) async {
    final result = await remoteDataSource.downloadReport(params);
    return result.map((model) => model.toEntity());
  }
}
