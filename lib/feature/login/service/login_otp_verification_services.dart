import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:patient_portal/feature/profile/models/user/user_model.dart';

import '../../../resources/constant_messages.dart';
import '../../../resources/error_model.dart';
import '../../../resources/urls.dart';

class LoginOtpVerificationServices {
  static Future<Either<ErrorModel, UserModel>> validateOtp(
    String idOtp,
    String mobileNumber,
    String otp,
  ) async {
    try {
      final Map<String, dynamic> data = {
        'id_otp': idOtp,
        'MobileNo': mobileNumber,
        'OTP': otp,
      };

      http.Response response = await http.post(
        Uri.parse(ConstantUrls.otpVerificationUrl),
        body: jsonEncode(data),
        headers: {'Content-type': 'application/json'},
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final responseData = jsonDecode(response.body);

        final UserModel user = UserModel.fromJson(responseData);
        return Right(user);
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
