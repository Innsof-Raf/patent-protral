// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/member_document_model.freezed.dart';
part 'generated/member_document_model.g.dart';

@freezed
sealed class MmemberDocumentModel with _$MmemberDocumentModel {
  const factory MmemberDocumentModel({
    @JsonKey(name: 'ID_Document') required int idDocument,
    @JsonKey(name: 'Doc_Name') required String docName,
    @JsonKey(name: 'Expiry_Dt') required DateTime expDate,
    @JsonKey(name: 'Seq_No') required String seqNo,
  }) = _MmemberDocumentModel;

  factory MmemberDocumentModel.fromJson(Map<String, dynamic> json) =>
      _$MmemberDocumentModelFromJson(json);
}
