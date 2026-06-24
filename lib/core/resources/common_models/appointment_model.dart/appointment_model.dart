import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';

part 'generated/appointment_model.freezed.dart';
part 'generated/appointment_model.g.dart';

@freezed
sealed class AppointmentModel with _$AppointmentModel {
  const factory AppointmentModel({
    @JsonKey(readValue: _readId, fromJson: intFromJson) required int id,
    @Default('') @JsonKey(name: 'appmt_id') String appointmentId,
    @Default('') @JsonKey(name: 'branch') String branch,
    @JsonKey(readValue: _readIdMember, fromJson: intFromJson)
    required int idMember,
    @JsonKey(readValue: _readMemberName, fromJson: stringFromJson)
    required String memberName,
    @JsonKey(readValue: _readIdDoctor, fromJson: intFromJson)
    required int idDoctor,
    @JsonKey(readValue: _readDoctorName, fromJson: stringFromJson)
    required String doctorName,
    @Default('') @JsonKey(name: 'speciality') String doctorSpeciality,
    @JsonKey(readValue: _readDoctorImage, fromJson: stringFromJson)
    required String doctorImage,
    @JsonKey(
      name: 'Appmnt_Dttm',
      readValue: _readAppointmentDateTime,
      fromJson: _dateTimeFromJson,
    )
    required DateTime appointmentDateTime,
    @Default(null) @JsonKey(name: 'customer_img') String? memberImage,
    @JsonKey(readValue: _readBusUnitName, fromJson: stringFromJson)
    required String busUnitName,
    @Default('') @JsonKey(name: 'dept_name') String deptName,
    @JsonKey(readValue: _readEmail, fromJson: stringFromJson)
    required String email,
    @Default('')
    @JsonKey(name: 'employee_id', fromJson: stringFromJson)
    String doctorId,
    @JsonKey(readValue: _readMobileNo, fromJson: stringFromJson)
    required String mobileNo,
    @JsonKey(readValue: _readIdBusUnit, fromJson: intFromJson)
    required int idBusUnit,
    @Default(0) @JsonKey(name: 'id_dept', fromJson: intFromJson) int idDept,
  }) = _AppointmentModel;

  factory AppointmentModel.fromJson(Map<String, dynamic> json) =>
      _$AppointmentModelFromJson(json);
}

Object? _readId(Map json, String key) => json['Id'] ?? json['id'];
Object? _readIdMember(Map json, String key) =>
    json['id_customer'] ?? json['ID_Customer'];
Object? _readMemberName(Map json, String key) =>
    json['customer_name'] ?? json['Customer_Name'];
Object? _readIdDoctor(Map json, String key) =>
    json['id_employee'] ?? json['ID_Employee'];
Object? _readDoctorName(Map json, String key) =>
    json['employee_name'] ?? json['Employee_Name'];
Object? _readDoctorImage(Map json, String key) =>
    json['profileurl'] ?? json['Employee_Img'];
Object? _readAppointmentDateTime(Map json, String key) {
  final dateTime = json['appmnt_dttm'] ?? json['Appmnt_Dttm'];
  if (dateTime != null) return dateTime;

  final date = json['appmnt_dt'] ?? json['Appmnt_Dt'];
  final time = json['appmnt_time'] ?? json['Appmnt_Time'];
  return _combineAppointmentDateAndTime(date, time);
}
Object? _readBusUnitName(Map json, String key) =>
    json['busunit_name'] ?? json['Busunit_Name'];
Object? _readEmail(Map json, String key) => json['email'] ?? json['Email_ID'];
Object? _readMobileNo(Map json, String key) =>
    json['mobile_no'] ?? json['Mobile_No'] ?? json['Patient_MobileNo'];
Object? _readIdBusUnit(Map json, String key) =>
    json['id_busunit'] ?? json['ID_Busunit'];

DateTime _dateTimeFromJson(Object? value) =>
    DateTime.tryParse(value?.toString() ?? '') ??
    DateTime.fromMillisecondsSinceEpoch(0);

String? _combineAppointmentDateAndTime(Object? date, Object? time) {
  final dateText = date?.toString().trim() ?? '';
  if (dateText.isEmpty) return null;

  final timeText = time?.toString().trim() ?? '';
  if (timeText.isEmpty) return dateText;

  try {
    final parsedDate = DateTime.parse(dateText);
    final parsedTime = DateFormat('hh:mm a').parseStrict(timeText);
    return DateTime(
      parsedDate.year,
      parsedDate.month,
      parsedDate.day,
      parsedTime.hour,
      parsedTime.minute,
    ).toIso8601String();
  } catch (_) {
    return '$dateText $timeText';
  }
}
