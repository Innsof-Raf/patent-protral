import 'package:patient_portal/feature/add_document/domain/entities/document_type.dart';

class DocumentTypeModel {
  final int idDocument;
  final String documentType;

  const DocumentTypeModel({
    required this.idDocument,
    required this.documentType,
  });

  factory DocumentTypeModel.fromJson(Map<String, dynamic> json) {
    return DocumentTypeModel(
      idDocument: json['id_document'] as int,
      documentType: json['document_name'] as String,
    );
  }

  DocumentType toEntity() {
    return DocumentType(
      idDocument: idDocument,
      documentType: documentType,
    );
  }
}
