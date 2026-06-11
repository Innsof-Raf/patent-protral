part of 'documents_bloc.dart';

@freezed
sealed class DocumentsState with _$DocumentsState {
  const factory DocumentsState({
    required List<Document> documents,
    required bool isFetching,
    required bool isFetchingFailed,
    required bool isFetchingSucces,
    required ErrorModel error,
    required int selectedMemberId,
  }) = _DocumentsState;

  factory DocumentsState.initial() => DocumentsState(
    documents: [],
    selectedMemberId: 0,
    isFetching: false,
    error: ErrorModel(message: ''),
    isFetchingFailed: false,
    isFetchingSucces: false,
  );
}
