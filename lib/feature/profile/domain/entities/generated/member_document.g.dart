// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../member_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MemberDocument _$MemberDocumentFromJson(Map<String, dynamic> json) =>
    _MemberDocument(
      idDocument: (json['idDocument'] as num).toInt(),
      docName: json['docName'] as String,
      expDate: DateTime.parse(json['expDate'] as String),
      seqNo: json['seqNo'] as String,
    );

Map<String, dynamic> _$MemberDocumentToJson(_MemberDocument instance) =>
    <String, dynamic>{
      'idDocument': instance.idDocument,
      'docName': instance.docName,
      'expDate': instance.expDate.toIso8601String(),
      'seqNo': instance.seqNo,
    };
