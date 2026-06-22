import 'dart:developer';

import 'package:patient_portal/core/error/exceptions.dart';
import 'package:patient_portal/core/resources/api_agent.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/feature/home/data/models/home_data_model.dart';

import 'package:patient_portal/feature/home/domain/usecases/params/home_params.dart';

abstract class HomeRemoteDataSource {
  Future<HomeDataModel> getHomeData(HomeParams params);
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final ApiAgent client;

  HomeRemoteDataSourceImpl({required this.client});

  @override
  Future<HomeDataModel> getHomeData(HomeParams params) async {
    try {
      final p = params.maybeMap(
        getHomeData: (value) => value,
        orElse: () => throw ServerException('Invalid params'),
      );

      final data = serviceRequest(type: 'PP0038', content: p.toJson());

      final response = await client.post(
        url: ConstantUrls.serviceUrl,
        body: data,
        token: p.token,
      );

      final responseData = decodeResponseData(response.data);
      return HomeDataModel.fromJson(responseData as Map<String, dynamic>);
    } on ServerException {
      rethrow;
    } catch (e, stackTrace) {
      log('getHomeData Error', error: e, stackTrace: stackTrace);
      throw ServerException(e.toString());
    }
  }
}
