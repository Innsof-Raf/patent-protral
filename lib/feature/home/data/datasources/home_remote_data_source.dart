import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:patient_portal/feature/home/data/models/home_data_model.dart';
import 'package:patient_portal/core/resources/urls.dart';

abstract class HomeRemoteDataSource {
  Future<HomeDataModel> getHomeData({
    required String token,
    required int idBusunit,
  });
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final Dio client;

  HomeRemoteDataSourceImpl({required this.client});

  @override
  Future<HomeDataModel> getHomeData({
    required String token,
    required int idBusunit,
  }) async {
    final Map<String, dynamic> data = {
      "CONTENT": "{\"section\":1,\"lang\":\"EN\",\"id_busunit\":$idBusunit}",
      "TYPE": "PP0032",
    };

    final response = await client.post(
      ConstantUrls.serviceUrl,
      data: data,
      options: Options(
        headers: {
          'Content-type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      ),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final responseData = response.data is String
          ? jsonDecode(response.data as String)
          : response.data;
      return HomeDataModel.fromJson(responseData);
    }

    throw Exception('Server Failure');
  }
}
