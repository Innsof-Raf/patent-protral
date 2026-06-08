import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/feature/add_document/data/models/document_type_model.dart';

abstract class AddDocumentRepository {
  Future<Either<Failure, List<DocumentTypeModel>>> getDocumentTypes({
    required String token,
  });
}
