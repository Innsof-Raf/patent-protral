import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/add_document/models/document_types_model/doument_type_model.dart';
import 'package:patient_portal/feature/add_document/services/add_document_services.dart';
import 'package:patient_portal/resources/error_model.dart';

part 'add_document_event.dart';
part 'add_document_state.dart';
part 'generated/add_document_bloc.freezed.dart';

class AddDocumentBloc extends Bloc<AddDocumentEvent, AddDocumentState> {
  AddDocumentBloc() : super(AddDocumentState.initial()) {
    on<GetDocumentTypes>((event, emit) async {
      emit(state.copyWith(
          isFetchingDocumentTypes: true,
          isFetchingDocumentTypesFailed: false,
          isFetchingDocumentTypesSucces: false));
      final Either<ErrorModel, List<DocumentTypeModel>>
          documentTypesFetchingOptions =
          await AddDocumentServices.getDocumentTypes(token: event.token);
      documentTypesFetchingOptions.fold(
          (error) => emit(state.copyWith(
              isFetchingDocumentTypes: false,
              isFetchingDocumentTypesFailed: true,
              error: error)),
          (documentTypes) => emit(state.copyWith(
              isFetchingDocumentTypes: false,
              isFetchingDocumentTypesSucces: true,
              documentTypes: documentTypes)));
    });
  }
}
