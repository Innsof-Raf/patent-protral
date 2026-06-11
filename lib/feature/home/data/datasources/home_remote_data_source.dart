import 'package:dio/dio.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
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
    final data = serviceRequest(type: 'PP0038', content: {'id_client': 1});

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
      final responseData = decodeResponseData(response.data);
      if (responseData is Map<String, dynamic> &&
          responseData.containsKey('banner') &&
          !responseData.containsKey('ad_banner')) {
        return HomeDataModel.fromJson({
          'ad_banner': responseData['banner'],
          'speciality': const [],
          'insurance': const [],
          'package_banner': const [],
          'notification_count': 0,
        });
      }
      return HomeDataModel.fromJson(responseData as Map<String, dynamic>);
    }

    throw Exception('Server Failure');
  }
}
