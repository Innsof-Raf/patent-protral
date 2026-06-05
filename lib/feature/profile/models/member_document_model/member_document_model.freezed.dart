// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'member_document_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MmemberDocumentModel _$MmemberDocumentModelFromJson(Map<String, dynamic> json) {
  return _MmemberDocumentModel.fromJson(json);
}

/// @nodoc
mixin _$MmemberDocumentModel {
  @JsonKey(name: 'ID_Document')
  int get idDocument => throw _privateConstructorUsedError;
  @JsonKey(name: 'Doc_Name')
  String get docName => throw _privateConstructorUsedError;
  @JsonKey(name: 'Expiry_Dt')
  DateTime get expDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'Seq_No')
  String get seqNo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MmemberDocumentModelCopyWith<MmemberDocumentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MmemberDocumentModelCopyWith<$Res> {
  factory $MmemberDocumentModelCopyWith(MmemberDocumentModel value,
          $Res Function(MmemberDocumentModel) then) =
      _$MmemberDocumentModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'ID_Document') int idDocument,
      @JsonKey(name: 'Doc_Name') String docName,
      @JsonKey(name: 'Expiry_Dt') DateTime expDate,
      @JsonKey(name: 'Seq_No') String seqNo});
}

/// @nodoc
class _$MmemberDocumentModelCopyWithImpl<$Res>
    implements $MmemberDocumentModelCopyWith<$Res> {
  _$MmemberDocumentModelCopyWithImpl(this._value, this._then);

  final MmemberDocumentModel _value;
  // ignore: unused_field
  final $Res Function(MmemberDocumentModel) _then;

  @override
  $Res call({
    Object? idDocument = freezed,
    Object? docName = freezed,
    Object? expDate = freezed,
    Object? seqNo = freezed,
  }) {
    return _then(_value.copyWith(
      idDocument: idDocument == freezed
          ? _value.idDocument
          : idDocument // ignore: cast_nullable_to_non_nullable
              as int,
      docName: docName == freezed
          ? _value.docName
          : docName // ignore: cast_nullable_to_non_nullable
              as String,
      expDate: expDate == freezed
          ? _value.expDate
          : expDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      seqNo: seqNo == freezed
          ? _value.seqNo
          : seqNo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_MmemberDocumentModelCopyWith<$Res>
    implements $MmemberDocumentModelCopyWith<$Res> {
  factory _$$_MmemberDocumentModelCopyWith(_$_MmemberDocumentModel value,
          $Res Function(_$_MmemberDocumentModel) then) =
      __$$_MmemberDocumentModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'ID_Document') int idDocument,
      @JsonKey(name: 'Doc_Name') String docName,
      @JsonKey(name: 'Expiry_Dt') DateTime expDate,
      @JsonKey(name: 'Seq_No') String seqNo});
}

/// @nodoc
class __$$_MmemberDocumentModelCopyWithImpl<$Res>
    extends _$MmemberDocumentModelCopyWithImpl<$Res>
    implements _$$_MmemberDocumentModelCopyWith<$Res> {
  __$$_MmemberDocumentModelCopyWithImpl(_$_MmemberDocumentModel _value,
      $Res Function(_$_MmemberDocumentModel) _then)
      : super(_value, (v) => _then(v as _$_MmemberDocumentModel));

  @override
  _$_MmemberDocumentModel get _value => super._value as _$_MmemberDocumentModel;

  @override
  $Res call({
    Object? idDocument = freezed,
    Object? docName = freezed,
    Object? expDate = freezed,
    Object? seqNo = freezed,
  }) {
    return _then(_$_MmemberDocumentModel(
      idDocument: idDocument == freezed
          ? _value.idDocument
          : idDocument // ignore: cast_nullable_to_non_nullable
              as int,
      docName: docName == freezed
          ? _value.docName
          : docName // ignore: cast_nullable_to_non_nullable
              as String,
      expDate: expDate == freezed
          ? _value.expDate
          : expDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      seqNo: seqNo == freezed
          ? _value.seqNo
          : seqNo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MmemberDocumentModel implements _MmemberDocumentModel {
  const _$_MmemberDocumentModel(
      {@JsonKey(name: 'ID_Document') required this.idDocument,
      @JsonKey(name: 'Doc_Name') required this.docName,
      @JsonKey(name: 'Expiry_Dt') required this.expDate,
      @JsonKey(name: 'Seq_No') required this.seqNo});

  factory _$_MmemberDocumentModel.fromJson(Map<String, dynamic> json) =>
      _$$_MmemberDocumentModelFromJson(json);

  @override
  @JsonKey(name: 'ID_Document')
  final int idDocument;
  @override
  @JsonKey(name: 'Doc_Name')
  final String docName;
  @override
  @JsonKey(name: 'Expiry_Dt')
  final DateTime expDate;
  @override
  @JsonKey(name: 'Seq_No')
  final String seqNo;

  @override
  String toString() {
    return 'MmemberDocumentModel(idDocument: $idDocument, docName: $docName, expDate: $expDate, seqNo: $seqNo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MmemberDocumentModel &&
            const DeepCollectionEquality()
                .equals(other.idDocument, idDocument) &&
            const DeepCollectionEquality().equals(other.docName, docName) &&
            const DeepCollectionEquality().equals(other.expDate, expDate) &&
            const DeepCollectionEquality().equals(other.seqNo, seqNo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idDocument),
      const DeepCollectionEquality().hash(docName),
      const DeepCollectionEquality().hash(expDate),
      const DeepCollectionEquality().hash(seqNo));

  @JsonKey(ignore: true)
  @override
  _$$_MmemberDocumentModelCopyWith<_$_MmemberDocumentModel> get copyWith =>
      __$$_MmemberDocumentModelCopyWithImpl<_$_MmemberDocumentModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MmemberDocumentModelToJson(
      this,
    );
  }
}

abstract class _MmemberDocumentModel implements MmemberDocumentModel {
  const factory _MmemberDocumentModel(
          {@JsonKey(name: 'ID_Document') required final int idDocument,
          @JsonKey(name: 'Doc_Name') required final String docName,
          @JsonKey(name: 'Expiry_Dt') required final DateTime expDate,
          @JsonKey(name: 'Seq_No') required final String seqNo}) =
      _$_MmemberDocumentModel;

  factory _MmemberDocumentModel.fromJson(Map<String, dynamic> json) =
      _$_MmemberDocumentModel.fromJson;

  @override
  @JsonKey(name: 'ID_Document')
  int get idDocument;
  @override
  @JsonKey(name: 'Doc_Name')
  String get docName;
  @override
  @JsonKey(name: 'Expiry_Dt')
  DateTime get expDate;
  @override
  @JsonKey(name: 'Seq_No')
  String get seqNo;
  @override
  @JsonKey(ignore: true)
  _$$_MmemberDocumentModelCopyWith<_$_MmemberDocumentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
