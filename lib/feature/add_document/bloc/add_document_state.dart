part of 'add_document_bloc.dart';

@freezed
class AddDocumentState with _$AddDocumentState {
  const factory AddDocumentState(
      {required bool isFetchingDocumentTypes,
      required bool isFetchingDocumentTypesFailed,
      required bool isFetchingDocumentTypesSucces,
      required ErrorModel error,
      required List<DocumentTypeModel> documentTypes}) = _AddDocumentState;
  factory AddDocumentState.initial() => AddDocumentState(
      isFetchingDocumentTypes: false,
      isFetchingDocumentTypesFailed: false,
      isFetchingDocumentTypesSucces: false,
      documentTypes: [],
      error: ErrorModel(message: ''));
}
