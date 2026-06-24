import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
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
    @JsonKey(readValue: _readDoctorId, fromJson: stringFromJson)
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
    @Default('') @JsonKey(name: 'appmnt_status') String status,
    @Default('') @JsonKey(name: 'token_no') String tokenNo,
    @Default(0) @JsonKey(fromJson: intFromJson) int stars,
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
    status: status,
    tokenNo: tokenNo,
    stars: stars,
    isCanceling: isCanceling,
  );
}

Object? _readId(Map json, String key) =>
    json['Id'] ?? json['id'] ?? json['id_cons'] ?? json['app_id'];

Object? _readMemberId(Map json, String key) =>
    json['id_customer'] ?? json['ID_CUSTOMER'] ?? json['ID_Customer'];

Object? _readMemberName(Map json, String key) =>
    json['customer_name'] ?? json['Customer_Name'] ?? json['Member_Name'];

Object? _readMobileNumber(Map json, String key) =>
    json['mobile_no'] ?? json['Mobile_No'] ?? json['Patient_MobileNo'];

Object? _readAppointmentDateTime(Map json, String key) {
  final dateTime = json['appmnt_dttm'] ?? json['Appmnt_Dttm'];
  if (dateTime != null) return dateTime;

  final date = json['appmnt_dt'] ?? json['Appmnt_Dt'];
  final time = json['appmnt_time'] ?? json['Appmnt_Time'];
  return _combineAppointmentDateAndTime(date, time);
}

Object? _readDoctorId(Map json, String key) =>
    json['employee_id'] ?? json['employee_Id'] ?? json['appmt_id'];

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
