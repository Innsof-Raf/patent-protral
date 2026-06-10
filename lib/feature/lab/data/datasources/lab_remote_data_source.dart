import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
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
  final http.Client client;

  LabRemoteDataSourceImpl({required this.client});

  @override
  Future<List<ItemModel>> getItems({required String token}) async {
    final data = {"CONTENT": "{\"id_bus_unit\":1}", "TYPE": "PP0029"};
    final response = await client.post(
      Uri.parse(ConstantUrls.serviceUrl),
      body: jsonEncode(data),
      headers: {
        HttpHeaders.authorizationHeader: 'Bearer $token',
        'Content-type': 'application/json',
      },
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final List<dynamic> responseData = jsonDecode(response.body);
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
      Uri.parse(ConstantUrls.serviceUrl),
      body: jsonEncode(data),
      headers: {
        'Content-type': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      return jsonDecode(response.body) as Map<String, dynamic>;
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
      Uri.parse(ConstantUrls.serviceUrl),
      body: jsonEncode(data),
      headers: {
        'Content-type': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      return ItemModel.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    }

    throw Exception('Server Failure');
  }

  @override
  Future<List<PackageModel>> getPackages({required String token}) async {
    final data = {"CONTENT": "{\"id_bus_unit\":1}", "TYPE": "PP0029"};
    final response = await client.post(
      Uri.parse(ConstantUrls.serviceUrl),
      body: jsonEncode(data),
      headers: {
        HttpHeaders.authorizationHeader: 'Bearer $token',
        'Content-type': 'application/json',
      },
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final List<dynamic> responseData = jsonDecode(response.body);
      return responseData
          .map((raw) => PackageModel.fromJson(raw as Map<String, dynamic>))
          .toList();
    }

    throw Exception('Server Failure');
  }
}
