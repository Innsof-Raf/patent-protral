import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:patient_portal/feature/set_password/data/models/change_password_response_model.dart';
import 'package:patient_portal/feature/set_password/domain/usecases/params/set_password_params.dart';
import 'package:patient_portal/core/resources/constant_messages.dart';
import 'package:patient_portal/core/resources/error_model.dart';
import 'package:patient_portal/core/resources/urls.dart';

abstract class SetPasswordRemoteDataSource {
  Future<Either<ErrorModel, ChangePasswordResponseModel>> changePassword(
    SetPasswordParams params,
  );
}

class SetPasswordRemoteDataSourceImpl implements SetPasswordRemoteDataSource {
  @override
  Future<Either<ErrorModel, ChangePasswordResponseModel>> changePassword(
    SetPasswordParams params,
  ) async {
    try {
      final changePasswordParams = params.maybeMap(
        changePassword: (value) => value,
        orElse: () => throw Exception('Invalid change password params'),
      );
      final data = {
        "CONTENT":
            "{\"id_user\":${changePasswordParams.idUser},\"mobile_no\":\"${changePasswordParams.mobileNumber}\",\"pwd\":\"${changePasswordParams.newPassword}\"}",
        "TYPE": "PP0036",
      };

      http.Response response = await http.post(
        Uri.parse(ConstantUrls.serviceUrl),
        body: jsonEncode(data),
        headers: {
          'Content-type': 'application/json',
          'Authorization': 'Bearer ${changePasswordParams.token}',
        },
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        final changePasswordResponse = ChangePasswordResponseModel.fromJson(
          responseData,
        );
        if (changePasswordResponse.status) {
          return Right(changePasswordResponse);
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
