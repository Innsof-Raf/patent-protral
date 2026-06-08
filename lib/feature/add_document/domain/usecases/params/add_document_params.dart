import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/add_document_params.freezed.dart';

@freezed
sealed class AddDocumentParams with _$AddDocumentParams {
  const factory AddDocumentParams.getDocumentTypes({required String token}) =
      _GetDocumentTypesParams;
}
