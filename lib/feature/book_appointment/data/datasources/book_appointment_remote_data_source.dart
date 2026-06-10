import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:patient_portal/feature/book_appointment/data/models/shift_model.dart';
import 'package:patient_portal/core/resources/common_models/appointment_model.dart/appointment_model.dart';
import 'package:patient_portal/core/resources/urls.dart';

abstract class BookAppointmentRemoteDataSource {
  Future<ShiftModel> getAvailableSlots({
    required DateTime date,
    required int idDoctor,
    required String token,
  });

  Future<AppointmentModel> bookAppointment({
    required int idDoctor,
    required DateTime appointmentDateTime,
    required String mobileNo,
    required int idMember,
    required String token,
  });

  Future<AppointmentModel> rescheduleAppointment({
    required DateTime appointmentDateTime,
    required int idAppointment,
    required String token,
  });
}

class BookAppointmentRemoteDataSourceImpl
    implements BookAppointmentRemoteDataSource {
  final http.Client client;

  BookAppointmentRemoteDataSourceImpl({required this.client});

  @override
  Future<ShiftModel> getAvailableSlots({
    required DateTime date,
    required int idDoctor,
    required String token,
  }) async {
    final Map data = {
      "CONTENT": jsonEncode({
        "id_doctor": idDoctor,
        "shift_dt": DateFormat('yyyy-MM-dd').format(date),
      }),
      "TYPE": "PP0003",
    };
    final response = await client.post(
      Uri.parse(ConstantUrls.serviceUrl),
      body: jsonEncode(data),
      headers: {'Content-type': 'application/json'},
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final Map<String, dynamic> responseData = jsonDecode(response.body);
      return ShiftModel.fromJson(responseData);
    } else {
      throw Exception('Server Failure');
    }
  }

  @override
  Future<AppointmentModel> bookAppointment({
    required int idDoctor,
    required DateTime appointmentDateTime,
    required String mobileNo,
    required int idMember,
    required String token,
  }) async {
    final Map data = {
      "CONTENT": jsonEncode({
        "id": 0,
        "id_employee": idDoctor,
        "id_busunit": 1,
        "appmnt_mode": "walk-in",
        "appmnt_dttm": appointmentDateTime.toString(),
        "id_customer": idMember,
        "mobile_no": mobileNo,
      }),
      "TYPE": "PP0008",
    };
    final response = await client.post(
      Uri.parse(ConstantUrls.serviceUrl),
      body: jsonEncode(data),
      headers: {
        HttpHeaders.authorizationHeader: 'Bearer $token',
        'Content-type': 'application/json',
      },
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final Map<String, dynamic> responseData = jsonDecode(response.body);
      if (responseData["status"] == "1") {
        return AppointmentModel.fromJson(responseData["data"]);
      } else {
        throw Exception('Appointment Booking Failed');
      }
    } else {
      throw Exception('Server Failure');
    }
  }

  @override
  Future<AppointmentModel> rescheduleAppointment({
    required DateTime appointmentDateTime,
    required int idAppointment,
    required String token,
  }) async {
    final Map data = {
      "CONTENT": jsonEncode({
        "id_appnmt": idAppointment,
        "appmnt_dttm": appointmentDateTime.toString(),
      }),
      "TYPE": "PP0028",
    };
    final response = await client.post(
      Uri.parse(ConstantUrls.serviceUrl),
      body: jsonEncode(data),
      headers: {
        HttpHeaders.authorizationHeader: 'Bearer $token',
        'Content-type': 'application/json',
      },
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final Map<String, dynamic> responseData = jsonDecode(response.body);
      if (responseData["status"] == 1) {
        return AppointmentModel.fromJson(responseData["data"]);
      } else {
        throw Exception('Server Failure');
      }
    } else {
      throw Exception('Server Failure');
    }
  }
}
