import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/feature/add_document/data/datasources/add_document_remote_data_source.dart';
import 'package:patient_portal/feature/add_document/domain/repositories/add_document_repository.dart';
import 'package:patient_portal/feature/add_document/data/models/document_type_model.dart';
import 'package:patient_portal/resources/constant_messages.dart';

class AddDocumentRepositoryImpl implements AddDocumentRepository {
  final AddDocumentRemoteDataSource remoteDataSource;

  AddDocumentRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<DocumentTypeModel>>> getDocumentTypes({
    required String token,
  }) async {
    try {
      final documentTypes = await remoteDataSource.getDocumentTypes(
        token: token,
      );
      return Right(documentTypes);
    } on SocketException {
      return const Left(NetworkFailure(ConstantMessages.noNetworkErrorMessage));
    } on TimeoutException {
      return const Left(
        ServerFailure(ConstantMessages.connectionTimeOutFailureMessage),
      );
    } catch (e) {
      return const Left(ServerFailure(ConstantMessages.serverFailureMessage));
    }
  }
}
