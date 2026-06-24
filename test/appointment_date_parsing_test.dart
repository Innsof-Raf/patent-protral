import 'package:flutter_test/flutter_test.dart';
import 'package:patient_portal/core/resources/common_models/appointment_model.dart/appointment_model.dart';
import 'package:patient_portal/feature/my_appointments/data/models/my_appointment_model.dart';

void main() {
  test('AppointmentModel parses split Appmnt_Dt and Appmnt_Time fields', () {
    final model = AppointmentModel.fromJson({
      'Id': 586732,
      'appmt_id': '',
      'id_customer': 192724,
      'customer_name': 'MEMBER 5',
      'email': 'member5@gmail.com',
      'mobile_no': '56165445',
      'id_busunit': 3,
      'dept_name': 'Internal Medicine',
      'id_dept': 14,
      'id_employee': 143,
      'employee_id': 'EMP01005',
      'employee_name': 'Dr. Sarafat Ulla',
      'speciality': 'Internal Medicine',
      'branch': 'Clinic_01',
      'profileurl': 'profile.jpg',
      'busunit_name': 'Clinic_01',
      'Appmnt_Dt': '2026-06-24',
      'Appmnt_Time': '10:30 PM',
      'token_no': 'SA-30',
    });

    expect(model.appointmentDateTime, DateTime(2026, 6, 24, 22, 30));
  });

  test('MyAppointmentModel parses split Appmnt_Dt and Appmnt_Time fields', () {
    final model = MyAppointmentModel.fromJson({
      'Id': 586732,
      'id_customer': 192724,
      'customer_name': 'MEMBER 5',
      'email': 'member5@gmail.com',
      'mobile_no': '56165445',
      'dept_name': 'Internal Medicine',
      'employee_id': 'EMP01005',
      'employee_name': 'Dr. Sarafat Ulla',
      'speciality': 'Internal Medicine',
      'branch': 'Clinic_01',
      'profileurl': 'profile.jpg',
      'busunit_name': 'Clinic_01',
      'Appmnt_Dt': '2026-06-24',
      'Appmnt_Time': '10:30 PM',
      'id_employee': 143,
      'token_no': 'SA-30',
    });

    expect(model.appointmentDateTime, DateTime(2026, 6, 24, 22, 30));
  });
}
