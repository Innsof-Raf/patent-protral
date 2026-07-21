import 'dart:developer';

import 'package:patient_portal/core/error/exceptions.dart';
import 'package:patient_portal/core/resources/api_agent.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/feature/documents/data/models/documents_model/document_model.dart';

import 'package:patient_portal/feature/documents/domain/usecases/params/documents_params.dart';

abstract class DocumentsRemoteDataSource {
  Future<List<DocumentModel>> getDocuments(DocumentsParams params);
}

class DocumentsRemoteDataSourceImpl implements DocumentsRemoteDataSource {
  final ApiAgent client;

  DocumentsRemoteDataSourceImpl({required this.client});

  @override
  Future<List<DocumentModel>> getDocuments(DocumentsParams params) async {
    try {
      final p = params.maybeMap(
        getDocuments: (value) => value,
        orElse: () => throw ServerException('Invalid params'),
      );

      final data = serviceRequest(type: 'PP0027', content: p.toJson());

      final response = await client.post(
        url: ConstantUrls.serviceUrl,
        body: data,
        token: p.token,
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
