import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/add_document/domain/entities/document_type.dart';

part 'generated/document_type_model.freezed.dart';
part 'generated/document_type_model.g.dart';

@freezed
sealed class DocumentTypeModel with _$DocumentTypeModel {
  const DocumentTypeModel._();

  const factory DocumentTypeModel({
    @JsonKey(name: 'id_document') required int idDocument,
    @JsonKey(name: 'document_name') required String documentType,
  }) = _DocumentTypeModel;

  factory DocumentTypeModel.fromJson(Map<String, dynamic> json) =>
      _$DocumentTypeModelFromJson(json);

  DocumentType toEntity() =>
      DocumentType(idDocument: idDocument, documentType: documentType);
}
