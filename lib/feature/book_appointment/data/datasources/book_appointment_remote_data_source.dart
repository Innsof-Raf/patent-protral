import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
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
  final Dio client;

  BookAppointmentRemoteDataSourceImpl({required this.client});

  @override
  Future<ShiftModel> getAvailableSlots({
    required DateTime date,
    required int idDoctor,
    required String token,
  }) async {
    final data = serviceRequest(
      type: 'PP0003',
      content: {
        "id_doctor": idDoctor,
        "shift_dt": DateFormat('yyyy-MM-dd').format(date),
      },
    );
    final response = await client.post(
      ConstantUrls.serviceUrl,
      data: data,
      options: Options(headers: {'Content-Type': 'application/json'}),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final Map<String, dynamic> responseData = decodeResponseData(
        response.data,
      );
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
    final data = serviceRequest(
      type: 'PP0008',
      content: {
        "id": 0,
        "id_employee": idDoctor,
        "id_busunit": 1,
        "appmnt_mode": "Offline",
        "appmnt_dttm": appointmentDateTime.toIso8601String(),
        "appmnt_dt": DateFormat('yyyy-MM-dd').format(appointmentDateTime),
        "appmnt_time": DateFormat('hh:mm a').format(appointmentDateTime),
        "id_customer": idMember,
        "mobile_no": mobileNo,
        "patient_mobileno": mobileNo,
      },
    );
    final response = await client.post(
      ConstantUrls.serviceUrl,
      data: data,
      options: Options(
        headers: {
          HttpHeaders.authorizationHeader: 'Bearer $token',
          'Content-Type': 'application/json',
        },
      ),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final Map<String, dynamic> responseData = decodeResponseData(
        response.data,
      );
      if (responseData["status"] == true ||
          responseData["status"] == "1" ||
          responseData["status"] == 1 ||
          responseData.containsKey("data")) {
        final appointmentData = responseData["data"] is Map
            ? responseData["data"]
            : responseData;
        return AppointmentModel.fromJson(
          appointmentData as Map<String, dynamic>,
        );
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
    final data = serviceRequest(
      type: 'PP0009',
      content: {
        "id": idAppointment,
        "appmnt_dttm": appointmentDateTime.toIso8601String(),
        "appmnt_dt": DateFormat('yyyy-MM-dd').format(appointmentDateTime),
        "appmnt_time": DateFormat('hh:mm a').format(appointmentDateTime),
      },
    );
    final response = await client.post(
      ConstantUrls.serviceUrl,
      data: data,
      options: Options(
        headers: {
          HttpHeaders.authorizationHeader: 'Bearer $token',
          'Content-Type': 'application/json',
        },
      ),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final Map<String, dynamic> responseData = decodeResponseData(
        response.data,
      );
      if (responseData["status"] == true ||
          responseData["status"] == 1 ||
          responseData["status"] == "1" ||
          responseData.containsKey("data")) {
        final appointmentData = responseData["data"] is Map
            ? responseData["data"]
            : responseData;
        return AppointmentModel.fromJson(
          appointmentData as Map<String, dynamic>,
        );
      } else {
        throw Exception('Server Failure');
      }
    } else {
      throw Exception('Server Failure');
    }
  }
}
