import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/document_type.freezed.dart';

@freezed
sealed class DocumentType with _$DocumentType {
  const factory DocumentType({
    required int idDocument,
    required String documentType,
  }) = _DocumentType;
}
