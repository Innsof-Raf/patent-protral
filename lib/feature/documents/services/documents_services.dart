import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:patient_portal/feature/documents/models/documents_model/document_model.dart';
import 'package:http/http.dart' as http;

import '../../../resources/constant_messages.dart';
import '../../../resources/error_model.dart';
import '../../../resources/urls.dart';

class DocumentServices {
  static Future<Either<ErrorModel, List<DocumentModel>>> getDocuments({
    required int memebrId,
    required String mobileNumber,
    required String token,
  }) async {
    try {
      final Map data = {
        "CONTENT":
            "{\"id_customer\":$memebrId,\"mobile_number\":\"$mobileNumber\"}",
        "TYPE": "PP0027",
      };
      http.Response response = await http.post(
        Uri.parse(ConstantUrls.serviceUrl),
        body: jsonEncode(data),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        List resposeBody = jsonDecode(response.body);
        List<DocumentModel> memberDocumentList = [];
        for (final raw in resposeBody) {
          memberDocumentList.add(DocumentModel.fromJson(raw));
        }

        return Right(memberDocumentList);
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
