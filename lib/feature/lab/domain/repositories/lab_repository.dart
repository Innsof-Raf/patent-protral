import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/feature/lab/domain/entities/item.dart';
import 'package:patient_portal/feature/lab/domain/entities/package.dart';

abstract class LabRepository {
  Future<Either<Failure, List<Item>>> getItems({required String token});

  Future<Either<Failure, Map<String, dynamic>>> updateItemInCart({
    required int idUser,
    required int idItem,
    required String token,
  });

  Future<Either<Failure, Item>> getItemDetail({
    required int idItem,
    required String token,
  });

  Future<Either<Failure, List<Package>>> getPackages({
    required String token,
  });
}
