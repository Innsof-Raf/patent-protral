import 'dart:developer';

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
    final data = {'mobileNo': mobileNumber};

    final response = await client.post(
      url: ConstantUrls.otpGenerationUrl,
      body: data,
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      return OtpResponseModel.fromJson(response.data);
    } else {
      throw Exception('Server Failure');
    }
  }

  @override
  Future<UserModel> verifyOtp({
    required String idOtp,
    required String mobileNumber,
    required String otp,
  }) async {
    final Map<String, dynamic> data = {'mobileNo': mobileNumber, 'otp': otp};
    //final String jsonData = jsonEncode(data);
    log(
      'OTP Verification Request Data: $data',
      name: 'LoginRemoteDataSourceImpl.verifyOtp',
    );
    final response = await client.post(
      url: ConstantUrls.otpVerificationUrl,
      body: data,
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      return UserModel.fromJson(decodeResponseData(response.data));
    } else {
      throw Exception('Server Failure');
    }
  }

  @override
  Future<UserModel> loginWithPassword({
    required String mobileNumber,
    required String password,
  }) async {
    final Map<String, dynamic> data = {
      'username': mobileNumber,
      'password': password,
    };

    final response = await client.post(
      url: ConstantUrls.loginWithPasswordUrl,
      body: data,
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final responseData = decodeResponseData(response.data);
      if (responseData['accessToken'] != null) {
        return UserModel.fromJson(responseData);
      }
      throw Exception(responseData['message'] ?? 'Authentication failed');
    } else {
      throw Exception('Server Failure');
    }
  }
}
