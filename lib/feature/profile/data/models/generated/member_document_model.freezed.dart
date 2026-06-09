// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../member_document_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MmemberDocumentModel {

@JsonKey(name: 'ID_Document') int get idDocument;@JsonKey(name: 'Doc_Name') String get docName;@JsonKey(name: 'Expiry_Dt') DateTime get expDate;@JsonKey(name: 'Seq_No') String get seqNo;
/// Create a copy of MmemberDocumentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MmemberDocumentModelCopyWith<MmemberDocumentModel> get copyWith => _$MmemberDocumentModelCopyWithImpl<MmemberDocumentModel>(this as MmemberDocumentModel, _$identity);

  /// Serializes this MmemberDocumentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MmemberDocumentModel&&(identical(other.idDocument, idDocument) || other.idDocument == idDocument)&&(identical(other.docName, docName) || other.docName == docName)&&(identical(other.expDate, expDate) || other.expDate == expDate)&&(identical(other.seqNo, seqNo) || other.seqNo == seqNo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idDocument,docName,expDate,seqNo);

@override
String toString() {
  return 'MmemberDocumentModel(idDocument: $idDocument, docName: $docName, expDate: $expDate, seqNo: $seqNo)';
}


}

/// @nodoc
abstract mixin class $MmemberDocumentModelCopyWith<$Res>  {
  factory $MmemberDocumentModelCopyWith(MmemberDocumentModel value, $Res Function(MmemberDocumentModel) _then) = _$MmemberDocumentModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ID_Document') int idDocument,@JsonKey(name: 'Doc_Name') String docName,@JsonKey(name: 'Expiry_Dt') DateTime expDate,@JsonKey(name: 'Seq_No') String seqNo
});




}
/// @nodoc
class _$MmemberDocumentModelCopyWithImpl<$Res>
    implements $MmemberDocumentModelCopyWith<$Res> {
  _$MmemberDocumentModelCopyWithImpl(this._self, this._then);

  final MmemberDocumentModel _self;
  final $Res Function(MmemberDocumentModel) _then;

/// Create a copy of MmemberDocumentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idDocument = null,Object? docName = null,Object? expDate = null,Object? seqNo = null,}) {
  return _then(_self.copyWith(
idDocument: null == idDocument ? _self.idDocument : idDocument // ignore: cast_nullable_to_non_nullable
as int,docName: null == docName ? _self.docName : docName // ignore: cast_nullable_to_non_nullable
as String,expDate: null == expDate ? _self.expDate : expDate // ignore: cast_nullable_to_non_nullable
as DateTime,seqNo: null == seqNo ? _self.seqNo : seqNo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MmemberDocumentModel].
extension MmemberDocumentModelPatterns on MmemberDocumentModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MmemberDocumentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MmemberDocumentModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MmemberDocumentModel value)  $default,){
final _that = this;
switch (_that) {
case _MmemberDocumentModel():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MmemberDocumentModel value)?  $default,){
final _that = this;
switch (_that) {
case _MmemberDocumentModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ID_Document')  int idDocument, @JsonKey(name: 'Doc_Name')  String docName, @JsonKey(name: 'Expiry_Dt')  DateTime expDate, @JsonKey(name: 'Seq_No')  String seqNo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MmemberDocumentModel() when $default != null:
return $default(_that.idDocument,_that.docName,_that.expDate,_that.seqNo);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ID_Document')  int idDocument, @JsonKey(name: 'Doc_Name')  String docName, @JsonKey(name: 'Expiry_Dt')  DateTime expDate, @JsonKey(name: 'Seq_No')  String seqNo)  $default,) {final _that = this;
switch (_that) {
case _MmemberDocumentModel():
return $default(_that.idDocument,_that.docName,_that.expDate,_that.seqNo);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ID_Document')  int idDocument, @JsonKey(name: 'Doc_Name')  String docName, @JsonKey(name: 'Expiry_Dt')  DateTime expDate, @JsonKey(name: 'Seq_No')  String seqNo)?  $default,) {final _that = this;
switch (_that) {
case _MmemberDocumentModel() when $default != null:
return $default(_that.idDocument,_that.docName,_that.expDate,_that.seqNo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MmemberDocumentModel implements MmemberDocumentModel {
  const _MmemberDocumentModel({@JsonKey(name: 'ID_Document') required this.idDocument, @JsonKey(name: 'Doc_Name') required this.docName, @JsonKey(name: 'Expiry_Dt') required this.expDate, @JsonKey(name: 'Seq_No') required this.seqNo});
  factory _MmemberDocumentModel.fromJson(Map<String, dynamic> json) => _$MmemberDocumentModelFromJson(json);

@override@JsonKey(name: 'ID_Document') final  int idDocument;
@override@JsonKey(name: 'Doc_Name') final  String docName;
@override@JsonKey(name: 'Expiry_Dt') final  DateTime expDate;
@override@JsonKey(name: 'Seq_No') final  String seqNo;

/// Create a copy of MmemberDocumentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MmemberDocumentModelCopyWith<_MmemberDocumentModel> get copyWith => __$MmemberDocumentModelCopyWithImpl<_MmemberDocumentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MmemberDocumentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MmemberDocumentModel&&(identical(other.idDocument, idDocument) || other.idDocument == idDocument)&&(identical(other.docName, docName) || other.docName == docName)&&(identical(other.expDate, expDate) || other.expDate == expDate)&&(identical(other.seqNo, seqNo) || other.seqNo == seqNo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idDocument,docName,expDate,seqNo);

@override
String toString() {
  return 'MmemberDocumentModel(idDocument: $idDocument, docName: $docName, expDate: $expDate, seqNo: $seqNo)';
}


}

/// @nodoc
abstract mixin class _$MmemberDocumentModelCopyWith<$Res> implements $MmemberDocumentModelCopyWith<$Res> {
  factory _$MmemberDocumentModelCopyWith(_MmemberDocumentModel value, $Res Function(_MmemberDocumentModel) _then) = __$MmemberDocumentModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ID_Document') int idDocument,@JsonKey(name: 'Doc_Name') String docName,@JsonKey(name: 'Expiry_Dt') DateTime expDate,@JsonKey(name: 'Seq_No') String seqNo
});




}
/// @nodoc
class __$MmemberDocumentModelCopyWithImpl<$Res>
    implements _$MmemberDocumentModelCopyWith<$Res> {
  __$MmemberDocumentModelCopyWithImpl(this._self, this._then);

  final _MmemberDocumentModel _self;
  final $Res Function(_MmemberDocumentModel) _then;

/// Create a copy of MmemberDocumentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idDocument = null,Object? docName = null,Object? expDate = null,Object? seqNo = null,}) {
  return _then(_MmemberDocumentModel(
idDocument: null == idDocument ? _self.idDocument : idDocument // ignore: cast_nullable_to_non_nullable
as int,docName: null == docName ? _self.docName : docName // ignore: cast_nullable_to_non_nullable
as String,expDate: null == expDate ? _self.expDate : expDate // ignore: cast_nullable_to_non_nullable
as DateTime,seqNo: null == seqNo ? _self.seqNo : seqNo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
