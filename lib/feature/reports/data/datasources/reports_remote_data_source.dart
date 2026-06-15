import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:patient_portal/core/resources/api_agent.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
import 'package:patient_portal/core/resources/constant_messages.dart';
import 'package:patient_portal/core/resources/error_model.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/feature/reports/data/models/report_file_model.dart';
import 'package:patient_portal/feature/reports/data/models/report_model.dart';
import 'package:patient_portal/feature/reports/domain/usecases/params/reports_params.dart';

abstract class ReportsRemoteDataSource {
  Future<Either<ErrorModel, List<ReportModel>>> getReports(
    ReportsParams params,
  );

  Future<Either<ErrorModel, ReportFileModel>> downloadReport(
    ReportsParams params,
  );
}

class ReportsRemoteDataSourceImpl implements ReportsRemoteDataSource {
  final ApiAgent client;

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
      final data = serviceRequest(
        type: 'PP0016',
        content: {
          'id_customer': getReportsParams.memberId,
          'mobile_no': getReportsParams.mobileNumber,
          'status': 'ALL',
        },
      );
      final response = await client.post(
        url: ConstantUrls.serviceUrl,
        body: data,
        token: getReportsParams.token,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List responseList = decodeResponseData(response.data);
        final List<ReportModel> conseltationsList = [];
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
        url: downloadReportParams.url,
        responseType: ResponseType.bytes,
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
