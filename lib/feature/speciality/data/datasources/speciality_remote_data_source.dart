import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:patient_portal/core/resources/api_agent.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
import 'package:patient_portal/core/resources/constant_messages.dart';
import 'package:patient_portal/core/resources/error_model.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/feature/speciality/data/models/speciality_model.dart';
import 'package:patient_portal/feature/speciality/domain/usecases/params/speciality_params.dart';

abstract class SpecialityRemoteDataSource {
  Future<Either<ErrorModel, List<SpecialityModel>>> fetchSpecialities(
    SpecialityParams params,
  );
}

class SpecialityRemoteDataSourceImpl implements SpecialityRemoteDataSource {
  final ApiAgent client;

  SpecialityRemoteDataSourceImpl({required this.client});

  @override
  Future<Either<ErrorModel, List<SpecialityModel>>> fetchSpecialities(
    SpecialityParams params,
  ) async {
    final fetchParams = params.maybeMap(
      fetchSpecialities: (value) => value,
      orElse: () => throw Exception('Invalid speciality fetch params'),
    );
    try {
      final data = serviceRequest(type: 'PP0013');

      final response = await client.post(
        url: ConstantUrls.serviceUrl,
        body: data,
        token: fetchParams.token,
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> responseData = decodeResponseData(response.data);
        final List<SpecialityModel> specilaities = [];
        for (final raw in responseData) {
          specilaities.add(SpecialityModel.fromJson(raw));
        }
        return Right(specilaities);
      } else {
        return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        return Left(
          ErrorModel(message: ConstantMessages.connectionTimeOutFailureMessage),
        );
      } else if (e.error is SocketException) {
        return Left(
          ErrorModel(message: ConstantMessages.noNetworkErrorMessage),
        );
      }
      return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
    } catch (e) {
      return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
    }
  }
}
