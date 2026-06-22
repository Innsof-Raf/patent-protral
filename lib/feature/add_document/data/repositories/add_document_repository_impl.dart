import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/core/resources/constant_messages.dart';
import 'package:patient_portal/feature/add_document/data/datasources/add_document_remote_data_source.dart';
import 'package:patient_portal/feature/add_document/domain/entities/document_type.dart';
import 'package:patient_portal/feature/add_document/domain/repositories/add_document_repository.dart';

import 'package:patient_portal/feature/add_document/domain/usecases/params/add_document_params.dart';

class AddDocumentRepositoryImpl implements AddDocumentRepository {
  final AddDocumentRemoteDataSource remoteDataSource;

  AddDocumentRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<DocumentType>>> getDocumentTypes({
    required String token,
  }) async {
    try {
      final documentTypes = await remoteDataSource.getDocumentTypes(
        AddDocumentParams.getDocumentTypes(token: token),
      );
      return Right(documentTypes.map((type) => type.toEntity()).toList());
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
