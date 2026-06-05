import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import '../../../resources/constant_messages.dart';
import '../../../resources/error_model.dart';
import '../../../resources/urls.dart';
import '../../profile/models/user/user_model.dart';

class LoginWithPasswordServices {
  static Future<Either<ErrorModel, UserModel>> loginWithPassword(
      {required String mobileNo, required String password}) async {
    try {
      final Map<String, dynamic> data = {
        'Username': mobileNo,
        'Password': password,
      };

      http.Response response = await http.post(
          Uri.parse(ConstantUrls.loginWithPasswordUrl),
          body: jsonEncode(data),
          headers: {
            'Content-type': 'application/json',
          });
      if (response.statusCode == 200 || response.statusCode == 201) {
        final responseData = jsonDecode(response.body);

        if (responseData['isAuth']) {
          return Right(UserModel.fromJson(responseData['user']));
        } else {
          return Left(ErrorModel(message: responseData['errorMsg']));
        }
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
