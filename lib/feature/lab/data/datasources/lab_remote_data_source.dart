import 'package:patient_portal/core/resources/api_agent.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
import 'package:patient_portal/feature/lab/data/models/item_model.dart';
import 'package:patient_portal/feature/lab/data/models/package_model.dart';
import 'package:patient_portal/core/resources/urls.dart';

abstract class LabRemoteDataSource {
  Future<List<ItemModel>> getItems({required String token});

  Future<Map<String, dynamic>> updateItemInCart({
    required int idUser,
    required int idItem,
    required String token,
  });

  Future<ItemModel> getItemDetail({required int idItem, required String token});

  Future<List<PackageModel>> getPackages({required String token});
}

class LabRemoteDataSourceImpl implements LabRemoteDataSource {
  final ApiAgent client;

  LabRemoteDataSourceImpl({required this.client});

  @override
  Future<List<ItemModel>> getItems({required String token}) async {
    final data = serviceRequest(type: 'PP0029', content: {"id_bus_unit": 1});
    final response = await client.post(
      url: ConstantUrls.serviceUrl,
      body: data,
      token: token,
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final List<dynamic> responseData = decodeResponseData(response.data);
      return responseData
          .map((raw) => ItemModel.fromJson(raw as Map<String, dynamic>))
          .toList();
    }

    throw Exception('Server Failure');
  }

  @override
  Future<Map<String, dynamic>> updateItemInCart({
    required int idUser,
    required int idItem,
    required String token,
  }) async {
    final data = serviceRequest(
      type: 'PP0037',
      content: {"id_item": idItem, "id_user": idUser},
    );
    final response = await client.post(
      url: ConstantUrls.serviceUrl,
      body: data,
      token: token,
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      return decodeResponseData(response.data) as Map<String, dynamic>;
    }

    throw Exception('Server Failure');
  }

  @override
  Future<ItemModel> getItemDetail({
    required int idItem,
    required String token,
  }) async {
    final data = serviceRequest(type: 'PP0037', content: {"id_item": idItem});
    final response = await client.post(
      url: ConstantUrls.serviceUrl,
      body: data,
      token: token,
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final responseData = decodeResponseData(response.data);
      return ItemModel.fromJson(responseData);
    }

    throw Exception('Server Failure');
  }

  @override
  Future<List<PackageModel>> getPackages({required String token}) async {
    final data = serviceRequest(type: 'PP0029', content: {"id_bus_unit": 1});
    final response = await client.post(
      url: ConstantUrls.serviceUrl,
      body: data,
      token: token,
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final List<dynamic> responseData = decodeResponseData(response.data);
      return responseData
          .map((raw) => PackageModel.fromJson(raw as Map<String, dynamic>))
          .toList();
    }

    throw Exception('Server Failure');
  }
}
