import 'package:dio/dio.dart';
import 'package:patient_portal/feature/doctors/data/models/doctor_model.dart';
import 'package:patient_portal/core/resources/urls.dart';

abstract class DoctorRemoteDataSource {
  Future<List<DoctorModel>> getAvailableDoctors(int specialityId);
}

class DoctorRemoteDataSourceImpl implements DoctorRemoteDataSource {
  final Dio client;

  DoctorRemoteDataSourceImpl({required this.client});

  @override
  Future<List<DoctorModel>> getAvailableDoctors(int specialityId) async {
    final Map<String, dynamic> data = {"CONTENT": "{}", "TYPE": "PP0001"};

    final response = await client.post(
      ConstantUrls.serviceUrl,
      data: data,
      options: Options(headers: {'Content-Type': 'application/json'}),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final List<dynamic> responseData = response.data;
      List<DoctorModel> doctorsList = [];
      for (final raw in responseData) {
        if (raw['id_dept'] == specialityId) {
          doctorsList.add(DoctorModel.fromJson(raw));
        }
      }
      return doctorsList;
    } else {
      throw Exception('Server Failure');
    }
  }
}
