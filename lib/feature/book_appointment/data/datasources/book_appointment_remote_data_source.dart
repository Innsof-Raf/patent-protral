import 'dart:async';
import 'dart:developer';

import 'package:intl/intl.dart';
import 'package:patient_portal/core/error/exceptions.dart';
import 'package:patient_portal/core/resources/api_agent.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
import 'package:patient_portal/core/resources/common_models/appointment_model.dart/appointment_model.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/feature/book_appointment/data/models/shift_model.dart';
import 'package:patient_portal/feature/book_appointment/domain/usecases/params/book_appointment_params.dart';

abstract class BookAppointmentRemoteDataSource {
  Future<ShiftModel> getAvailableSlots(BookAppointmentParams params);

  Future<AppointmentModel> bookAppointment(BookAppointmentParams params);

  Future<AppointmentModel> rescheduleAppointment(BookAppointmentParams params);
}

class BookAppointmentRemoteDataSourceImpl
    implements BookAppointmentRemoteDataSource {
  final ApiAgent client;

  BookAppointmentRemoteDataSourceImpl({required this.client});

  @override
  Future<ShiftModel> getAvailableSlots(BookAppointmentParams params) async {
    try {
      final p = params.maybeMap(
        getAvailableSlots: (value) => value,
        orElse: () => throw ServerException('Invalid params'),
      );

      final data = serviceRequest(
        type: 'PP0003',
        content: p.toJson()
          ..addAll({'shift_dt': DateFormat('yyyy-MM-dd').format(p.date)}),
      );
      final response = await client.post(
        url: ConstantUrls.serviceUrl,
        body: data,
      );

      final responseData = decodeResponseData(response.data);

      if (responseData is Map) {
        final data = responseData['data'] is Map
            ? responseData['data']
            : responseData;
        if (data is Map<String, dynamic>) {
          return ShiftModel.fromJson(data);
        } else if (data is Map) {
          return ShiftModel.fromJson(Map<String, dynamic>.from(data));
        }
      }

      throw ServerException(
        responseData is String
            ? responseData
            : 'Failed to load available slots',
      );
    } on ServerException {
      rethrow;
    } catch (e, stackTrace) {
      log('getAvailableSlots Error', error: e, stackTrace: stackTrace);
      throw ServerException(e.toString());
    }
  }

  @override
  Future<AppointmentModel> bookAppointment(BookAppointmentParams params) async {
    try {
      final p = params.maybeMap(
        bookAppointment: (value) => value,
        orElse: () => throw ServerException('Invalid params'),
      );

      final data = serviceRequest(
        type: 'PP0008',
        content: p.toJson()
          ..addAll({
            'appmnt_dt': DateFormat('yyyy-MM-dd').format(p.appointmentDateTime),
            'appmnt_time': DateFormat('hh:mm a').format(p.appointmentDateTime),
            'patient_mobileno': p.mobileNo,
          }),
      );
      final response = await client.post(
        url: ConstantUrls.serviceUrl,
        body: data,
        token: p.token,
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
  Future<AppointmentModel> rescheduleAppointment(
    BookAppointmentParams params,
  ) async {
    try {
      final p = params.maybeMap(
        rescheduleAppointment: (value) => value,
        orElse: () => throw ServerException('Invalid params'),
      );

      final data = serviceRequest(
        type: 'PP0009',
        content: p.toJson()
          ..addAll({
            'appmnt_dt': DateFormat('yyyy-MM-dd').format(p.appointmentDateTime),
            'appmnt_time': DateFormat('hh:mm a').format(p.appointmentDateTime),
          }),
      );
      final response = await client.post(
        url: ConstantUrls.serviceUrl,
        body: data,
        token: p.token,
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
