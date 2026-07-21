import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/documents/domain/entities/document.dart';

part 'generated/document_model.freezed.dart';
part 'generated/document_model.g.dart';

@freezed
sealed class DocumentModel with _$DocumentModel {
  const DocumentModel._();

  const factory DocumentModel({
    @JsonKey(name: 'doc_id') required int docId,
    @JsonKey(name: 'id_customer') required int memberId,
    @JsonKey(name: 'expire_date') required DateTime expireDate,
    @JsonKey(name: 'doc_name') required String docName,
    @JsonKey(name: 'doc_type') required String docType,
  }) = _DocumentModel;

  factory DocumentModel.fromJson(Map<String, dynamic> json) =>
      _$DocumentModelFromJson(json);

  Document toEntity() => Document(
    docId: docId,
    memberId: memberId,
    expireDate: expireDate,
    docName: docName,
    docType: docType,
  );
}
