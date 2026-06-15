import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/core/usecases/usecase.dart';
import 'package:patient_portal/feature/notification/domain/entities/notification.dart';
import 'package:patient_portal/feature/notification/domain/repositories/notification_repository.dart';
import 'package:patient_portal/feature/notification/domain/usecases/params/notification_params.dart';

class GetNotificationsUseCase
    implements UseCase<List<NotificationEntity>, NotificationParams> {
  final NotificationRepository repository;

  GetNotificationsUseCase(this.repository);

  @override
  Future<Either<Failure, List<NotificationEntity>>> call(
    NotificationParams params,
  ) async {
    return await repository.getNotifications(params: params);
  }
}
