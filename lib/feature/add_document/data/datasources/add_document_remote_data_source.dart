import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:patient_portal/core/error/exceptions.dart';
import 'package:patient_portal/core/resources/api_agent.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/feature/add_document/data/models/document_type_model.dart';

import 'package:patient_portal/feature/add_document/domain/usecases/params/add_document_params.dart';

abstract class AddDocumentRemoteDataSource {
  Future<List<DocumentTypeModel>> getDocumentTypes(AddDocumentParams params);

  Future<String> uploadDocument(AddDocumentParams params);
}

class AddDocumentRemoteDataSourceImpl implements AddDocumentRemoteDataSource {
  final ApiAgent client;

  AddDocumentRemoteDataSourceImpl({required this.client});

  @override
  Future<List<DocumentTypeModel>> getDocumentTypes(
    AddDocumentParams params,
  ) async {
    try {
      final p = params.maybeMap(
        getDocumentTypes: (value) => value,
        orElse: () => throw ServerException('Invalid params'),
      );

      final data = serviceRequest(type: 'PP0026');

      final response = await client.post(
        url: ConstantUrls.serviceUrl,
        body: data,
        token: p.token,
      );

      final List<dynamic> responseData = decodeResponseData(response.data);
      return responseData
          .map((raw) => DocumentTypeModel.fromJson(raw as Map<String, dynamic>))
          .toList();
    } on ServerException {
      rethrow;
    } catch (e, stackTrace) {
      log('getDocumentTypes Error', error: e, stackTrace: stackTrace);
      throw ServerException(e.toString());
    }
  }

  @override
  Future<String> uploadDocument(AddDocumentParams params) async {
    try {
      final p = params.maybeMap(
        uploadDocument: (value) => value,
        orElse: () => throw ServerException('Invalid params'),
      );

      final FormData formData = FormData.fromMap({
        'saveRequest': jsonEncode(
          serviceRequest(
            type: 'PP0025',
            content: p.toJson()..addAll({'doc_path': p.documentPath}),
          ),
        ),
        'pathidentifier': 'PatientProfileImage',
        'folderidentifier': '${p.memberId}\\selfdoc',
      });

      formData.files.add(
        MapEntry('uploads', await MultipartFile.fromFile(p.documentPath)),
      );

      final response = await client.post(
        url: ConstantUrls.uploadDocumentUrl,
        body: formData,
        token: p.token,
      );

      return response.data.toString();
    } on ServerException {
      rethrow;
    } catch (e, stackTrace) {
      log('uploadDocument Error', error: e, stackTrace: stackTrace);
      throw ServerException(e.toString());
    }
  }
}
