import 'dart:async';
import 'dart:developer';

import 'package:patient_portal/core/error/exceptions.dart';
import 'package:patient_portal/core/resources/api_agent.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/feature/set_password/data/models/change_password_response_model.dart';
import 'package:patient_portal/feature/set_password/domain/usecases/params/set_password_params.dart';

abstract class SetPasswordRemoteDataSource {
  Future<ChangePasswordResponseModel> changePassword(SetPasswordParams params);
}

class SetPasswordRemoteDataSourceImpl implements SetPasswordRemoteDataSource {
  final ApiAgent client;

  SetPasswordRemoteDataSourceImpl({required this.client});

  @override
  Future<ChangePasswordResponseModel> changePassword(
    SetPasswordParams params,
  ) async {
    try {
      final changePasswordParams = params.maybeMap(
        changePassword: (value) => value,
        orElse: () => throw ServerException('Invalid change password params'),
      );
      final data = serviceRequest(
        type: 'PP0036',
        content: {
          'id_user': changePasswordParams.idUser,
          'mobile_no': changePasswordParams.mobileNumber,
          'pwd': changePasswordParams.newPassword,
        },
      );

      final response = await client.post(
        url: ConstantUrls.serviceUrl,
        body: data,
        token: changePasswordParams.token,
      );

      final Map<String, dynamic> responseData = decodeResponseData(
        response.data,
      );
      final changePasswordResponse = ChangePasswordResponseModel.fromJson(
        responseData,
      );

      if (changePasswordResponse.status) {
        return changePasswordResponse;
      } else {
        throw ServerException(
          responseData['message'] ?? 'Failed to change password',
        );
      }
    } on ServerException {
      rethrow;
    } catch (e, stackTrace) {
      log('changePassword Error', error: e, stackTrace: stackTrace);
      throw ServerException(e.toString());
    }
  }
}
