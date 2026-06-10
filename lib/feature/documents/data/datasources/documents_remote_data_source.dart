import 'package:dio/dio.dart';
import 'package:patient_portal/feature/documents/data/models/documents_model/document_model.dart';
import 'package:patient_portal/core/resources/urls.dart';

abstract class DocumentsRemoteDataSource {
  Future<List<DocumentModel>> getDocuments({
    required int memberId,
    required String mobileNumber,
    required String token,
  });
}

class DocumentsRemoteDataSourceImpl implements DocumentsRemoteDataSource {
  final Dio client;

  DocumentsRemoteDataSourceImpl({required this.client});

  @override
  Future<List<DocumentModel>> getDocuments({
    required int memberId,
    required String mobileNumber,
    required String token,
  }) async {
    final data = {
      "CONTENT":
          "{\"id_customer\":$memberId,\"mobile_number\":\"$mobileNumber\"}",
      "TYPE": "PP0027",
    };

    final response = await client.post(
      ConstantUrls.serviceUrl,
      data: data,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      ),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final List<dynamic> responseData = response.data;
      return responseData
          .map((raw) => DocumentModel.fromJson(raw as Map<String, dynamic>))
          .toList();
    }

    throw Exception('Server Failure');
  }
}
