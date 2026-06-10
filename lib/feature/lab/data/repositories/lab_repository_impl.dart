import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/feature/lab/data/datasources/lab_remote_data_source.dart';
import 'package:patient_portal/feature/lab/data/models/item_model.dart';
import 'package:patient_portal/feature/lab/data/models/package_model.dart';
import 'package:patient_portal/feature/lab/domain/repositories/lab_repository.dart';
import 'package:patient_portal/core/resources/constant_messages.dart';

class LabRepositoryImpl implements LabRepository {
  final LabRemoteDataSource remoteDataSource;

  LabRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<ItemModel>>> getItems({
    required String token,
  }) async {
    try {
      return Right(await remoteDataSource.getItems(token: token));
    } on SocketException {
      return const Left(NetworkFailure(ConstantMessages.noNetworkErrorMessage));
    } on TimeoutException {
      return const Left(
        ServerFailure(ConstantMessages.connectionTimeOutFailureMessage),
      );
    } catch (e) {
      return const Left(ServerFailure(ConstantMessages.serverFailureMessage));
    }
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> updateItemInCart({
    required int idUser,
    required int idItem,
    required String token,
  }) async {
    try {
      return Right(
        await remoteDataSource.updateItemInCart(
          idUser: idUser,
          idItem: idItem,
          token: token,
        ),
      );
    } on SocketException {
      return const Left(NetworkFailure(ConstantMessages.noNetworkErrorMessage));
    } on TimeoutException {
      return const Left(
        ServerFailure(ConstantMessages.connectionTimeOutFailureMessage),
      );
    } catch (e) {
      return const Left(ServerFailure(ConstantMessages.serverFailureMessage));
    }
  }

  @override
  Future<Either<Failure, ItemModel>> getItemDetail({
    required int idItem,
    required String token,
  }) async {
    try {
      return Right(
        await remoteDataSource.getItemDetail(idItem: idItem, token: token),
      );
    } on SocketException {
      return const Left(NetworkFailure(ConstantMessages.noNetworkErrorMessage));
    } on TimeoutException {
      return const Left(
        ServerFailure(ConstantMessages.connectionTimeOutFailureMessage),
      );
    } catch (e) {
      return const Left(ServerFailure(ConstantMessages.serverFailureMessage));
    }
  }

  @override
  Future<Either<Failure, List<PackageModel>>> getPackages({
    required String token,
  }) async {
    try {
      return Right(await remoteDataSource.getPackages(token: token));
    } on SocketException {
      return const Left(NetworkFailure(ConstantMessages.noNetworkErrorMessage));
    } on TimeoutException {
      return const Left(
        ServerFailure(ConstantMessages.connectionTimeOutFailureMessage),
      );
    } catch (e) {
      return const Left(ServerFailure(ConstantMessages.serverFailureMessage));
    }
  }
}
