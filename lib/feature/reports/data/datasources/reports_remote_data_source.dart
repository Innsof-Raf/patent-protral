import 'dart:async';
import 'dart:developer';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:patient_portal/core/error/exceptions.dart';
import 'package:patient_portal/core/resources/api_agent.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/feature/reports/data/models/report_file_model.dart';
import 'package:patient_portal/feature/reports/data/models/report_model.dart';
import 'package:patient_portal/feature/reports/domain/usecases/params/reports_params.dart';

abstract class ReportsRemoteDataSource {
  Future<List<ReportModel>> getReports(ReportsParams params);
  Future<ReportFileModel> downloadReport(ReportsParams params);
}

class ReportsRemoteDataSourceImpl implements ReportsRemoteDataSource {
  final ApiAgent client;

  ReportsRemoteDataSourceImpl({required this.client});

  @override
  Future<List<ReportModel>> getReports(ReportsParams params) async {
    try {
      final getReportsParams = params.maybeMap(
        getReports: (value) => value,
        orElse: () => throw ServerException('Invalid reports params'),
      );

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

      final List responseList = decodeResponseData(response.data);
      return responseList.map((raw) => ReportModel.fromJson(raw)).toList();
    } on ServerException {
      rethrow;
    } catch (e, stackTrace) {
      log('getReports Error', error: e, stackTrace: stackTrace);
      throw ServerException(e.toString());
    }
  }

  @override
  Future<ReportFileModel> downloadReport(ReportsParams params) async {
    try {
      final downloadReportParams = params.maybeMap(
        downloadReport: (value) => value,
        orElse: () => throw ServerException('Invalid report download params'),
      );

      final response = await client.get<Uint8List>(
        url: downloadReportParams.url,
        responseType: ResponseType.bytes,
      );

      if (response.data != null) {
        return ReportFileModel(bytes: response.data!);
      } else {
        throw ServerException('Failed to download report');
      }
    } on ServerException {
      rethrow;
    } catch (e, stackTrace) {
      log('downloadReport Error', error: e, stackTrace: stackTrace);
      throw ServerException(e.toString());
    }
  }
}
