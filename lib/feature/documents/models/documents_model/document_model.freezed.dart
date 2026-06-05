// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'document_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DocumentModel _$DocumentModelFromJson(Map<String, dynamic> json) {
  return _DocumentsModel.fromJson(json);
}

/// @nodoc
mixin _$DocumentModel {
  @JsonKey(name: 'doc_id')
  int get docId => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_customer')
  int get memberId => throw _privateConstructorUsedError;
  @JsonKey(name: 'expire_date')
  DateTime get expireDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'doc_name')
  String get docName => throw _privateConstructorUsedError;
  @JsonKey(name: 'doc_type')
  String get docType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentModelCopyWith<DocumentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentModelCopyWith<$Res> {
  factory $DocumentModelCopyWith(
          DocumentModel value, $Res Function(DocumentModel) then) =
      _$DocumentModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'doc_id') int docId,
      @JsonKey(name: 'id_customer') int memberId,
      @JsonKey(name: 'expire_date') DateTime expireDate,
      @JsonKey(name: 'doc_name') String docName,
      @JsonKey(name: 'doc_type') String docType});
}

/// @nodoc
class _$DocumentModelCopyWithImpl<$Res>
    implements $DocumentModelCopyWith<$Res> {
  _$DocumentModelCopyWithImpl(this._value, this._then);

  final DocumentModel _value;
  // ignore: unused_field
  final $Res Function(DocumentModel) _then;

  @override
  $Res call({
    Object? docId = freezed,
    Object? memberId = freezed,
    Object? expireDate = freezed,
    Object? docName = freezed,
    Object? docType = freezed,
  }) {
    return _then(_value.copyWith(
      docId: docId == freezed
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as int,
      memberId: memberId == freezed
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      expireDate: expireDate == freezed
          ? _value.expireDate
          : expireDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      docName: docName == freezed
          ? _value.docName
          : docName // ignore: cast_nullable_to_non_nullable
              as String,
      docType: docType == freezed
          ? _value.docType
          : docType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DocumentsModelCopyWith<$Res>
    implements $DocumentModelCopyWith<$Res> {
  factory _$$_DocumentsModelCopyWith(
          _$_DocumentsModel value, $Res Function(_$_DocumentsModel) then) =
      __$$_DocumentsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'doc_id') int docId,
      @JsonKey(name: 'id_customer') int memberId,
      @JsonKey(name: 'expire_date') DateTime expireDate,
      @JsonKey(name: 'doc_name') String docName,
      @JsonKey(name: 'doc_type') String docType});
}

/// @nodoc
class __$$_DocumentsModelCopyWithImpl<$Res>
    extends _$DocumentModelCopyWithImpl<$Res>
    implements _$$_DocumentsModelCopyWith<$Res> {
  __$$_DocumentsModelCopyWithImpl(
      _$_DocumentsModel _value, $Res Function(_$_DocumentsModel) _then)
      : super(_value, (v) => _then(v as _$_DocumentsModel));

  @override
  _$_DocumentsModel get _value => super._value as _$_DocumentsModel;

  @override
  $Res call({
    Object? docId = freezed,
    Object? memberId = freezed,
    Object? expireDate = freezed,
    Object? docName = freezed,
    Object? docType = freezed,
  }) {
    return _then(_$_DocumentsModel(
      docId: docId == freezed
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as int,
      memberId: memberId == freezed
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      expireDate: expireDate == freezed
          ? _value.expireDate
          : expireDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      docName: docName == freezed
          ? _value.docName
          : docName // ignore: cast_nullable_to_non_nullable
              as String,
      docType: docType == freezed
          ? _value.docType
          : docType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DocumentsModel implements _DocumentsModel {
  const _$_DocumentsModel(
      {@JsonKey(name: 'doc_id') required this.docId,
      @JsonKey(name: 'id_customer') required this.memberId,
      @JsonKey(name: 'expire_date') required this.expireDate,
      @JsonKey(name: 'doc_name') required this.docName,
      @JsonKey(name: 'doc_type') required this.docType});

  factory _$_DocumentsModel.fromJson(Map<String, dynamic> json) =>
      _$$_DocumentsModelFromJson(json);

  @override
  @JsonKey(name: 'doc_id')
  final int docId;
  @override
  @JsonKey(name: 'id_customer')
  final int memberId;
  @override
  @JsonKey(name: 'expire_date')
  final DateTime expireDate;
  @override
  @JsonKey(name: 'doc_name')
  final String docName;
  @override
  @JsonKey(name: 'doc_type')
  final String docType;

  @override
  String toString() {
    return 'DocumentModel(docId: $docId, memberId: $memberId, expireDate: $expireDate, docName: $docName, docType: $docType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DocumentsModel &&
            const DeepCollectionEquality().equals(other.docId, docId) &&
            const DeepCollectionEquality().equals(other.memberId, memberId) &&
            const DeepCollectionEquality()
                .equals(other.expireDate, expireDate) &&
            const DeepCollectionEquality().equals(other.docName, docName) &&
            const DeepCollectionEquality().equals(other.docType, docType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(docId),
      const DeepCollectionEquality().hash(memberId),
      const DeepCollectionEquality().hash(expireDate),
      const DeepCollectionEquality().hash(docName),
      const DeepCollectionEquality().hash(docType));

  @JsonKey(ignore: true)
  @override
  _$$_DocumentsModelCopyWith<_$_DocumentsModel> get copyWith =>
      __$$_DocumentsModelCopyWithImpl<_$_DocumentsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DocumentsModelToJson(
      this,
    );
  }
}

abstract class _DocumentsModel implements DocumentModel {
  const factory _DocumentsModel(
          {@JsonKey(name: 'doc_id') required final int docId,
          @JsonKey(name: 'id_customer') required final int memberId,
          @JsonKey(name: 'expire_date') required final DateTime expireDate,
          @JsonKey(name: 'doc_name') required final String docName,
          @JsonKey(name: 'doc_type') required final String docType}) =
      _$_DocumentsModel;

  factory _DocumentsModel.fromJson(Map<String, dynamic> json) =
      _$_DocumentsModel.fromJson;

  @override
  @JsonKey(name: 'doc_id')
  int get docId;
  @override
  @JsonKey(name: 'id_customer')
  int get memberId;
  @override
  @JsonKey(name: 'expire_date')
  DateTime get expireDate;
  @override
  @JsonKey(name: 'doc_name')
  String get docName;
  @override
  @JsonKey(name: 'doc_type')
  String get docType;
  @override
  @JsonKey(ignore: true)
  _$$_DocumentsModelCopyWith<_$_DocumentsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
