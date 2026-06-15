import 'package:patient_portal/core/resources/api_agent.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/feature/home/data/models/home_data_model.dart';

abstract class HomeRemoteDataSource {
  Future<HomeDataModel> getHomeData({
    required String token,
    required int idBusunit,
  });
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final ApiAgent client;

  HomeRemoteDataSourceImpl({required this.client});

  @override
  Future<HomeDataModel> getHomeData({
    required String token,
    required int idBusunit,
  }) async {
    final data = serviceRequest(type: 'PP0038', content: {'id_client': 1});

    final response = await client.post(
      url: ConstantUrls.serviceUrl,
      body: data,
      token: token,
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final responseData = decodeResponseData(response.data);
      return HomeDataModel.fromJson(responseData as Map<String, dynamic>);
    }

    throw Exception('Server Failure');
  }
}
