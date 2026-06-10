import 'package:patient_portal/feature/set_password/domain/entities/change_password_response.dart';

class ChangePasswordResponseModel {
  final bool status;

  const ChangePasswordResponseModel({required this.status});

  factory ChangePasswordResponseModel.fromJson(Map<String, dynamic> json) {
    return ChangePasswordResponseModel(status: json['status'] == true);
  }

  ChangePasswordResponse toEntity() {
    return ChangePasswordResponse(status: status);
  }
}
