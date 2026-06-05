import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../../../resources/common_models/insurance/insurance_model.dart';
import '../../../resources/constant_messages.dart';
import '../../../resources/error_model.dart';
import '../../../resources/urls.dart';

class InsuranceServices {
  static Future<Either<ErrorModel, List<InsuranceModel>>> fetchInsuranceTypes(
      {required String token}) async {
    try {
      final Map data = {"TYPE": "PP0024"};
      http.Response response = await http.post(
          Uri.parse(ConstantUrls.serviceUrl),
          body: jsonEncode(data),
          headers: {
            'Content-type': 'application/json',
            'Authorization': 'Bearer $token'
          });
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List responseBody = jsonDecode(response.body);
        List<InsuranceModel> insuranceList = [];
        for (final raw in responseBody) {
          insuranceList.add(InsuranceModel.fromJson(raw));
        }
        return Right(insuranceList);
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
