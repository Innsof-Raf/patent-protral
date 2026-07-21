import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/add_document_params.freezed.dart';
part 'generated/add_document_params.g.dart';

@freezed
sealed class AddDocumentParams with _$AddDocumentParams {
  const factory AddDocumentParams.getDocumentTypes({
    @JsonKey(includeToJson: false) required String token,
  }) = _GetDocumentTypesParams;

  const factory AddDocumentParams.uploadDocument({
    @JsonKey(includeToJson: false) required String token,
    @JsonKey(name: 'id_customer') required int memberId,
    @JsonKey(name: 'doc_name') required String documentName,
    @JsonKey(includeToJson: false) required String documentPath,
    @JsonKey(name: 'expiry_dt') required DateTime? expireDate,
    @Default(0) @JsonKey(name: 'seq_no') int seqNo,
    @Default('') @JsonKey(name: 'id_document') String idDocument,
    @Default('{Ext}') @JsonKey(name: 'doc_ext') String docExt,
    @Default(true) bool isself,
  }) = _UploadDocumentParams;

  factory AddDocumentParams.fromJson(Map<String, dynamic> json) =>
      _$AddDocumentParamsFromJson(json);
}
