import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/core/usecases/usecase.dart';
import 'package:patient_portal/feature/documents/data/models/documents_model/document_model.dart';
import 'package:patient_portal/feature/documents/domain/repositories/documents_repository.dart';
import 'package:patient_portal/feature/documents/domain/usecases/params/documents_params.dart';

class GetDocumentsUseCase
    implements UseCase<List<DocumentModel>, DocumentsParams> {
  final DocumentsRepository repository;

  GetDocumentsUseCase(this.repository);

  @override
  Future<Either<Failure, List<DocumentModel>>> call(DocumentsParams params) {
    return params.when(
      getDocuments: (memberId, mobileNumber, token) => repository.getDocuments(
        memberId: memberId,
        mobileNumber: mobileNumber,
        token: token,
      ),
    );
  }
}
