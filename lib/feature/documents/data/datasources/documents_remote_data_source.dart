import 'dart:developer';

import 'package:patient_portal/core/error/exceptions.dart';
import 'package:patient_portal/core/resources/api_agent.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/feature/documents/data/models/documents_model/document_model.dart';

abstract class DocumentsRemoteDataSource {
  Future<List<DocumentModel>> getDocuments({
    required int memberId,
    required String mobileNumber,
    required String token,
  });
}

class DocumentsRemoteDataSourceImpl implements DocumentsRemoteDataSource {
  final ApiAgent client;

  DocumentsRemoteDataSourceImpl({required this.client});

  @override
  Future<List<DocumentModel>> getDocuments({
    required int memberId,
    required String mobileNumber,
    required String token,
  }) async {
    try {
      final data = serviceRequest(
        type: 'PP0027',
        content: {'id_customer': memberId, 'mobile_number': mobileNumber},
      );

      final response = await client.post(
        url: ConstantUrls.serviceUrl,
        body: data,
        token: token,
      );

      final List<dynamic> responseData = decodeResponseData(response.data);
      return responseData
          .map((raw) => DocumentModel.fromJson(raw as Map<String, dynamic>))
          .toList();
    } on ServerException {
      rethrow;
    } catch (e, stackTrace) {
      log('getDocuments Error', error: e, stackTrace: stackTrace);
      throw ServerException(e.toString());
    }
  }
}
