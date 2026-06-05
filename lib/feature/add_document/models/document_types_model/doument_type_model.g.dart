// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doument_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DocumentTypeModel _$$_DocumentTypeModelFromJson(Map<String, dynamic> json) =>
    _$_DocumentTypeModel(
      idDocument: json['id_document'] as int,
      documentType: json['document_name'] as String,
    );

Map<String, dynamic> _$$_DocumentTypeModelToJson(
        _$_DocumentTypeModel instance) =>
    <String, dynamic>{
      'id_document': instance.idDocument,
      'document_name': instance.documentType,
    };
