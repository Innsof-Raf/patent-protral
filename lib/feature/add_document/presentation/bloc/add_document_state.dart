part of 'add_document_bloc.dart';

@freezed
sealed class AddDocumentState with _$AddDocumentState {
  const factory AddDocumentState({
    required bool isFetchingDocumentTypes,
    required bool isFetchingDocumentTypesFailed,
    required bool isFetchingDocumentTypesSuccess,
    required ErrorModel error,
    required List<DocumentType> documentTypes,
  }) = _AddDocumentState;

  factory AddDocumentState.initial() => AddDocumentState(
    isFetchingDocumentTypes: false,
    isFetchingDocumentTypesFailed: false,
    isFetchingDocumentTypesSuccess: false,
    documentTypes: [],
    error: ErrorModel(message: ''),
  );
}
