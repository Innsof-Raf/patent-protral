import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:patient_portal/feature/home/data/models/home_data_model.dart';
import 'package:patient_portal/resources/urls.dart';

abstract class HomeRemoteDataSource {
  Future<HomeDataModel> getHomeData({
    required String token,
    required int idBusunit,
  });
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final http.Client client;

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
      Uri.parse(ConstantUrls.serviceUrl),
      headers: {
        'Content-type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      body: jsonEncode(data),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final responseData = jsonDecode(response.body);
      return HomeDataModel.fromJson(responseData);
    }

    throw Exception('Server Failure');
  }
}
