import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/change_password_response.freezed.dart';

@freezed
sealed class ChangePasswordResponse with _$ChangePasswordResponse {
  const factory ChangePasswordResponse({required bool status}) =
      _ChangePasswordResponse;
}
