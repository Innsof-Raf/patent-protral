import 'dart:async';
import 'dart:developer';

import 'package:patient_portal/core/error/exceptions.dart';
import 'package:patient_portal/core/resources/api_agent.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/feature/my_appointments/data/models/my_appointment_model.dart';
import 'package:patient_portal/feature/my_appointments/domain/usecases/params/my_appointments_params.dart';

abstract class MyAppointmentsRemoteDataSource {
  Future<List<MyAppointmentModel>> getMyAppointments(
    MyAppointmentsParams params,
  );

  Future<Map<String, dynamic>> cancelAppointment(MyAppointmentsParams params);
}

class MyAppointmentsRemoteDataSourceImpl
    implements MyAppointmentsRemoteDataSource {
  final ApiAgent client;

  MyAppointmentsRemoteDataSourceImpl({required this.client});

  @override
  Future<List<MyAppointmentModel>> getMyAppointments(
    MyAppointmentsParams params,
  ) async {
    try {
      final p = params.maybeMap(
        getMyAppointments: (value) => value,
        orElse: () => throw ServerException('Invalid params'),
      );

      final data = serviceRequest(type: 'PP0016', content: p.toJson());
      final response = await client.post(
        url: ConstantUrls.serviceUrl,
        body: data,
        token: p.token,
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
  Future<Map<String, dynamic>> cancelAppointment(
    MyAppointmentsParams params,
  ) async {
    try {
      final p = params.maybeMap(
        cancelAppointment: (value) => value,
        orElse: () => throw ServerException('Invalid params'),
      );

      final data = serviceRequest(type: 'HMS0089', content: p.toJson());
      final response = await client.post(
        url: ConstantUrls.serviceUrl,
        body: data,
        token: p.token,
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
