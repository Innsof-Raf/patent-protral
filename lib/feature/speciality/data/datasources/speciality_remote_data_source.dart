import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:patient_portal/feature/speciality/data/models/speciality_model.dart';
import 'package:patient_portal/feature/speciality/domain/usecases/params/speciality_params.dart';
import 'package:patient_portal/core/resources/constant_messages.dart';
import 'package:patient_portal/core/resources/error_model.dart';
import 'package:patient_portal/core/resources/urls.dart';

abstract class SpecialityRemoteDataSource {
  Future<Either<ErrorModel, List<SpecialityModel>>> fetchSpecialities(
    SpecialityParams params,
  );

  Future<List<SpecialityModel>> searchSpecialities(SpecialityParams params);
}

class SpecialityRemoteDataSourceImpl implements SpecialityRemoteDataSource {
  @override
  Future<Either<ErrorModel, List<SpecialityModel>>> fetchSpecialities(
    SpecialityParams params,
  ) async {
    final fetchParams = params.maybeMap(
      fetchSpecialities: (value) => value,
      orElse: () => throw Exception('Invalid speciality fetch params'),
    );
    try {
      final Map<String, dynamic> data = {
        "CONTENT": "{\"id_busunit\":${fetchParams.idBusUnit}}",
        "TYPE": "PP0013",
      };

      http.Response response = await http.post(
        Uri.parse(ConstantUrls.serviceUrl),
        headers: {
          'Content-type': 'application/json',
          'Authorization': 'Bearer ${fetchParams.token}',
        },
        body: jsonEncode(data),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> data = jsonDecode(response.body);
        List<SpecialityModel> specilaities = [];
        for (final raw in data) {
          specilaities.add(SpecialityModel.fromJson(raw));
        }
        return Right(specilaities);
      } else {
        return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
      }
    } on SocketException {
      return Left(ErrorModel(message: ConstantMessages.noNetworkErrorMessage));
    } on TimeoutException {
      return Left(
        ErrorModel(message: ConstantMessages.connectionTimeOutFailureMessage),
      );
    } catch (e) {
      return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
    }
  }

  @override
  Future<List<SpecialityModel>> searchSpecialities(
    SpecialityParams params,
  ) async {
    final searchParams = params.maybeMap(
      searchSpecialities: (value) => value,
      orElse: () => throw Exception('Invalid speciality search params'),
    );
    final searchKey = searchParams.searchKey.toLowerCase();
    return searchParams.specialities
        .where(
          (speciality) =>
              speciality.specialityName.toLowerCase().contains(searchKey),
        )
        .toList();
  }
}
