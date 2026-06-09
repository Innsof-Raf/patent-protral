import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/feature/lab/data/models/item_model.dart';
import 'package:patient_portal/feature/lab/data/models/package_model.dart';

abstract class LabRepository {
  Future<Either<Failure, List<ItemModel>>> getItems({required String token});

  Future<Either<Failure, Map<String, dynamic>>> updateItemInCart({
    required int idUser,
    required int idItem,
    required String token,
  });

  Future<Either<Failure, ItemModel>> getItemDetail({
    required int idItem,
    required String token,
  });

  Future<Either<Failure, List<PackageModel>>> getPackages({
    required String token,
  });
}
