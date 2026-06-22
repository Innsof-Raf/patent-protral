import 'dart:async';
import 'dart:developer';

import 'package:intl/intl.dart';
import 'package:patient_portal/core/error/exceptions.dart';
import 'package:patient_portal/core/resources/api_agent.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
import 'package:patient_portal/core/resources/common_models/appointment_model.dart/appointment_model.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/feature/book_appointment/data/models/shift_model.dart';

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
  final ApiAgent client;

  BookAppointmentRemoteDataSourceImpl({required this.client});

  @override
  Future<ShiftModel> getAvailableSlots({
    required DateTime date,
    required int idDoctor,
    required String token,
  }) async {
    try {
      final data = serviceRequest(
        type: 'PP0003',
        content: {
          'id_doctor': idDoctor,
          'shift_dt': DateFormat('yyyy-MM-dd').format(date),
        },
      );
      final response = await client.post(
        url: ConstantUrls.serviceUrl,
        body: data,
      );

      final Map<String, dynamic> responseData = decodeResponseData(
        response.data,
      );
      return ShiftModel.fromJson(responseData);
    } on ServerException {
      rethrow;
    } catch (e, stackTrace) {
      log('getAvailableSlots Error', error: e, stackTrace: stackTrace);
      throw ServerException(e.toString());
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
    try {
      final data = serviceRequest(
        type: 'PP0008',
        content: {
          'id': 0,
          'id_employee': idDoctor,
          'id_busunit': 1,
          'appmnt_mode': 'Offline',
          'appmnt_dttm': appointmentDateTime.toIso8601String(),
          'appmnt_dt': DateFormat('yyyy-MM-dd').format(appointmentDateTime),
          'appmnt_time': DateFormat('hh:mm a').format(appointmentDateTime),
          'id_customer': idMember,
          'mobile_no': mobileNo,
          'patient_mobileno': mobileNo,
        },
      );
      final response = await client.post(
        url: ConstantUrls.serviceUrl,
        body: data,
        token: token,
      );

      final responseData = decodeResponseData(response.data);

      if (responseData is Map) {
        if (responseData['status'] == true ||
            responseData['status'] == '1' ||
            responseData['status'] == 1 ||
            responseData.containsKey('data')) {
          final appointmentData = responseData['data'] is Map
              ? responseData['data']
              : responseData;

          if (appointmentData is Map<String, dynamic>) {
            return AppointmentModel.fromJson(appointmentData);
          } else if (appointmentData is Map) {
            return AppointmentModel.fromJson(
              Map<String, dynamic>.from(appointmentData),
            );
          }
        }
      } else if (responseData is List && responseData.isNotEmpty) {
        final firstItem = responseData.first;
        if (firstItem is Map<String, dynamic>) {
          return AppointmentModel.fromJson(firstItem);
        } else if (firstItem is Map) {
          return AppointmentModel.fromJson(
            Map<String, dynamic>.from(firstItem),
          );
        }
      }

      throw ServerException(
        responseData is String ? responseData : 'Appointment Booking Failed',
      );
    } on ServerException {
      rethrow;
    } catch (e, stackTrace) {
      log('bookAppointment Error', error: e, stackTrace: stackTrace);
      throw ServerException(e.toString());
    }
  }

  @override
  Future<AppointmentModel> rescheduleAppointment({
    required DateTime appointmentDateTime,
    required int idAppointment,
    required String token,
  }) async {
    try {
      final data = serviceRequest(
        type: 'PP0009',
        content: {
          'id': idAppointment,
          'appmnt_dttm': appointmentDateTime.toIso8601String(),
          'appmnt_dt': DateFormat('yyyy-MM-dd').format(appointmentDateTime),
          'appmnt_time': DateFormat('hh:mm a').format(appointmentDateTime),
        },
      );
      final response = await client.post(
        url: ConstantUrls.serviceUrl,
        body: data,
        token: token,
      );

      final responseData = decodeResponseData(response.data);

      if (responseData is Map) {
        if (responseData['status'] == true ||
            responseData['status'] == 1 ||
            responseData['status'] == '1' ||
            responseData.containsKey('data')) {
          final appointmentData = responseData['data'] is Map
              ? responseData['data']
              : responseData;

          if (appointmentData is Map<String, dynamic>) {
            return AppointmentModel.fromJson(appointmentData);
          } else if (appointmentData is Map) {
            return AppointmentModel.fromJson(
              Map<String, dynamic>.from(appointmentData),
            );
          }
        }
      } else if (responseData is List && responseData.isNotEmpty) {
        final firstItem = responseData.first;
        if (firstItem is Map<String, dynamic>) {
          return AppointmentModel.fromJson(firstItem);
        } else if (firstItem is Map) {
          return AppointmentModel.fromJson(
            Map<String, dynamic>.from(firstItem),
          );
        }
      }

      throw ServerException(
        responseData is String ? responseData : 'Reschedule Appointment Failed',
      );
    } on ServerException {
      rethrow;
    } catch (e, stackTrace) {
      log('rescheduleAppointment Error', error: e, stackTrace: stackTrace);
      throw ServerException(e.toString());
    }
  }
}
