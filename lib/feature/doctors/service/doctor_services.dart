import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';

import '../../../resources/constant_messages.dart';
import '../../../resources/error_model.dart';
import '../../../resources/urls.dart';
import '../models/doctor_model/doctor_model.dart';

class DoctorServices {
  static Future<Either<ErrorModel, List<DoctorModel>>> getAvailableDoctors(
    int specialityId,
  ) async {
    try {
      final Map<String, dynamic> data = {
        "CONTENT": "{}",
        "TYPE": "PP0001",
      };

      http.Response response = await http.post(
          Uri.parse(ConstantUrls.serviceUrl),
          body: jsonEncode(data),
          headers: {
            'Content-type': 'application/json',
          });
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> responseData = jsonDecode(response.body);
        List<DoctorModel> doctorsList = [];
        for (final raw in responseData) {
          if (raw['id_dept'] == specialityId) {
            doctorsList.add(DoctorModel.fromJson(raw));
          }
        }
        return Right(doctorsList);
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
