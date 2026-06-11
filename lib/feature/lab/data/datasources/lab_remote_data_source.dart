import 'dart:convert';

import 'package:dio/dio.dart';
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
  final Dio client;

  LabRemoteDataSourceImpl({required this.client});

  @override
  Future<List<ItemModel>> getItems({required String token}) async {
    final data = {"CONTENT": "{\"id_bus_unit\":1}", "TYPE": "PP0029"};
    final response = await client.post(
      ConstantUrls.serviceUrl,
      data: data,
      options: Options(
        headers: {
          'Authorization': 'Bearer $token',
          'Content-type': 'application/json',
        },
      ),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final List<dynamic> responseData = response.data is String
          ? jsonDecode(response.data as String) as List<dynamic>
          : response.data as List<dynamic>;
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
    final data = {
      "CONTENT": "{\"id_item\":$idItem,\"id_user\":$idUser}",
      "TYPE": "PP0037",
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
      return response.data is String
          ? jsonDecode(response.data as String) as Map<String, dynamic>
          : response.data as Map<String, dynamic>;
    }

    throw Exception('Server Failure');
  }

  @override
  Future<ItemModel> getItemDetail({
    required int idItem,
    required String token,
  }) async {
    final data = {"CONTENT": "{\"id_item\":$idItem}", "TYPE": "PP0037"};
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
          ? jsonDecode(response.data as String) as Map<String, dynamic>
          : response.data as Map<String, dynamic>;
      return ItemModel.fromJson(responseData);
    }

    throw Exception('Server Failure');
  }

  @override
  Future<List<PackageModel>> getPackages({required String token}) async {
    final data = {"CONTENT": "{\"id_bus_unit\":1}", "TYPE": "PP0029"};
    final response = await client.post(
      ConstantUrls.serviceUrl,
      data: data,
      options: Options(
        headers: {
          'Authorization': 'Bearer $token',
          'Content-type': 'application/json',
        },
      ),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final List<dynamic> responseData = response.data is String
          ? jsonDecode(response.data as String) as List<dynamic>
          : response.data as List<dynamic>;
      return responseData
          .map((raw) => PackageModel.fromJson(raw as Map<String, dynamic>))
          .toList();
    }

    throw Exception('Server Failure');
  }
}
