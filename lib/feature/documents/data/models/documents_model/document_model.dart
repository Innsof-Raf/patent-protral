import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/documents/domain/entities/document.dart';

part 'generated/document_model.freezed.dart';

@freezed
sealed class DocumentModel with _$DocumentModel {
  const DocumentModel._();

  const factory DocumentModel({
    required int docId,
    required int memberId,
    required DateTime expireDate,
    required String docName,
    required String docType,
  }) = _DocumentModel;

  factory DocumentModel.fromJson(Map<String, dynamic> json) {
    return DocumentModel(
      docId: json['doc_id'] as int,
      memberId: json['id_customer'] as int,
      expireDate: DateTime.parse(json['expire_date'] as String),
      docName: json['doc_name'] as String,
      docType: json['doc_type'] as String,
    );
  }

  Document toEntity() => Document(
        docId: docId,
        memberId: memberId,
        expireDate: expireDate,
        docName: docName,
        docType: docType,
      );
}
