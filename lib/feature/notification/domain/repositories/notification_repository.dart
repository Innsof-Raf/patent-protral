import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/feature/notification/domain/entities/notification.dart';
import 'package:patient_portal/feature/notification/domain/usecases/params/notification_params.dart';

abstract class NotificationRepository {
  Future<Either<Failure, List<NotificationEntity>>> getNotifications({
    required NotificationParams params,
  });
}
