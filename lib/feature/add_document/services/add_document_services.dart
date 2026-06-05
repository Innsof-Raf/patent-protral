import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:patient_portal/feature/add_document/models/document_types_model/doument_type_model.dart';
import 'package:http/http.dart' as http;
import '../../../resources/constant_messages.dart';
import '../../../resources/error_model.dart';
import '../../../resources/urls.dart';

class AddDocumentServices {
  static Future<Either<ErrorModel, List<DocumentTypeModel>>> getDocumentTypes(
      {required String token}) async {
    try {
      final Map data = {"CONTENT": "", "TYPE": "PP0026"};
      http.Response response = await http.post(
          Uri.parse(ConstantUrls.serviceUrl),
          body: jsonEncode(data),
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $token'
          });

      if (response.statusCode == 200 || response.statusCode == 201) {
        List<DocumentTypeModel> documentTypes = [];
        final List responseData = jsonDecode(response.body);
        for (final raw in responseData) {
          documentTypes.add(DocumentTypeModel.fromJson(raw));
        }
        return Right(documentTypes);
      } else {
        return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
      }
    } on SocketException {
      return Left(ErrorModel(message: ConstantMessages.noNetworkErrorMessage));
    } on TimeoutException {
      return Left(ErrorModel(
          message: ConstantMessages.connectionTimeOutFailureMessage));
    } catch (e) {
      return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
    }
  }
}
