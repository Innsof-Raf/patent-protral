import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/feature/home/data/datasources/home_remote_data_source.dart';
import 'package:patient_portal/feature/home/domain/entities/home_data_model.dart';
import 'package:patient_portal/feature/home/domain/repositories/home_repository.dart';
import 'package:patient_portal/core/resources/constant_messages.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource remoteDataSource;

  HomeRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, HomeDataModel>> getHomeData({
    required String token,
    required int idBusunit,
  }) async {
    try {
      final homeData = await remoteDataSource.getHomeData(
        token: token,
        idBusunit: idBusunit,
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
}
