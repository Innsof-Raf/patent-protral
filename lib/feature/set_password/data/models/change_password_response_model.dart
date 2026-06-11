import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/set_password/domain/entities/change_password_response.dart';

part 'generated/change_password_response_model.freezed.dart';

@freezed
sealed class ChangePasswordResponseModel with _$ChangePasswordResponseModel {
  const ChangePasswordResponseModel._();

  const factory ChangePasswordResponseModel({required bool status}) =
      _ChangePasswordResponseModel;

  factory ChangePasswordResponseModel.fromJson(Map<String, dynamic> json) {
    return ChangePasswordResponseModel(status: json['status'] == true);
  }

  ChangePasswordResponse toEntity() => ChangePasswordResponse(status: status);
}
