import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/feature/home/data/models/home_data_model.dart';

abstract class HomeRepository {
  Future<Either<Failure, HomeDataModel>> getHomeData({
    required String token,
    required int idBusunit,
  });
}
