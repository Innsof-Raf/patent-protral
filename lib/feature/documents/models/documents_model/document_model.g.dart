// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DocumentsModel _$$_DocumentsModelFromJson(Map<String, dynamic> json) =>
    _$_DocumentsModel(
      docId: json['doc_id'] as int,
      memberId: json['id_customer'] as int,
      expireDate: DateTime.parse(json['expire_date'] as String),
      docName: json['doc_name'] as String,
      docType: json['doc_type'] as String,
    );

Map<String, dynamic> _$$_DocumentsModelToJson(_$_DocumentsModel instance) =>
    <String, dynamic>{
      'doc_id': instance.docId,
      'id_customer': instance.memberId,
      'expire_date': instance.expireDate.toIso8601String(),
      'doc_name': instance.docName,
      'doc_type': instance.docType,
    };
