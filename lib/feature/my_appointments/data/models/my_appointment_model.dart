import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
import 'package:patient_portal/feature/my_appointments/domain/entities/my_appointment.dart';

part 'generated/my_appointment_model.freezed.dart';
part 'generated/my_appointment_model.g.dart';

@freezed
sealed class MyAppointmentModel with _$MyAppointmentModel {
  const MyAppointmentModel._();

  const factory MyAppointmentModel({
    @JsonKey(readValue: _readId, fromJson: intFromJson) required int id,
    @JsonKey(readValue: _readMemberId, fromJson: intFromJson)
    required int memberId,
    @JsonKey(readValue: _readMemberName, fromJson: stringFromJson)
    required String memberName,
    @Default('') @JsonKey(fromJson: stringFromJson) String email,
    @JsonKey(readValue: _readMobileNumber, fromJson: stringFromJson)
    required String mobileNumber,
    @Default('') @JsonKey(name: 'dept_name') String departName,
    @Default('')
    @JsonKey(name: 'employee_id', fromJson: stringFromJson)
    String doctorId,
    @Default('') @JsonKey(name: 'employee_name') String doctorName,
    @Default('') String speciality,
    @Default('') String branch,
    @Default('') @JsonKey(name: 'profileurl') String profileUrl,
    @Default('') @JsonKey(name: 'busunit_name') String busUnitName,
    @JsonKey(
      name: 'Appmnt_Dttm',
      readValue: _readAppointmentDateTime,
      fromJson: _dateTimeFromJson,
    )
    required DateTime appointmentDateTime,
    @Default(0)
    @JsonKey(name: 'id_employee', fromJson: intFromJson)
    int idDoctor,
    @Default(false) bool isCanceling,
  }) = _MyAppointmentModel;

  factory MyAppointmentModel.fromJson(Map<String, dynamic> json) =>
      _$MyAppointmentModelFromJson(json);

  MyAppointment toEntity() => MyAppointment(
    id: id,
    memberId: memberId,
    memberName: memberName,
    email: email,
    mobileNumber: mobileNumber,
    departName: departName,
    doctorId: doctorId,
    doctorName: doctorName,
    speciality: speciality,
    branch: branch,
    profileUrl: profileUrl,
    busUnitName: busUnitName,
    appointmentDateTime: appointmentDateTime,
    idDoctor: idDoctor,
    isCanceling: isCanceling,
  );
}

Object? _readId(Map json, String key) =>
    json['Id'] ?? json['id'] ?? json['id_cons'] ?? json['app_id'];
Object? _readMemberId(Map json, String key) =>
    json['id_customer'] ?? json['ID_CUSTOMER'];
Object? _readMemberName(Map json, String key) =>
    json['customer_name'] ?? json['Customer_Name'];
Object? _readMobileNumber(Map json, String key) =>
    json['mobile_no'] ?? json['Mobile_No'] ?? json['Patient_MobileNo'];
Object? _readAppointmentDateTime(Map json, String key) =>
    json['appmnt_dttm'] ?? json['Appmnt_Dttm'];

DateTime _dateTimeFromJson(Object? value) =>
    DateTime.tryParse(value?.toString() ?? '') ??
    DateTime.fromMillisecondsSinceEpoch(0);
