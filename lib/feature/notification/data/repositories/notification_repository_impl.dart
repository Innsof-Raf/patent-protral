import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/core/resources/constant_messages.dart';
import 'package:patient_portal/feature/notification/data/datasources/notification_remote_data_source.dart';
import 'package:patient_portal/feature/notification/domain/entities/notification.dart';
import 'package:patient_portal/feature/notification/domain/repositories/notification_repository.dart';
import 'package:patient_portal/feature/notification/domain/usecases/params/notification_params.dart';

class NotificationRepositoryImpl implements NotificationRepository {
  final NotificationRemoteDataSource remoteDataSource;

  NotificationRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<NotificationEntity>>> getNotifications({
    required NotificationParams params,
  }) async {
    try {
      final notificationModels = await remoteDataSource.getNotifications(
        params: params,
      );
      return Right(
        notificationModels.map((model) => model.toEntity()).toList(),
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
}
