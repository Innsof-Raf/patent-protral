import 'dart:developer';

import 'package:patient_portal/core/error/exceptions.dart';
import 'package:patient_portal/core/resources/api_agent.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/feature/login/data/models/otp_response_model.dart';
import 'package:patient_portal/feature/profile/data/models/user_model.dart';

abstract class LoginRemoteDataSource {
  Future<OtpResponseModel> generateOtp(String mobileNumber);
  Future<UserModel> verifyOtp({
    required String idOtp,
    required String mobileNumber,
    required String otp,
  });
  Future<UserModel> loginWithPassword({
    required String mobileNumber,
    required String password,
  });
}

class LoginRemoteDataSourceImpl implements LoginRemoteDataSource {
  final ApiAgent client;

  LoginRemoteDataSourceImpl({required this.client});

  @override
  Future<OtpResponseModel> generateOtp(String mobileNumber) async {
    try {
      final data = {'mobileNo': mobileNumber};

      final response = await client.post(
        url: ConstantUrls.otpGenerationUrl,
        body: data,
      );

      return OtpResponseModel.fromJson(response.data);
    } on ServerException {
      rethrow;
    } catch (e, stackTrace) {
      log('generateOtp Error', error: e, stackTrace: stackTrace);
      throw ServerException(e.toString());
    }
  }

  @override
  Future<UserModel> verifyOtp({
    required String idOtp,
    required String mobileNumber,
    required String otp,
  }) async {
    try {
      final Map<String, dynamic> data = {'mobileNo': mobileNumber, 'otp': otp};
      log(
        'OTP Verification Request Data: $data',
        name: 'LoginRemoteDataSourceImpl.verifyOtp',
      );
      final response = await client.post(
        url: ConstantUrls.otpVerificationUrl,
        body: data,
      );

      return UserModel.fromJson(decodeResponseData(response.data));
    } on ServerException {
      rethrow;
    } catch (e, stackTrace) {
      log('verifyOtp Error', error: e, stackTrace: stackTrace);
      throw ServerException(e.toString());
    }
  }

  @override
  Future<UserModel> loginWithPassword({
    required String mobileNumber,
    required String password,
  }) async {
    try {
      final Map<String, dynamic> data = {
        'username': mobileNumber,
        'password': password,
      };

      final response = await client.post(
        url: ConstantUrls.loginWithPasswordUrl,
        body: data,
      );

      final responseData = decodeResponseData(response.data);
      if (responseData['accessToken'] != null) {
        return UserModel.fromJson(responseData);
      }
      throw ServerException(responseData['message'] ?? 'Authentication failed');
    } on ServerException {
      rethrow;
    } catch (e, stackTrace) {
      log('loginWithPassword Error', error: e, stackTrace: stackTrace);
      throw ServerException(e.toString());
    }
  }
}
