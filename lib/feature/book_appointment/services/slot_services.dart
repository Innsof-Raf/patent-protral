import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
import 'package:patient_portal/feature/book_appointment/models/shift_model/shift_model.dart';
import '../../../resources/constant_messages.dart';
import '../../../resources/error_model.dart';
import '../../../resources/urls.dart';

class SlotServices {
  static Future<Either<ErrorModel, ShiftModel>> getAvailableSlots({
    required DateTime date,
    required int idDoctor,
    required String token,
  }) async {
    try {
      final Map data = {
        "CONTENT":
            "{\"id_doctor\":$idDoctor,\"shift_dt\":\"${DateFormat('yyyy-MM-dd').format(date)}\"}",
        "TYPE": "PP0003"
      };
      http.Response response = await http.post(
          Uri.parse(ConstantUrls.serviceUrl),
          body: jsonEncode(data),
          headers: {
            'Content-type': 'application/json',
          });

      if (response.statusCode == 200 || response.statusCode == 201) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);

        return Right(ShiftModel.fromJson(responseData));
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
