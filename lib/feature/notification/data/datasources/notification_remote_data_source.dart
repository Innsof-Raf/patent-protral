import 'dart:developer';

import 'package:patient_portal/core/error/exceptions.dart';
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

      final List<dynamic> responseData = decodeResponseData(response.data);
      return responseData
          .map((raw) => NotificationModel.fromJson(raw as Map<String, dynamic>))
          .toList();
    } on ServerException {
      rethrow;
    } catch (e, stackTrace) {
      log('getNotifications Error', error: e, stackTrace: stackTrace);
      throw ServerException(e.toString());
    }
  }
}
