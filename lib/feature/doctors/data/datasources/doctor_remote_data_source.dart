import 'package:patient_portal/core/resources/api_agent.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
import 'package:patient_portal/feature/doctors/data/models/doctor_model.dart';
import 'package:patient_portal/core/resources/urls.dart';

abstract class DoctorRemoteDataSource {
  Future<List<DoctorModel>> getAvailableDoctors(int specialityId, String token);
}

class DoctorRemoteDataSourceImpl implements DoctorRemoteDataSource {
  final ApiAgent client;

  DoctorRemoteDataSourceImpl({required this.client});

  @override
  Future<List<DoctorModel>> getAvailableDoctors(
    int specialityId,
    String token,
  ) async {
    final data = serviceRequest(
      type: 'PP0001',
      content: {'id_dept': specialityId},
    );

    final response = await client.post(
      url: ConstantUrls.serviceUrl,
      body: data,
      token: token,
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final List<dynamic> responseData = decodeResponseData(response.data);
      return responseData
          .map((raw) => DoctorModel.fromJson(raw as Map<String, dynamic>))
          .toList();
    } else {
      throw Exception('Server Failure');
    }
  }
}
