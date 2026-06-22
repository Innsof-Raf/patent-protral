import 'dart:developer';

import 'package:patient_portal/core/error/exceptions.dart';
import 'package:patient_portal/core/resources/api_agent.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/feature/login/data/models/otp_response_model.dart';
import 'package:patient_portal/feature/login/domain/usecases/params/login_params.dart';
import 'package:patient_portal/feature/profile/data/models/user_model.dart';

abstract class LoginRemoteDataSource {
  Future<OtpResponseModel> generateOtp(LoginParams params);

  Future<UserModel> verifyOtp(LoginParams params);

  Future<UserModel> loginWithPassword(LoginParams params);

  Future<UserModel> refreshToken(LoginParams params);
}

class LoginRemoteDataSourceImpl implements LoginRemoteDataSource {
  final ApiAgent client;

  LoginRemoteDataSourceImpl({required this.client});

  @override
  Future<OtpResponseModel> generateOtp(LoginParams params) async {
    try {
      final p = params.maybeMap(
        generateOtp: (value) => value,
        orElse: () => throw ServerException('Invalid params'),
      );

      final response = await client.post(
        url: ConstantUrls.otpGenerationUrl,
        body: p.toJson(),
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
  Future<UserModel> verifyOtp(LoginParams params) async {
    try {
      final p = params.maybeMap(
        verifyOtp: (value) => value,
        orElse: () => throw ServerException('Invalid params'),
      );

      log(
        'OTP Verification Request Data: ${p.toJson()}',
        name: 'LoginRemoteDataSourceImpl.verifyOtp',
      );
      final response = await client.post(
        url: ConstantUrls.otpVerificationUrl,
        body: p.toJson(),
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
  Future<UserModel> loginWithPassword(LoginParams params) async {
    try {
      final p = params.maybeMap(
        loginWithPassword: (value) => value,
        orElse: () => throw ServerException('Invalid params'),
      );

      final response = await client.post(
        url: ConstantUrls.loginWithPasswordUrl,
        body: p.toJson(),
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

  @override
  Future<UserModel> refreshToken(LoginParams params) async {
    try {
      final p = params.maybeMap(
        refreshToken: (value) => value,
        orElse: () => throw ServerException('Invalid params'),
      );

      final response = await client.post(
        url: ConstantUrls.refreshUrl,
        body: p.toJson(),
      );

      return UserModel.fromJson(decodeResponseData(response.data));
    } on ServerException {
      rethrow;
    } catch (e, stackTrace) {
      log('refreshToken Error', error: e, stackTrace: stackTrace);
      throw ServerException(e.toString());
    }
  }
}
