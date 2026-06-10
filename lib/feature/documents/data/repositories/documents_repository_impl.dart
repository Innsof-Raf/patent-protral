import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/feature/documents/data/datasources/documents_remote_data_source.dart';
import 'package:patient_portal/feature/documents/domain/entities/documents_model/document_model.dart';
import 'package:patient_portal/feature/documents/domain/repositories/documents_repository.dart';
import 'package:patient_portal/core/resources/constant_messages.dart';

class DocumentsRepositoryImpl implements DocumentsRepository {
  final DocumentsRemoteDataSource remoteDataSource;

  DocumentsRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<DocumentModel>>> getDocuments({
    required int memberId,
    required String mobileNumber,
    required String token,
  }) async {
    try {
      final documents = await remoteDataSource.getDocuments(
        memberId: memberId,
        mobileNumber: mobileNumber,
        token: token,
      );
      return Right(documents.map((document) => document.toEntity()).toList());
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
