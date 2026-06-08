part of 'add_document_bloc.dart';

@freezed
sealed class AddDocumentEvent with _$AddDocumentEvent {
  const factory AddDocumentEvent.getDocumentTypes({required String token}) =
      GetDocumentTypes;
}
