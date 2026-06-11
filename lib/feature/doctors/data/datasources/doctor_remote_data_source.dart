import 'package:dio/dio.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
import 'package:patient_portal/feature/doctors/data/models/doctor_model.dart';
import 'package:patient_portal/core/resources/urls.dart';

abstract class DoctorRemoteDataSource {
  Future<List<DoctorModel>> getAvailableDoctors(int specialityId, String token);
}

class DoctorRemoteDataSourceImpl implements DoctorRemoteDataSource {
  final Dio client;

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
      final List<dynamic> responseData = decodeResponseData(response.data);
      List<DoctorModel> doctorsList = [];
      for (final raw in responseData) {
        final doctor = raw as Map<String, dynamic>;
        if (intFromJson(doctor['id_dept']) == specialityId) {
          doctorsList.add(DoctorModel.fromJson(doctor));
        }
      }
      return doctorsList;
    } else {
      throw Exception('Server Failure');
    }
  }
}
