import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/feature/add_document/domain/entities/document_type.dart';

abstract class AddDocumentRepository {
  Future<Either<Failure, List<DocumentType>>> getDocumentTypes({
    required String token,
  });
}
