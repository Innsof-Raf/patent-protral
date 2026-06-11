import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/core/usecases/usecase.dart';
import 'package:patient_portal/feature/add_document/domain/repositories/add_document_repository.dart';
import 'package:patient_portal/feature/add_document/domain/entities/document_type.dart';
import 'package:patient_portal/feature/add_document/domain/usecases/params/add_document_params.dart';

class GetDocumentTypesUseCase
    implements UseCase<List<DocumentType>, AddDocumentParams> {
  final AddDocumentRepository repository;

  GetDocumentTypesUseCase(this.repository);

  @override
  Future<Either<Failure, List<DocumentType>>> call(
    AddDocumentParams params,
  ) {
    return params.when(
      getDocumentTypes: (token) => repository.getDocumentTypes(token: token),
    );
  }
}
