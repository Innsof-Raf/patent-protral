import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';

abstract class UseCase<T, Params> {
  Future<Either<Failure, T>> call(Params params);
}

class NoParams {}
