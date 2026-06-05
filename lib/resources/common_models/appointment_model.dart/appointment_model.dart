import 'package:freezed_annotation/freezed_annotation.dart';
part 'appointment_model.g.dart';
part 'appointment_model.freezed.dart';

@freezed
class AppointmentModel with _$AppointmentModel {
  const factory AppointmentModel({
    @JsonKey(name: "Id") required int id,
    @JsonKey(name: "appmt_id") required String appointmentId,
    @JsonKey(name: "branch") required String branch,
    @JsonKey(name: "id_customer") required int idMember,
    @JsonKey(name: "customer_name") required String memberName,
    @JsonKey(name: "id_employee") required int idDoctor,
    @JsonKey(name: "employee_name") required String doctorName,
    @JsonKey(name: "speciality") required String doctorSpecility,
    @JsonKey(name: "profileurl") required String doctorImage,
    @JsonKey(name: "Appmnt_Dttm") required DateTime appointmentDateTime,
    @Default(null) @JsonKey(name: "customer_img") String? memberImage,
    @JsonKey(name: "busunit_name") required String busunitName,
    @JsonKey(name: "dept_name") required String deptName,
    @JsonKey(name: "email") required String email,
    @JsonKey(name: "employee_id") required String doctorId,
    @JsonKey(name: "mobile_no") required String mobileNo,
    @JsonKey(name: "id_busunit") required int idBusunit,
    @JsonKey(name: "id_dept") required int idDept,
  }) = _AppointmentModel;

  factory AppointmentModel.fromJson(Map<String, dynamic> json) =>
      _$AppointmentModelFromJson(json);
}
