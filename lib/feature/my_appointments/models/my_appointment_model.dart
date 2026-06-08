// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_appointment_model.freezed.dart';
part 'my_appointment_model.g.dart';

@freezed
sealed class MyAppointmentModel with _$MyAppointmentModel {
  const factory MyAppointmentModel({
    @JsonKey(name: 'Id') required int id,
    @JsonKey(name: 'id_customer') required int memberId,
    @JsonKey(name: 'customer_name') required String memberName,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'mobile_no') required String mobileNumber,
    @JsonKey(name: 'dept_name') required String departName,
    @JsonKey(name: 'employee_id') required String doctorId,
    @JsonKey(name: 'employee_name') required String doctorName,
    @JsonKey(name: 'speciality') required String speciality,
    @JsonKey(name: 'branch') required String branch,
    @JsonKey(name: 'profileurl') required String profileUrl,
    @JsonKey(name: 'busunit_name') required String busunitName,
    @JsonKey(name: 'Appmnt_Dttm') required DateTime appointmentDateTime,
    @JsonKey(name: 'id_employee') required int idDoctor,
    @Default(false) bool isCanceling,
  }) = _MyAppointmentModel;

  factory MyAppointmentModel.fromJson(Map<String, dynamic> json) =>
      _$MyAppointmentModelFromJson(json);
}
