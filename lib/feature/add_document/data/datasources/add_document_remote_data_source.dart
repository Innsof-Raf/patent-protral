import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:patient_portal/feature/add_document/data/models/document_type_model.dart';
import 'package:patient_portal/core/resources/urls.dart';

abstract class AddDocumentRemoteDataSource {
  Future<List<DocumentTypeModel>> getDocumentTypes({required String token});
}

class AddDocumentRemoteDataSourceImpl implements AddDocumentRemoteDataSource {
  final http.Client client;

  AddDocumentRemoteDataSourceImpl({required this.client});

  @override
  Future<List<DocumentTypeModel>> getDocumentTypes({
    required String token,
  }) async {
    final data = {'CONTENT': '', 'TYPE': 'PP0026'};

    final response = await client.post(
      Uri.parse(ConstantUrls.serviceUrl),
      body: jsonEncode(data),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final List<dynamic> responseData = jsonDecode(response.body);
      return responseData
          .map((raw) => DocumentTypeModel.fromJson(raw as Map<String, dynamic>))
          .toList();
    }

    throw Exception('Server Failure');
  }
}
