import 'dart:async';
import 'dart:developer';

import 'package:patient_portal/core/error/exceptions.dart';
import 'package:patient_portal/core/resources/api_agent.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/feature/my_appointments/data/models/my_appointment_model.dart';

abstract class MyAppointmentsRemoteDataSource {
  Future<List<MyAppointmentModel>> getMyAppointments({
    required String mobileNumber,
    required String token,
  });

  Future<Map<String, dynamic>> cancelAppointment({
    required int appointmentId,
    required String token,
  });
}

class MyAppointmentsRemoteDataSourceImpl
    implements MyAppointmentsRemoteDataSource {
  final ApiAgent client;

  MyAppointmentsRemoteDataSourceImpl({required this.client});

  @override
  Future<List<MyAppointmentModel>> getMyAppointments({
    required String mobileNumber,
    required String token,
  }) async {
    try {
      final data = serviceRequest(
        type: 'PP0016',
        content: {'mobile_no': mobileNumber, 'status': 'ALL'},
      );
      final response = await client.post(
        url: ConstantUrls.serviceUrl,
        body: data,
        token: token,
      );

      final List responseData = decodeResponseData(response.data);
      return responseData
          .map((raw) => MyAppointmentModel.fromJson(raw))
          .toList();
    } on ServerException {
      rethrow;
    } catch (e, stackTrace) {
      log('getMyAppointments Error', error: e, stackTrace: stackTrace);
      throw ServerException(e.toString());
    }
  }

  @override
  Future<Map<String, dynamic>> cancelAppointment({
    required int appointmentId,
    required String token,
  }) async {
    try {
      final data = serviceRequest(
        type: 'HMS0089',
        content: {'id_appmnt': appointmentId},
      );
      final response = await client.post(
        url: ConstantUrls.serviceUrl,
        body: data,
        token: token,
      );

      final responseData = decodeResponseData(response.data);

      if (responseData['status'] == true ||
          responseData['STATUS'] == 1 ||
          responseData['status'] == 1) {
        return responseData as Map<String, dynamic>;
      } else {
        throw ServerException('Appointment Cancellation Failed');
      }
    } on ServerException {
      rethrow;
    } catch (e, stackTrace) {
      log('cancelAppointment Error', error: e, stackTrace: stackTrace);
      throw ServerException(e.toString());
    }
  }
}
