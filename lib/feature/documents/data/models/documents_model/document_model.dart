import 'package:patient_portal/feature/documents/domain/entities/document.dart';

class DocumentModel {
  final int docId;
  final int memberId;
  final DateTime expireDate;
  final String docName;
  final String docType;

  const DocumentModel({
    required this.docId,
    required this.memberId,
    required this.expireDate,
    required this.docName,
    required this.docType,
  });

  factory DocumentModel.fromJson(Map<String, dynamic> json) {
    return DocumentModel(
      docId: json['doc_id'] as int,
      memberId: json['id_customer'] as int,
      expireDate: DateTime.parse(json['expire_date'] as String),
      docName: json['doc_name'] as String,
      docType: json['doc_type'] as String,
    );
  }

  Document toEntity() {
    return Document(
      docId: docId,
      memberId: memberId,
      expireDate: expireDate,
      docName: docName,
      docType: docType,
    );
  }
}
