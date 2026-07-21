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
    try {
      final models = await remoteDataSource.getReports(params);
      return Right(models.map((model) => model.toEntity()).toList());
    } catch (e) {
      return Left(
        ErrorModel(message: e.toString().replaceAll('ServerException: ', '')),
      );
    }
  }

  @override
  Future<Either<ErrorModel, ReportFile>> downloadReport(
    ReportsParams params,
  ) async {
    try {
      final model = await remoteDataSource.downloadReport(params);
      return Right(model.toEntity());
    } catch (e) {
      return Left(
        ErrorModel(message: e.toString().replaceAll('ServerException: ', '')),
      );
    }
  }
}
