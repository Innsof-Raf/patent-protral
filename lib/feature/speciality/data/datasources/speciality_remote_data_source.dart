import 'dart:async';
import 'dart:developer';

import 'package:patient_portal/core/error/exceptions.dart';
import 'package:patient_portal/core/resources/api_agent.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/feature/speciality/data/models/speciality_model.dart';
import 'package:patient_portal/feature/speciality/domain/usecases/params/speciality_params.dart';

abstract class SpecialityRemoteDataSource {
  Future<List<SpecialityModel>> fetchSpecialities(SpecialityParams params);
}

class SpecialityRemoteDataSourceImpl implements SpecialityRemoteDataSource {
  final ApiAgent client;

  SpecialityRemoteDataSourceImpl({required this.client});

  @override
  Future<List<SpecialityModel>> fetchSpecialities(
    SpecialityParams params,
  ) async {
    try {
      final fetchParams = params.maybeMap(
        fetchSpecialities: (value) => value,
        orElse: () => throw ServerException('Invalid speciality fetch params'),
      );

      final data = serviceRequest(
        type: 'PP0013',
        content: fetchParams.toJson(),
      );

      final response = await client.post(
        url: ConstantUrls.serviceUrl,
        body: data,
        token: fetchParams.token,
      );

      final List<dynamic> responseData = decodeResponseData(response.data);
      return responseData.map((raw) => SpecialityModel.fromJson(raw)).toList();
    } on ServerException {
      rethrow;
    } catch (e, stackTrace) {
      log('fetchSpecialities Error', error: e, stackTrace: stackTrace);
      throw ServerException(e.toString());
    }
  }
}
