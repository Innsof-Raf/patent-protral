// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/doument_type_model.freezed.dart';
part 'generated/doument_type_model.g.dart';

@freezed
sealed class DocumentTypeModel with _$DocumentTypeModel {
  const factory DocumentTypeModel({
    @JsonKey(name: 'id_document') required int idDocument,
    @JsonKey(name: 'document_name') required String documentType,
  }) = _DocumentTypeModel;

  factory DocumentTypeModel.fromJson(Map<String, dynamic> json) =>
      _$DocumentTypeModelFromJson(json);
}
