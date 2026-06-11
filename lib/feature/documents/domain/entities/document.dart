import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/document.freezed.dart';

@freezed
sealed class Document with _$Document {
  const factory Document({
    required int docId,
    required int memberId,
    required DateTime expireDate,
    required String docName,
    required String docType,
  }) = _Document;
}
