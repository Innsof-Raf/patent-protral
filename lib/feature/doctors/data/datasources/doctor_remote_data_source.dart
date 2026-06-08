import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:patient_portal/feature/doctors/data/models/doctor_model.dart';
import 'package:patient_portal/resources/urls.dart';

abstract class DoctorRemoteDataSource {
  Future<List<DoctorModel>> getAvailableDoctors(int specialityId);
}

class DoctorRemoteDataSourceImpl implements DoctorRemoteDataSource {
  final http.Client client;

  DoctorRemoteDataSourceImpl({required this.client});

  @override
  Future<List<DoctorModel>> getAvailableDoctors(int specialityId) async {
    final Map<String, dynamic> data = {"CONTENT": "{}", "TYPE": "PP0001"};

    final response = await client.post(
      Uri.parse(ConstantUrls.serviceUrl),
      body: jsonEncode(data),
      headers: {'Content-type': 'application/json'},
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final List<dynamic> responseData = jsonDecode(response.body);
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
