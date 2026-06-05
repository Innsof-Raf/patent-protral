import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../../../resources/common_models/appointment_model.dart/appointment_model.dart';
import '../../../resources/constant_messages.dart';
import '../../../resources/error_model.dart';
import '../../../resources/urls.dart';

class AppointmentServices {
  static Future<Either<ErrorModel, AppointmentModel>> bookAppointment({
    required int idDoctor,
    required DateTime appointmentDateTime,
    required String mobileNo,
    required int idMember,
    required String token,
  }) async {
    try {
      final Map data = {
        "CONTENT":
            "{\"id\":0,\"id_employee\":$idDoctor,\"id_busunit\":1,\"appmnt_mode\":\"walk-in\",\"appmnt_dttm\":\"$appointmentDateTime\",\"id_customer\":$idMember,\"mobile_no\":\"$mobileNo\"}",
        "TYPE": "PP0008"
      };
      http.Response response = await http.post(
          Uri.parse(ConstantUrls.serviceUrl),
          body: jsonEncode(data),
          headers: {
            HttpHeaders.authorizationHeader: 'Bearer $token',
            'Content-type': 'application/json',
          });
      if (response.statusCode == 200 || response.statusCode == 201) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        if (responseData["status"] == "1") {
          final appointmentResponse = responseData["data"];

          return Right(AppointmentModel.fromJson(appointmentResponse));
        } else {
          return Left(ErrorModel(message: 'Appointment Booking Faild'));
        }
      } else {
        return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
      }
    } on TimeoutException {
      return Left(ErrorModel(
          message: ConstantMessages.connectionTimeOutFailureMessage));
    } on SocketException {
      return Left(ErrorModel(message: ConstantMessages.noNetworkErrorMessage));
    } catch (e) {
      return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
    }
  }

  static Future<Either<ErrorModel, AppointmentModel>> resheduleAppointment(
      {required DateTime appointmentDateTime,
      required int idAppointment,
      required String token}) async {
    try {
      final Map data = {
        "CONTENT":
            "{\"id_appnmt\":$idAppointment,\"appmnt_dttm\":\"$appointmentDateTime\"}",
        "TYPE": "PP0028"
      };
      http.Response response = await http.post(
          Uri.parse(ConstantUrls.serviceUrl),
          body: jsonEncode(data),
          headers: {
            HttpHeaders.authorizationHeader: 'Bearer $token',
            'Content-type': 'application/json',
          });
      if (response.statusCode == 200 || response.statusCode == 201) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        if (responseData["status"] == 1) {
          final appointmentResponse = responseData["data"];

          return Right(AppointmentModel.fromJson(appointmentResponse));
        } else {
          return Left(
              ErrorModel(message: ConstantMessages.serverFailureMessage));
        }
      } else {
        return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
      }
    } on TimeoutException {
      return Left(ErrorModel(
          message: ConstantMessages.connectionTimeOutFailureMessage));
    } on SocketException {
      return Left(ErrorModel(message: ConstantMessages.noNetworkErrorMessage));
    } catch (e) {
      return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
    }
  }
}
