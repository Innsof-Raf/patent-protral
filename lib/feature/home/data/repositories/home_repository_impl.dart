import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/core/resources/constant_messages.dart';
import 'package:patient_portal/feature/home/data/datasources/home_remote_data_source.dart';
import 'package:patient_portal/feature/home/domain/entities/home_data.dart';
import 'package:patient_portal/feature/home/domain/repositories/home_repository.dart';

import 'package:patient_portal/feature/home/domain/usecases/params/home_params.dart';

import 'package:patient_portal/feature/home/domain/entities/tree_detail.dart';
import 'package:patient_portal/feature/home/domain/entities/tree_detail_item.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource remoteDataSource;

  HomeRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, HomeData>> getHomeData({
    required String token,
    required int idBusunit,
  }) async {
    try {
      final homeData = await remoteDataSource.getHomeData(
        HomeParams.getHomeData(token: token, idBusunit: idBusunit),
      );
      return Right(homeData.toEntity());
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
  Future<Either<Failure, List<TreeDetail>>> getTreeDetail({
    required String token,
    required int idTreedetail,
  }) async {
    try {
      final treeDetails = await remoteDataSource.getTreeDetail(
        HomeParams.getTreeDetail(token: token, idTreedetail: idTreedetail),
      );
      return Right(treeDetails.map((item) => item.toEntity()).toList());
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
  Future<Either<Failure, List<TreeDetailItem>>> getTreeDetailItem({
    required String token,
    required int idTreedetail,
  }) async {
    try {
      final treeDetailItems = await remoteDataSource.getTreeDetailItem(
        HomeParams.getTreeDetailItem(token: token, idTreedetail: idTreedetail),
      );
      return Right(treeDetailItems.map((item) => item.toEntity()).toList());
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
