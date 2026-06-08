import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:patient_portal/feature/lab/models/package_model/package_model.dart';
import 'package:patient_portal/resources/error_model.dart';
import 'package:http/http.dart' as http;

import '../../../resources/constant_messages.dart';
import '../../../resources/urls.dart';

class PackageServices {
  static Future<Either<ErrorModel, List<PackageModel>>> getPackages({
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
        List<PackageModel> packages = [];
        for (final raw in responseData) {
          packages.add(PackageModel.fromJson(raw));
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
}
