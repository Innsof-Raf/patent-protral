import 'package:freezed_annotation/freezed_annotation.dart';
part 'document_model.freezed.dart';
part 'document_model.g.dart';

@freezed
class DocumentModel with _$DocumentModel {
  const factory DocumentModel({
    @JsonKey(name: 'doc_id') required int docId,
    @JsonKey(name: 'id_customer') required int memberId,
    @JsonKey(name: 'expire_date') required DateTime expireDate,
    @JsonKey(name: 'doc_name') required String docName,
    @JsonKey(name: 'doc_type') required String docType,
  }) = _DocumentsModel;

  factory DocumentModel.fromJson(Map<String, dynamic> json) =>
      _$DocumentModelFromJson(json);
}
