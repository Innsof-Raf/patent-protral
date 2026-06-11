import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/login/domain/entities/otp_response.dart';

part 'generated/otp_response_model.freezed.dart';

@freezed
sealed class OtpResponseModel with _$OtpResponseModel {
  const OtpResponseModel._();

  const factory OtpResponseModel({
    required bool showPasswordSection,
    required String otp,
  }) = _OtpResponseModel;

  factory OtpResponseModel.fromJson(Map<String, dynamic> json) {
    return OtpResponseModel(
      showPasswordSection: json['is_pwdset'] ?? false,
      otp: json['Otp']?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {'is_pwdset': showPasswordSection, 'Otp': otp};
  }

  OtpResponse toEntity() => OtpResponse(
        showPasswordSection: showPasswordSection,
        otp: otp,
      );
}
