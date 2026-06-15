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
    final data = serviceRequest(
      type: 'PP0027',
      content: {'id_customer': memberId, 'mobile_number': mobileNumber},
    );

    final response = await client.post(
      url: ConstantUrls.serviceUrl,
      body: data,
      token: token,
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final List<dynamic> responseData = decodeResponseData(response.data);
      return responseData
          .map((raw) => DocumentModel.fromJson(raw as Map<String, dynamic>))
          .toList();
    }

    throw Exception('Server Failure');
  }
}
