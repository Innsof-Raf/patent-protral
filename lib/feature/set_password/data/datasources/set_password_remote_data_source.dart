import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:patient_portal/core/resources/api_agent.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
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
  final ApiAgent client;

  SetPasswordRemoteDataSourceImpl({required this.client});

  @override
  Future<Either<ErrorModel, ChangePasswordResponseModel>> changePassword(
    SetPasswordParams params,
  ) async {
    try {
      final changePasswordParams = params.maybeMap(
        changePassword: (value) => value,
        orElse: () => throw Exception('Invalid change password params'),
      );
      final data = serviceRequest(
        type: 'PP0036',
        content: {
          "id_user": changePasswordParams.idUser,
          "mobile_no": changePasswordParams.mobileNumber,
          "pwd": changePasswordParams.newPassword,
        },
      );

      final response = await client.post(
        url: ConstantUrls.serviceUrl,
        body: data,
        token: changePasswordParams.token,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final Map<String, dynamic> responseData = decodeResponseData(
          response.data,
        );
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
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        return Left(
          ErrorModel(message: ConstantMessages.connectionTimeOutFailureMessage),
        );
      } else if (e.error is SocketException) {
        return Left(
          ErrorModel(message: ConstantMessages.noNetworkErrorMessage),
        );
      }
      return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
    } catch (e) {
      return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
    }
  }
}
