import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:patient_portal/feature/reports/data/models/report_file_model.dart';
import 'package:patient_portal/feature/reports/data/models/report_model.dart';
import 'package:patient_portal/feature/reports/domain/usecases/params/reports_params.dart';
import 'package:patient_portal/core/resources/constant_messages.dart';
import 'package:patient_portal/core/resources/error_model.dart';
import 'package:patient_portal/core/resources/urls.dart';

abstract class ReportsRemoteDataSource {
  Future<Either<ErrorModel, List<ReportModel>>> getReports(
    ReportsParams params,
  );

  Future<Either<ErrorModel, ReportFileModel>> downloadReport(
    ReportsParams params,
  );
}

class ReportsRemoteDataSourceImpl implements ReportsRemoteDataSource {
  final Dio client;

  ReportsRemoteDataSourceImpl({required this.client});

  @override
  Future<Either<ErrorModel, List<ReportModel>>> getReports(
    ReportsParams params,
  ) async {
    final getReportsParams = params.maybeMap(
      getReports: (value) => value,
      orElse: () => throw Exception('Invalid reports params'),
    );
    try {
      final Map<String, dynamic> data = {
        "CONTENT": jsonEncode({
          "id_customer": "1299",
          "mobile_no": "9659858387",
        }),
        "TYPE": "PP0016",
      };
      final response = await client.post(
        ConstantUrls.serviceUrl,
        data: data,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            HttpHeaders.authorizationHeader: 'Bearer ${getReportsParams.token}',
          },
        ),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List responseList = response.data;
        List<ReportModel> conseltationsList = [];
        for (final raw in responseList) {
          conseltationsList.add(ReportModel.fromJson(raw));
        }

        return Right(conseltationsList);
      } else {
        return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        return Left(
          ErrorModel(message: ConstantMessages.connectionTimeOutFailureMessage),
        );
      } else if (e.error is SocketException) {
        return Left(
          ErrorModel(message: ConstantMessages.noNetworkErrorMessage),
        );
      }
      return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
    } catch (e) {
      return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
    }
  }

  @override
  Future<Either<ErrorModel, ReportFileModel>> downloadReport(
    ReportsParams params,
  ) async {
    final downloadReportParams = params.maybeMap(
      downloadReport: (value) => value,
      orElse: () => throw Exception('Invalid report download params'),
    );
    try {
      final response = await client.get<Uint8List>(
        downloadReportParams.url,
        options: Options(responseType: ResponseType.bytes),
      );

      if (response.data != null) {
        return Right(ReportFileModel(bytes: response.data!));
      } else {
        return Left(ErrorModel(message: 'Failed to download report'));
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        return Left(ErrorModel(message: ConstantMessages.tokenExpiredMessage));
      } else if (e.error is SocketException) {
        return Left(
          ErrorModel(message: ConstantMessages.noNetworkErrorMessage),
        );
      }
      return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
    } catch (e) {
      return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
    }
  }
}
