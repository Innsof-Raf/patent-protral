import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/otp_response.freezed.dart';

@freezed
sealed class OtpResponse with _$OtpResponse {
  const factory OtpResponse({
    required bool showPasswordSection,
    required String otp,
  }) = _OtpResponse;
}
