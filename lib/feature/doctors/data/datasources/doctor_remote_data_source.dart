import 'dart:developer';

import 'package:patient_portal/core/error/exceptions.dart';
import 'package:patient_portal/core/resources/api_agent.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/feature/doctors/data/models/doctor_model.dart';

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
    try {
      final data = serviceRequest(
        type: 'PP0001',
        content: {'id_dept': specialityId},
      );

      final response = await client.post(
        url: ConstantUrls.serviceUrl,
        body: data,
        token: token,
      );

      final List<dynamic> responseData = decodeResponseData(response.data);
      return responseData
          .map((raw) => DoctorModel.fromJson(raw as Map<String, dynamic>))
          .toList();
    } on ServerException {
      rethrow;
    } catch (e, stackTrace) {
      log('getAvailableDoctors Error', error: e, stackTrace: stackTrace);
      throw ServerException(e.toString());
    }
  }
}
