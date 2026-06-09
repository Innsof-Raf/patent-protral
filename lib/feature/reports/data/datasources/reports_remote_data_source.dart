import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:patient_portal/feature/reports/data/models/report_model.dart';
import 'package:patient_portal/feature/reports/domain/usecases/params/reports_params.dart';
import 'package:patient_portal/resources/constant_messages.dart';
import 'package:patient_portal/resources/error_model.dart';
import 'package:patient_portal/resources/urls.dart';

abstract class ReportsRemoteDataSource {
  Future<Either<ErrorModel, List<ReportModel>>> getReports(
    ReportsParams params,
  );

  Future<Either<ErrorModel, Uint8List>> downloadReport(ReportsParams params);
}

class ReportsRemoteDataSourceImpl implements ReportsRemoteDataSource {
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
        "CONTENT": "{\"id_customer\":\"1299\",\"mobile_no\":\"9659858387\"}",
        "TYPE": "PP0016",
      };
      http.Response response = await http.post(
        Uri.parse(ConstantUrls.serviceUrl),
        body: jsonEncode(data),
        headers: {
          'Content-type': 'application/json',
          HttpHeaders.authorizationHeader: 'Bearer ${getReportsParams.token}',
        },
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List responseList = jsonDecode(response.body);
        List<ReportModel> conseltationsList = [];
        for (final raw in responseList) {
          conseltationsList.add(ReportModel.fromJson(raw));
        }

        return Right(conseltationsList);
      } else {
        return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
      }
    } on SocketException {
      return Left(ErrorModel(message: ConstantMessages.noNetworkErrorMessage));
    } on TimeoutException {
      return Left(
        ErrorModel(message: ConstantMessages.connectionTimeOutFailureMessage),
      );
    } catch (e) {
      return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
    }
  }

  @override
  Future<Either<ErrorModel, Uint8List>> downloadReport(
    ReportsParams params,
  ) async {
    final downloadReportParams = params.maybeMap(
      downloadReport: (value) => value,
      orElse: () => throw Exception('Invalid report download params'),
    );
    try {
      final Uint8List list = await http.readBytes(
        Uri.parse(downloadReportParams.url),
      );

      return Right(list);
    } on SocketException {
      return Left(ErrorModel(message: ConstantMessages.noNetworkErrorMessage));
    } on TimeoutException {
      return Left(ErrorModel(message: ConstantMessages.tokenExpiredMessage));
    } catch (e) {
      return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
    }
  }
}
