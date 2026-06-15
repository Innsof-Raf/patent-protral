import 'dart:io';

import 'package:dio/dio.dart';
import 'package:patient_portal/core/resources/api_agent.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/feature/notification/data/models/notification_model.dart';
import 'package:patient_portal/feature/notification/domain/usecases/params/notification_params.dart';

abstract class NotificationRemoteDataSource {
  Future<List<NotificationModel>> getNotifications({
    required NotificationParams params,
  });
}

class NotificationRemoteDataSourceImpl implements NotificationRemoteDataSource {
  final ApiAgent client;

  NotificationRemoteDataSourceImpl({required this.client});

  @override
  Future<List<NotificationModel>> getNotifications({
    required NotificationParams params,
  }) async {
    try {
      final data = serviceRequest(
        type: '', //TODO : complete type
        content: params.toJson(),
      );

      final response = await client.post(
        url: ConstantUrls.serviceUrl,
        body: data,
        token: params.token,
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> responseData = decodeResponseData(response.data);
        return responseData
            .map(
              (raw) => NotificationModel.fromJson(raw as Map<String, dynamic>),
            )
            .toList();
      }

      throw Exception('Server Failure');
    } on DioException catch (e) {
      if (e.error is SocketException) {
        throw Exception('No Network');
      } else if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        throw Exception('Connection Timeout');
      }
      throw Exception(e.message ?? 'Server Failure');
    } catch (e) {
      throw Exception('Server Failure');
    }
  }
}
