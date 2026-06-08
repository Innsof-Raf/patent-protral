import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import 'package:dartz/dartz.dart';
import 'package:patient_portal/feature/home/models/home_data_model.dart/home_data_model.dart';
import 'package:patient_portal/resources/error_model.dart';

import '../../../resources/constant_messages.dart';
import '../../../resources/urls.dart';

class HomeServices {
  static Future<Either<ErrorModel, HomeDataModel>> getHomeData({
    required String token,
    required int idBusunit,
  }) async {
    try {
      final Map<String, dynamic> data = {
        "CONTENT": "{\"section\":1,\"lang\":\"EN\",\"id_busunit\":$idBusunit}",
        "TYPE": "PP0032",
      };
      http.Response response = await http.post(
        Uri.parse(ConstantUrls.serviceUrl),
        headers: {
          'Content-type': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode(data),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final responseData = jsonDecode(response.body);

        return Right(HomeDataModel.fromJson(responseData));
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
}
