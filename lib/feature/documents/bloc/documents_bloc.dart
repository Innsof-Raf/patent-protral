import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/documents/models/documents_model/document_model.dart';
import 'package:patient_portal/feature/documents/services/documents_services.dart';
import 'package:patient_portal/resources/error_model.dart';

part 'documents_event.dart';
part 'documents_state.dart';
part 'generated/documents_bloc.freezed.dart';

class DocumentsBloc extends Bloc<DocumentsEvent, DocumentsState> {
  DocumentsBloc() : super(DocumentsState.initial()) {
    on<GetDocuments>((event, emit) async {
      if (event.memberId == 0) {
        emit(state.copyWith(
            isFetching: true,
            isFetchingFailed: false,
            isFetchingSucces: false,
            selectedMemberId: event.memberId));
        final Either<ErrorModel, List<DocumentModel>> documentsFetchingOptions =
            await DocumentServices.getDocuments(
                memebrId: event.memberId,
                mobileNumber: event.mobileNumber,
                token: event.token);
        documentsFetchingOptions.fold(
            (error) => emit(state.copyWith(
                isFetching: false, isFetchingFailed: true, error: error)),
            (documents) => emit(state.copyWith(
                isFetching: false,
                isFetchingSucces: true,
                documents: documents)));
      } else {
        emit(state.copyWith(selectedMemberId: event.memberId));
      }
    });
  }
}
