import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/add_document/domain/entities/document_type.dart';

part 'generated/document_type_model.freezed.dart';

@freezed
sealed class DocumentTypeModel with _$DocumentTypeModel {
  const DocumentTypeModel._();

  const factory DocumentTypeModel({
    required int idDocument,
    required String documentType,
  }) = _DocumentTypeModel;

  factory DocumentTypeModel.fromJson(Map<String, dynamic> json) {
    return DocumentTypeModel(
      idDocument: json['id_document'] as int,
      documentType: json['document_name'] as String,
    );
  }

  DocumentType toEntity() => DocumentType(
        idDocument: idDocument,
        documentType: documentType,
      );
}
