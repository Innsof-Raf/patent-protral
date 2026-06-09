import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/feature/documents/data/models/documents_model/document_model.dart';

abstract class DocumentsRepository {
  Future<Either<Failure, List<DocumentModel>>> getDocuments({
    required int memberId,
    required String mobileNumber,
    required String token,
  });
}
