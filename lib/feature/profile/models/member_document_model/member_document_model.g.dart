// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_document_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MmemberDocumentModel _$MmemberDocumentModelFromJson(
  Map<String, dynamic> json,
) => _MmemberDocumentModel(
  idDocument: (json['ID_Document'] as num).toInt(),
  docName: json['Doc_Name'] as String,
  expDate: DateTime.parse(json['Expiry_Dt'] as String),
  seqNo: json['Seq_No'] as String,
);

Map<String, dynamic> _$MmemberDocumentModelToJson(
  _MmemberDocumentModel instance,
) => <String, dynamic>{
  'ID_Document': instance.idDocument,
  'Doc_Name': instance.docName,
  'Expiry_Dt': instance.expDate.toIso8601String(),
  'Seq_No': instance.seqNo,
};
