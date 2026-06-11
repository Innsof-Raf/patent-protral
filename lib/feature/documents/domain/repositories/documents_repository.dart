import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/feature/documents/domain/entities/document.dart';

abstract class DocumentsRepository {
  Future<Either<Failure, List<Document>>> getDocuments({
    required int memberId,
    required String mobileNumber,
    required String token,
  });
}
