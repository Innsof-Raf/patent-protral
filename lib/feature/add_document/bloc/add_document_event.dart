part of 'add_document_bloc.dart';

@freezed
class AddDocumentEvent with _$AddDocumentEvent {
  const factory AddDocumentEvent.getDocumentTypes({required String token}) =
      GetDocumentTypes;
}
