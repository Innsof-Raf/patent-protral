import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:patient_portal/feature/login/data/models/otp_response_model.dart';
import 'package:patient_portal/feature/profile/models/user/user_model.dart';
import 'package:patient_portal/resources/urls.dart';

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
  final http.Client client;

  LoginRemoteDataSourceImpl({required this.client});

  @override
  Future<OtpResponseModel> generateOtp(String mobileNumber) async {
    final data = {'MobileNo': mobileNumber};

    final response = await client.post(
      Uri.parse(ConstantUrls.otpGenerationUrl),
      body: jsonEncode(data),
      headers: {'Content-type': 'application/json'},
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      return OtpResponseModel.fromJson(jsonDecode(response.body));
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

    final response = await client.post(
      Uri.parse(ConstantUrls.otpVerificationUrl),
      body: jsonEncode(data),
      headers: {'Content-type': 'application/json'},
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      return UserModel.fromJson(jsonDecode(response.body));
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
      Uri.parse(ConstantUrls.loginWithPasswordUrl),
      body: jsonEncode(data),
      headers: {'Content-type': 'application/json'},
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final responseData = jsonDecode(response.body);
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
