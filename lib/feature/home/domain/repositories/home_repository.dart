import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/feature/home/domain/entities/home_data.dart';
import 'package:patient_portal/feature/home/domain/entities/tree_detail.dart';
import 'package:patient_portal/feature/home/domain/entities/tree_detail_item.dart';

abstract class HomeRepository {
  Future<Either<Failure, HomeData>> getHomeData({
    required String token,
    required int idBusunit,
  });

  Future<Either<Failure, List<TreeDetail>>> getTreeDetail({
    required String token,
    required int idTreedetail,
  });

  Future<Either<Failure, List<TreeDetailItem>>> getTreeDetailItem({
    required String token,
    required int idTreedetail,
  });
}
