import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:patient_portal/feature/my_appointments/data/models/my_appointment_model.dart';
import 'package:patient_portal/core/resources/constant_messages.dart';
import 'package:patient_portal/core/resources/error_model.dart';
import 'package:patient_portal/core/resources/urls.dart';

class MyAppointmentServices {
  static Future<Either<ErrorModel, List<MyAppointmentModel>>>
  getMyAppointments({
    required String mobileNumber,
    required String token,
  }) async {
    try {
      final Map data = {
        "CONTENT": "{\"mobile_no\":\"$mobileNumber\"}",
        "TYPE": "PP0015",
      };
      http.Response response = await http.post(
        Uri.parse(ConstantUrls.serviceUrl),
        body: jsonEncode(data),
        headers: {
          HttpHeaders.authorizationHeader: 'Bearer $token',
          'Content-type': 'application/json',
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final List responseData = jsonDecode(response.body);

        List<MyAppointmentModel> myAppointmentsList = [];
        for (final appoints in responseData) {
          myAppointmentsList.add(MyAppointmentModel.fromJson(appoints));
        }
        return Right(myAppointmentsList);
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

  static Future<Either<ErrorModel, Map>> cancelAppointment({
    required int appointmentId,
    required String token,
  }) async {
    try {
      final Map data = {
        "CONTENT": "{\"id_appointment\":$appointmentId}",
        "TYPE": "PP0019",
      };
      http.Response response = await http.post(
        Uri.parse(ConstantUrls.serviceUrl),
        body: jsonEncode(data),
        headers: {
          HttpHeaders.authorizationHeader: 'Bearer $token',
          'Content-type': 'application/json',
        },
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final responseData = jsonDecode(response.body);

        if (responseData["STATUS"] == 1 &&
            responseData["message"] == "canceld") {
          return Right(responseData);
        } else {
          return Left(ErrorModel(message: 'Appointment Cancelled Failed'));
        }
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
