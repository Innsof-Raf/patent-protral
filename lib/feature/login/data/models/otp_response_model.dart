import 'package:patient_portal/feature/login/domain/entities/otp_response.dart';

class OtpResponseModel extends OtpResponse {
  const OtpResponseModel({
    required super.showPasswordSection,
    required super.otp,
  });

  factory OtpResponseModel.fromJson(Map<String, dynamic> json) {
    return OtpResponseModel(
      showPasswordSection: json['is_pwdset'] ?? false,
      otp: json['Otp']?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {'is_pwdset': showPasswordSection, 'Otp': otp};
  }
}
