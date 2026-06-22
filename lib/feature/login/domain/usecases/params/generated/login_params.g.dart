// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../login_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenerateOtpParams _$GenerateOtpParamsFromJson(Map<String, dynamic> json) =>
    GenerateOtpParams(
      mobileNumber: json['mobileNo'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$GenerateOtpParamsToJson(GenerateOtpParams instance) =>
    <String, dynamic>{
      'mobileNo': instance.mobileNumber,
      'runtimeType': instance.$type,
    };

VerifyOtpParams _$VerifyOtpParamsFromJson(Map<String, dynamic> json) =>
    VerifyOtpParams(
      idOtp: json['id_otp'] as String,
      mobileNumber: json['mobileNo'] as String,
      otp: json['otp'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$VerifyOtpParamsToJson(VerifyOtpParams instance) =>
    <String, dynamic>{
      'id_otp': instance.idOtp,
      'mobileNo': instance.mobileNumber,
      'otp': instance.otp,
      'runtimeType': instance.$type,
    };

LoginWithPasswordParams _$LoginWithPasswordParamsFromJson(
  Map<String, dynamic> json,
) => LoginWithPasswordParams(
  mobileNumber: json['username'] as String,
  password: json['password'] as String,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$LoginWithPasswordParamsToJson(
  LoginWithPasswordParams instance,
) => <String, dynamic>{
  'username': instance.mobileNumber,
  'password': instance.password,
  'runtimeType': instance.$type,
};
