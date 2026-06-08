part of 'documents_bloc.dart';

@freezed
sealed class DocumentsEvent with _$DocumentsEvent {
  const factory DocumentsEvent.getDocuments(
      {required int memberId,
      required String mobileNumber,
      required String token}) = GetDocuments;
}
