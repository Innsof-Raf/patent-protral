import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/login/domain/entities/otp_response.dart';

part 'generated/otp_response_model.freezed.dart';
part 'generated/otp_response_model.g.dart';

@freezed
sealed class OtpResponseModel with _$OtpResponseModel {
  const OtpResponseModel._();

  const factory OtpResponseModel({
    @JsonKey(name: 'is_pwdset', defaultValue: false)
    required bool showPasswordSection,
    @JsonKey(readValue: _readOtp, fromJson: _otpFromJson) required String otp,
  }) = _OtpResponseModel;

  factory OtpResponseModel.fromJson(Map<String, dynamic> json) =>
      _$OtpResponseModelFromJson(json);

  OtpResponse toEntity() =>
      OtpResponse(showPasswordSection: showPasswordSection, otp: otp);
}

Object? _readOtp(Map json, String key) => json['otp'] ?? json['Otp'];

String _otpFromJson(Object? value) => value?.toString() ?? '';
