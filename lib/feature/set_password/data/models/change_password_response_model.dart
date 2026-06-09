class ChangePasswordResponseModel {
  final bool status;

  const ChangePasswordResponseModel({required this.status});

  factory ChangePasswordResponseModel.fromJson(Map<String, dynamic> json) {
    return ChangePasswordResponseModel(status: json['status'] == true);
  }
}
