import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';

import '../../../resources/constant_messages.dart';
import '../../../resources/error_model.dart';
import '../../../resources/urls.dart';

class LogInOtpGenarationServices {
  static Future<Either<ErrorModel, Map<String, dynamic>>> generateOtp(
    String mobileNumberOrEmail,
  ) async {
    try {
      final data = {'MobileNo': mobileNumberOrEmail};

      http.Response response = await http.post(
        Uri.parse(ConstantUrls.otpGenerationUrl),
        body: jsonEncode(data),
        headers: {'Content-type': 'application/json'},
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);

        return Right(responseData);
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
