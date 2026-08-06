import 'dart:developer';

import 'package:patient_portal/core/error/exceptions.dart';
import 'package:patient_portal/core/resources/api_agent.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/feature/home/data/models/home_data_model.dart';
import 'package:patient_portal/feature/home/data/models/tree_detail_item_model.dart';
import 'package:patient_portal/feature/home/data/models/tree_detail_model.dart';
import 'package:patient_portal/feature/home/domain/usecases/params/home_params.dart';

abstract class HomeRemoteDataSource {
  Future<HomeDataModel> getHomeData(HomeParams params);
  Future<List<TreeDetailModel>> getTreeDetail(HomeParams params);
  Future<List<TreeDetailItemModel>> getTreeDetailItem(HomeParams params);
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

  @override
  Future<List<TreeDetailModel>> getTreeDetail(HomeParams params) async {
    try {
      final p = params.maybeMap(
        getTreeDetail: (value) => value,
        orElse: () => throw ServerException('Invalid params'),
      );

      final data = serviceRequest(type: 'PP0042', content: p.toJson());

      final response = await client.post(
        url: ConstantUrls.serviceUrl,
        body: data,
        token: p.token,
      );

      final responseData = decodeResponseData(response.data);
      if (responseData is List) {
        return responseData
            .map(
              (item) => TreeDetailModel.fromJson(item as Map<String, dynamic>),
            )
            .toList();
      }
      return [];
    } on ServerException {
      rethrow;
    } catch (e, stackTrace) {
      log('getTreeDetail Error', error: e, stackTrace: stackTrace);
      throw ServerException(e.toString());
    }
  }

  @override
  Future<List<TreeDetailItemModel>> getTreeDetailItem(
    HomeParams params,
  ) async {
    try {
      final p = params.maybeMap(
        getTreeDetailItem: (value) => value,
        getTreeDetail: (value) => value,
        orElse: () => throw ServerException('Invalid params'),
      );

      final data = serviceRequest(type: 'PP0043', content: p.toJson());

      final response = await client.post(
        url: ConstantUrls.serviceUrl,
        body: data,
        token: p.token,
      );

      final responseData = decodeResponseData(response.data);
      if (responseData is List) {
        return responseData
            .map(
              (item) =>
                  TreeDetailItemModel.fromJson(item as Map<String, dynamic>),
            )
            .toList();
      }
      return [];
    } on ServerException {
      rethrow;
    } catch (e, stackTrace) {
      log('getTreeDetailItem Error', error: e, stackTrace: stackTrace);
      throw ServerException(e.toString());
    }
  }
}
