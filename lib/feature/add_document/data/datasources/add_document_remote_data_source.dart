import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:patient_portal/core/error/exceptions.dart';
import 'package:patient_portal/core/resources/api_agent.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/feature/add_document/data/models/document_type_model.dart';

abstract class AddDocumentRemoteDataSource {
  Future<List<DocumentTypeModel>> getDocumentTypes({required String token});

  Future<String> uploadDocument({
    required String documentName,
    required String documentPath,
    required DateTime? expireDate,
    required String token,
    required int memberId,
  });
}

class AddDocumentRemoteDataSourceImpl implements AddDocumentRemoteDataSource {
  final ApiAgent client;

  AddDocumentRemoteDataSourceImpl({required this.client});

  @override
  Future<List<DocumentTypeModel>> getDocumentTypes({
    required String token,
  }) async {
    try {
      final data = serviceRequest(type: 'PP0026');

      final response = await client.post(
        url: ConstantUrls.serviceUrl,
        body: data,
        token: token,
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
  Future<String> uploadDocument({
    required String documentName,
    required String documentPath,
    required DateTime? expireDate,
    required String token,
    required int memberId,
  }) async {
    try {
      final FormData formData = FormData.fromMap({
        'saveRequest': jsonEncode(
          serviceRequest(
            type: 'PP0025',
            content: {
              'seq_no': 0,
              'id_customer': memberId,
              'id_document': '',
              'expiry_dt': expireDate?.toIso8601String() ?? '',
              'doc_path': documentPath,
              'doc_name': documentName,
              'doc_ext': '{Ext}',
              'isself': true,
            },
          ),
        ),
        'pathidentifier': 'PatientProfileImage',
        'folderidentifier': '$memberId\\selfdoc',
      });

      formData.files.add(
        MapEntry('uploads', await MultipartFile.fromFile(documentPath)),
      );

      final response = await client.post(
        url: ConstantUrls.uploadDocumentUrl,
        body: formData,
        token: token,
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
