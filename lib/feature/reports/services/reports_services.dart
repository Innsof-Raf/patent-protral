import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:patient_portal/feature/reports/models/report_model/report_model.dart';

import '../../../resources/constant_messages.dart';
import '../../../resources/error_model.dart';
import 'package:http/http.dart' as http;

import '../../../resources/urls.dart';

class ReportsServices {
  static Future<Either<ErrorModel, List<ReportModel>>> getReports(
      {required int memberId,
      required String token,
      required String mobileNumber}) async {
    try {
      final Map<String, dynamic> data = {
        "CONTENT": "{\"id_customer\":\"1299\",\"mobile_no\":\"9659858387\"}",
        "TYPE": "PP0016"
      };
      http.Response response = await http.post(
          Uri.parse(ConstantUrls.serviceUrl),
          body: jsonEncode(data),
          headers: {
            'Content-type': 'application/json',
            HttpHeaders.authorizationHeader: 'Bearer $token',
          });
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
      return Left(ErrorModel(
          message: ConstantMessages.connectionTimeOutFailureMessage));
    } catch (e) {
      return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
    }
  }
}
