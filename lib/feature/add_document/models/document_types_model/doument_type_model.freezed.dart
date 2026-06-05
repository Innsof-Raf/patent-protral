// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'doument_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DocumentTypeModel _$DocumentTypeModelFromJson(Map<String, dynamic> json) {
  return _DocumentTypeModel.fromJson(json);
}

/// @nodoc
mixin _$DocumentTypeModel {
  @JsonKey(name: 'id_document')
  int get idDocument => throw _privateConstructorUsedError;
  @JsonKey(name: 'document_name')
  String get documentType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentTypeModelCopyWith<DocumentTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentTypeModelCopyWith<$Res> {
  factory $DocumentTypeModelCopyWith(
          DocumentTypeModel value, $Res Function(DocumentTypeModel) then) =
      _$DocumentTypeModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id_document') int idDocument,
      @JsonKey(name: 'document_name') String documentType});
}

/// @nodoc
class _$DocumentTypeModelCopyWithImpl<$Res>
    implements $DocumentTypeModelCopyWith<$Res> {
  _$DocumentTypeModelCopyWithImpl(this._value, this._then);

  final DocumentTypeModel _value;
  // ignore: unused_field
  final $Res Function(DocumentTypeModel) _then;

  @override
  $Res call({
    Object? idDocument = freezed,
    Object? documentType = freezed,
  }) {
    return _then(_value.copyWith(
      idDocument: idDocument == freezed
          ? _value.idDocument
          : idDocument // ignore: cast_nullable_to_non_nullable
              as int,
      documentType: documentType == freezed
          ? _value.documentType
          : documentType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DocumentTypeModelCopyWith<$Res>
    implements $DocumentTypeModelCopyWith<$Res> {
  factory _$$_DocumentTypeModelCopyWith(_$_DocumentTypeModel value,
          $Res Function(_$_DocumentTypeModel) then) =
      __$$_DocumentTypeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id_document') int idDocument,
      @JsonKey(name: 'document_name') String documentType});
}

/// @nodoc
class __$$_DocumentTypeModelCopyWithImpl<$Res>
    extends _$DocumentTypeModelCopyWithImpl<$Res>
    implements _$$_DocumentTypeModelCopyWith<$Res> {
  __$$_DocumentTypeModelCopyWithImpl(
      _$_DocumentTypeModel _value, $Res Function(_$_DocumentTypeModel) _then)
      : super(_value, (v) => _then(v as _$_DocumentTypeModel));

  @override
  _$_DocumentTypeModel get _value => super._value as _$_DocumentTypeModel;

  @override
  $Res call({
    Object? idDocument = freezed,
    Object? documentType = freezed,
  }) {
    return _then(_$_DocumentTypeModel(
      idDocument: idDocument == freezed
          ? _value.idDocument
          : idDocument // ignore: cast_nullable_to_non_nullable
              as int,
      documentType: documentType == freezed
          ? _value.documentType
          : documentType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DocumentTypeModel implements _DocumentTypeModel {
  const _$_DocumentTypeModel(
      {@JsonKey(name: 'id_document') required this.idDocument,
      @JsonKey(name: 'document_name') required this.documentType});

  factory _$_DocumentTypeModel.fromJson(Map<String, dynamic> json) =>
      _$$_DocumentTypeModelFromJson(json);

  @override
  @JsonKey(name: 'id_document')
  final int idDocument;
  @override
  @JsonKey(name: 'document_name')
  final String documentType;

  @override
  String toString() {
    return 'DocumentTypeModel(idDocument: $idDocument, documentType: $documentType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DocumentTypeModel &&
            const DeepCollectionEquality()
                .equals(other.idDocument, idDocument) &&
            const DeepCollectionEquality()
                .equals(other.documentType, documentType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idDocument),
      const DeepCollectionEquality().hash(documentType));

  @JsonKey(ignore: true)
  @override
  _$$_DocumentTypeModelCopyWith<_$_DocumentTypeModel> get copyWith =>
      __$$_DocumentTypeModelCopyWithImpl<_$_DocumentTypeModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DocumentTypeModelToJson(
      this,
    );
  }
}

abstract class _DocumentTypeModel implements DocumentTypeModel {
  const factory _DocumentTypeModel(
          {@JsonKey(name: 'id_document') required final int idDocument,
          @JsonKey(name: 'document_name') required final String documentType}) =
      _$_DocumentTypeModel;

  factory _DocumentTypeModel.fromJson(Map<String, dynamic> json) =
      _$_DocumentTypeModel.fromJson;

  @override
  @JsonKey(name: 'id_document')
  int get idDocument;
  @override
  @JsonKey(name: 'document_name')
  String get documentType;
  @override
  @JsonKey(ignore: true)
  _$$_DocumentTypeModelCopyWith<_$_DocumentTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
