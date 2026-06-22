// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../add_document_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetDocumentTypesParams _$GetDocumentTypesParamsFromJson(
  Map<String, dynamic> json,
) => _GetDocumentTypesParams(
  token: json['token'] as String,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$GetDocumentTypesParamsToJson(
  _GetDocumentTypesParams instance,
) => <String, dynamic>{'runtimeType': instance.$type};

_UploadDocumentParams _$UploadDocumentParamsFromJson(
  Map<String, dynamic> json,
) => _UploadDocumentParams(
  token: json['token'] as String,
  memberId: (json['id_customer'] as num).toInt(),
  documentName: json['doc_name'] as String,
  documentPath: json['documentPath'] as String,
  expireDate: json['expiry_dt'] == null
      ? null
      : DateTime.parse(json['expiry_dt'] as String),
  seqNo: (json['seq_no'] as num?)?.toInt() ?? 0,
  idDocument: json['id_document'] as String? ?? '',
  docExt: json['doc_ext'] as String? ?? '{Ext}',
  isself: json['isself'] as bool? ?? true,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$UploadDocumentParamsToJson(
  _UploadDocumentParams instance,
) => <String, dynamic>{
  'id_customer': instance.memberId,
  'doc_name': instance.documentName,
  'expiry_dt': instance.expireDate?.toIso8601String(),
  'seq_no': instance.seqNo,
  'id_document': instance.idDocument,
  'doc_ext': instance.docExt,
  'isself': instance.isself,
  'runtimeType': instance.$type,
};
