import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import '../../../resources/constant_messages.dart';
import '../../../resources/error_model.dart';
import '../../../resources/urls.dart';

class ChangePasswordServices {
  static Future<Either<ErrorModel, Map>> changePassword({
    required int idUser,
    required String mobileNumber,
    required String newPassword,
    required String token,
  }) async {
    try {
      final data = {
        "CONTENT":
            "{\"id_user\":$idUser,\"mobile_no\":\"$mobileNumber\",\"pwd\":\"$newPassword\"}",
        "TYPE": "PP0036",
      };

      http.Response response = await http.post(
        Uri.parse(ConstantUrls.serviceUrl),
        body: jsonEncode(data),
        headers: {
          'Content-type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        if (responseData['status']) {
          return Right(responseData);
        } else {
          return Left(
            ErrorModel(message: ConstantMessages.serverFailureMessage),
          );
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
