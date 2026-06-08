// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DocumentsModel _$DocumentsModelFromJson(Map<String, dynamic> json) =>
    _DocumentsModel(
      docId: (json['doc_id'] as num).toInt(),
      memberId: (json['id_customer'] as num).toInt(),
      expireDate: DateTime.parse(json['expire_date'] as String),
      docName: json['doc_name'] as String,
      docType: json['doc_type'] as String,
    );

Map<String, dynamic> _$DocumentsModelToJson(_DocumentsModel instance) =>
    <String, dynamic>{
      'doc_id': instance.docId,
      'id_customer': instance.memberId,
      'expire_date': instance.expireDate.toIso8601String(),
      'doc_name': instance.docName,
      'doc_type': instance.docType,
    };
