import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../../../resources/constant_messages.dart';
import '../../../resources/error_model.dart';
import '../../../resources/urls.dart';
import '../model/speciality_model.dart';

class SpecialityServices {
  static Future<Either<ErrorModel, List<SpecialityModel>>> fetchSpecialities(
      {required String token, required int idBusUnit}) async {
    try {
      final Map<String, dynamic> data = {
        "CONTENT": "{\"id_busunit\":$idBusUnit}",
        "TYPE": "PP0013",
      };

      http.Response response = await http.post(
          Uri.parse(ConstantUrls.serviceUrl),
          headers: {
            'Content-type': 'application/json',
            'Authorization': 'Bearer $token'
          },
          body: jsonEncode(data));

      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> data = jsonDecode(response.body);
        List<SpecialityModel> specilaities = [];
        for (final raw in data) {
          specilaities.add(SpecialityModel.fromJson(raw));
        }
        return Right(specilaities);
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
