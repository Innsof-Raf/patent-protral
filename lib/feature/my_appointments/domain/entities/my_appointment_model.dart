import 'package:patient_portal/feature/my_appointments/domain/entities/my_appointment.dart';

typedef MyAppointmentModel = MyAppointment;

class $MyAppointmentModelCopyWith<$Res> {
  final MyAppointmentModel _value;
  final $Res Function(MyAppointmentModel) _then;

  $MyAppointmentModelCopyWith(this._value, this._then);

  $Res call({
    int? id,
    int? memberId,
    String? memberName,
    String? email,
    String? mobileNumber,
    String? departName,
    String? doctorId,
    String? doctorName,
    String? speciality,
    String? branch,
    String? profileUrl,
    String? busunitName,
    DateTime? appointmentDateTime,
    int? idDoctor,
    bool? isCanceling,
  }) {
    return _then(
      _value.copyWith(
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
        busunitName: busunitName,
        appointmentDateTime: appointmentDateTime,
        idDoctor: idDoctor,
        isCanceling: isCanceling,
      ),
    );
  }
}
