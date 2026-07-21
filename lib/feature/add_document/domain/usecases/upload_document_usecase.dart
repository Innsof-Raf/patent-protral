import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/core/usecases/usecase.dart';
import 'package:patient_portal/feature/add_document/domain/repositories/add_document_repository.dart';
import 'package:patient_portal/feature/add_document/domain/usecases/params/add_document_params.dart';

class UploadDocumentUseCase implements UseCase<String, AddDocumentParams> {
  final AddDocumentRepository repository;

  UploadDocumentUseCase({required this.repository});

  @override
  Future<Either<Failure, String>> call(AddDocumentParams params) {
    return repository.uploadDocument(params: params);
  }
}
