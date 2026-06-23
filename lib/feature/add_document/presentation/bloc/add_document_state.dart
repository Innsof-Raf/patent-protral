part of 'add_document_bloc.dart';

@freezed
sealed class AddDocumentState with _$AddDocumentState {
  const factory AddDocumentState({
    required bool isFetchingDocumentTypes,
    required bool isFetchingDocumentTypesFailed,
    required bool isFetchingDocumentTypesSuccess,
    required bool isUploadingDocument,
    required bool isUploadingDocumentFailed,
    required bool isUploadingDocumentSuccess,
    required ErrorModel error,
    required List<DocumentType> documentTypes,
  }) = _AddDocumentState;

  factory AddDocumentState.initial() => AddDocumentState(
    isFetchingDocumentTypes: false,
    isFetchingDocumentTypesFailed: false,
    isFetchingDocumentTypesSuccess: false,
    isUploadingDocument: false,
    isUploadingDocumentFailed: false,
    isUploadingDocumentSuccess: false,
    documentTypes: [],
    error: ErrorModel(message: ''),
  );
}
