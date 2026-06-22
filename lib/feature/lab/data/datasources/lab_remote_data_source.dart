import 'dart:developer';

import 'package:patient_portal/core/error/exceptions.dart';
import 'package:patient_portal/core/resources/api_agent.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/feature/lab/data/models/item_model.dart';
import 'package:patient_portal/feature/lab/data/models/package_model.dart';

import 'package:patient_portal/feature/lab/domain/usecases/params/lab_params.dart';

abstract class LabRemoteDataSource {
  Future<List<ItemModel>> getItems(LabParams params);

  Future<Map<String, dynamic>> updateItemInCart(LabParams params);

  Future<ItemModel> getItemDetail(LabParams params);

  Future<List<PackageModel>> getPackages(LabParams params);
}

class LabRemoteDataSourceImpl implements LabRemoteDataSource {
  final ApiAgent client;

  LabRemoteDataSourceImpl({required this.client});

  @override
  Future<List<ItemModel>> getItems(LabParams params) async {
    try {
      final p = params.maybeMap(
        getItems: (value) => value,
        orElse: () => throw ServerException('Invalid params'),
      );

      final data = serviceRequest(type: 'PP0029', content: {'id_bus_unit': 1});
      final response = await client.post(
        url: ConstantUrls.serviceUrl,
        body: data,
        token: p.token,
      );

      final List<dynamic> responseData = decodeResponseData(response.data);
      return responseData
          .map((raw) => ItemModel.fromJson(raw as Map<String, dynamic>))
          .toList();
    } on ServerException {
      rethrow;
    } catch (e, stackTrace) {
      log('getItems Error', error: e, stackTrace: stackTrace);
      throw ServerException(e.toString());
    }
  }

  @override
  Future<Map<String, dynamic>> updateItemInCart(LabParams params) async {
    try {
      final p = params.maybeMap(
        updateItemInCart: (value) => value,
        orElse: () => throw ServerException('Invalid params'),
      );

      final data = serviceRequest(type: 'PP0037', content: p.toJson());
      final response = await client.post(
        url: ConstantUrls.serviceUrl,
        body: data,
        token: p.token,
      );

      return decodeResponseData(response.data) as Map<String, dynamic>;
    } on ServerException {
      rethrow;
    } catch (e, stackTrace) {
      log('updateItemInCart Error', error: e, stackTrace: stackTrace);
      throw ServerException(e.toString());
    }
  }

  @override
  Future<ItemModel> getItemDetail(LabParams params) async {
    try {
      final p = params.maybeMap(
        getItemDetail: (value) => value,
        orElse: () => throw ServerException('Invalid params'),
      );

      final data = serviceRequest(type: 'PP0037', content: p.toJson());
      final response = await client.post(
        url: ConstantUrls.serviceUrl,
        body: data,
        token: p.token,
      );

      final responseData = decodeResponseData(response.data);
      return ItemModel.fromJson(responseData);
    } on ServerException {
      rethrow;
    } catch (e, stackTrace) {
      log('getItemDetail Error', error: e, stackTrace: stackTrace);
      throw ServerException(e.toString());
    }
  }

  @override
  Future<List<PackageModel>> getPackages(LabParams params) async {
    try {
      final p = params.maybeMap(
        getPackages: (value) => value,
        orElse: () => throw ServerException('Invalid params'),
      );

      final data = serviceRequest(type: 'PP0029', content: {'id_bus_unit': 1});
      final response = await client.post(
        url: ConstantUrls.serviceUrl,
        body: data,
        token: p.token,
      );

      final List<dynamic> responseData = decodeResponseData(response.data);
      return responseData
          .map((raw) => PackageModel.fromJson(raw as Map<String, dynamic>))
          .toList();
    } on ServerException {
      rethrow;
    } catch (e, stackTrace) {
      log('getPackages Error', error: e, stackTrace: stackTrace);
      throw ServerException(e.toString());
    }
  }
}
