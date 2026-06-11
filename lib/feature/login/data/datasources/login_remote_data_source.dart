import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:patient_portal/feature/login/data/models/otp_response_model.dart';
import 'package:patient_portal/feature/profile/data/models/user_model.dart';
import 'package:patient_portal/core/resources/urls.dart';

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
  final Dio client;

  LoginRemoteDataSourceImpl({required this.client});

  @override
  Future<OtpResponseModel> generateOtp(String mobileNumber) async {
    final data = {'MobileNo': mobileNumber};

    final response = await client.post(
      ConstantUrls.otpGenerationUrl,
      data: data,
      options: Options(headers: {'Content-Type': 'application/json'}),
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
    final Map<String, dynamic> data = {
      'id_otp': idOtp,
      'MobileNo': mobileNumber,
      'OTP': otp,
    };
    //final String jsonData = jsonEncode(data);
    log(
      'OTP Verification Request Data: $data',
      name: 'LoginRemoteDataSourceImpl.verifyOtp',
    );
    final response = await client.post(
      ConstantUrls.otpVerificationUrl,
      data: data,
      options: Options(headers: {'Content-Type': 'application/json'}),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      return UserModel.fromJson(response.data);
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
      'Username': mobileNumber,
      'Password': password,
    };

    final response = await client.post(
      ConstantUrls.loginWithPasswordUrl,
      data: data,
      options: Options(headers: {'Content-Type': 'application/json'}),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final responseData = response.data;
      if (responseData['isAuth']) {
        return UserModel.fromJson(responseData['user']);
      } else {
        throw Exception(responseData['errorMsg'] ?? 'Authentication failed');
      }
    } else {
      throw Exception('Server Failure');
    }
  }
}
