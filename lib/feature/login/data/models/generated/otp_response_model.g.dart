// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../otp_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OtpResponseModel _$OtpResponseModelFromJson(Map<String, dynamic> json) =>
    _OtpResponseModel(
      showPasswordSection: json['is_pwdset'] as bool? ?? false,
      otp: _otpFromJson(_readOtp(json, 'otp')),
    );

Map<String, dynamic> _$OtpResponseModelToJson(_OtpResponseModel instance) =>
    <String, dynamic>{
      'is_pwdset': instance.showPasswordSection,
      'otp': instance.otp,
    };
