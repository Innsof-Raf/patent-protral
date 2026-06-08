// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doument_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DocumentTypeModel _$DocumentTypeModelFromJson(Map<String, dynamic> json) =>
    _DocumentTypeModel(
      idDocument: (json['id_document'] as num).toInt(),
      documentType: json['document_name'] as String,
    );

Map<String, dynamic> _$DocumentTypeModelToJson(_DocumentTypeModel instance) =>
    <String, dynamic>{
      'id_document': instance.idDocument,
      'document_name': instance.documentType,
    };
