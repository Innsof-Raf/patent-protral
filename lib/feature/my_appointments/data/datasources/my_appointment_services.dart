import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:patient_portal/core/injection_container.dart';
import 'package:patient_portal/core/resources/api_agent.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
import 'package:patient_portal/core/resources/constant_messages.dart';
import 'package:patient_portal/core/resources/error_model.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/feature/my_appointments/data/models/my_appointment_model.dart';

class MyAppointmentServices {
  static final ApiAgent _apiAgent = sl<ApiAgent>();

  static Future<Either<ErrorModel, List<MyAppointmentModel>>>
  getMyAppointments({
    required String mobileNumber,
    required String token,
  }) async {
    try {
      final data = serviceRequest(
        type: 'PP0016',
        content: {'mobile_no': mobileNumber, 'status': 'ALL'},
      );
      final response = await _apiAgent.post(
        url: ConstantUrls.serviceUrl,
        body: data,
        token: token,
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final List responseData = decodeResponseData(response.data);

        final List<MyAppointmentModel> myAppointmentsList = [];
        for (final appoints in responseData) {
          myAppointmentsList.add(MyAppointmentModel.fromJson(appoints));
        }
        return Right(myAppointmentsList);
      } else {
        return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        return Left(
          ErrorModel(message: ConstantMessages.connectionTimeOutFailureMessage),
        );
      } else if (e.error is SocketException) {
        return Left(
          ErrorModel(message: ConstantMessages.noNetworkErrorMessage),
        );
      }
      return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
    } catch (e) {
      return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
    }
  }

  static Future<Either<ErrorModel, Map>> cancelAppointment({
    required int appointmentId,
    required String token,
  }) async {
    try {
      final data = serviceRequest(
        type: 'HMS0089',
        content: {'id_appmnt': appointmentId},
      );
      final response = await _apiAgent.post(
        url: ConstantUrls.serviceUrl,
        body: data,
        token: token,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final responseData = decodeResponseData(response.data);

        if (responseData['status'] == true ||
            responseData['STATUS'] == 1 ||
            responseData['status'] == 1) {
          return Right(responseData);
        } else {
          return Left(ErrorModel(message: 'Appointment Cancellation Failed'));
        }
      } else {
        return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        return Left(
          ErrorModel(message: ConstantMessages.connectionTimeOutFailureMessage),
        );
      } else if (e.error is SocketException) {
        return Left(
          ErrorModel(message: ConstantMessages.noNetworkErrorMessage),
        );
      }
      return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
    } catch (e) {
      return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
    }
  }
}
