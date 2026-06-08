import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../../../resources/constant_messages.dart';
import '../../../resources/error_model.dart';
import '../../../resources/urls.dart';
import '../models/item_model/item_model.dart';

class ItemServices {
  static Future<Either<ErrorModel, List<ItemModel>>> getItems({
    required String token,
  }) async {
    try {
      final Map data = {"CONTENT": "{\"id_bus_unit\":1}", "TYPE": "PP0029"};
      http.Response response = await http.post(
        Uri.parse(ConstantUrls.serviceUrl),
        body: jsonEncode(data),
        headers: {
          HttpHeaders.authorizationHeader: 'Bearer $token',
          'Content-type': 'application/json',
        },
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List responseData = jsonDecode(response.body);
        List<ItemModel> packages = [];
        for (final raw in responseData) {
          packages.add(ItemModel.fromJson(raw));
        }
        return Right(packages);
      } else {
        return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
      }
    } on SocketException {
      return Left(ErrorModel(message: ConstantMessages.noNetworkErrorMessage));
    } on TimeoutException {
      return Left(
        ErrorModel(message: ConstantMessages.connectionTimeOutFailureMessage),
      );
    } catch (e) {
      return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
    }
  }

  static Future<Either<ErrorModel, Map>> updateItemInCart({
    required int idUser,
    required int idItem,
    required String token,
  }) async {
    try {
      final Map data = {
        "CONTENT": "{\"id_item\":$idItem,\"id_user\":$idUser}",
        "TYPE": "PP0037",
      };
      http.Response response = await http.post(
        Uri.parse(ConstantUrls.serviceUrl),
        body: jsonEncode(data),
        headers: {
          'Content-type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final Map responseBody = jsonDecode(response.body);
        return Right(responseBody);
      } else {
        return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
      }
    } on SocketException {
      return Left(ErrorModel(message: ConstantMessages.noNetworkErrorMessage));
    } on TimeoutException {
      return Left(
        ErrorModel(message: ConstantMessages.connectionTimeOutFailureMessage),
      );
    } catch (e) {
      return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
    }
  }

  static Future<Either<ErrorModel, ItemModel>> getItemDetail({
    required int idItem,
    required String token,
  }) async {
    try {
      final Map data = {"CONTENT": "{\"id_item\":$idItem}", "TYPE": "PP0037"};
      http.Response response = await http.post(
        Uri.parse(ConstantUrls.serviceUrl),
        body: jsonEncode(data),
        headers: {
          'Content-type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final Map<String, dynamic> responseBody = jsonDecode(response.body);
        return Right(ItemModel.fromJson(responseBody));
      } else {
        return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
      }
    } on SocketException {
      return Left(ErrorModel(message: ConstantMessages.noNetworkErrorMessage));
    } on TimeoutException {
      return Left(
        ErrorModel(message: ConstantMessages.connectionTimeOutFailureMessage),
      );
    } catch (e) {
      return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
    }
  }
}
