// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../member_document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MemberDocument {

 int get idDocument; String get docName; DateTime get expDate; String get seqNo;
/// Create a copy of MemberDocument
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemberDocumentCopyWith<MemberDocument> get copyWith => _$MemberDocumentCopyWithImpl<MemberDocument>(this as MemberDocument, _$identity);

  /// Serializes this MemberDocument to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemberDocument&&(identical(other.idDocument, idDocument) || other.idDocument == idDocument)&&(identical(other.docName, docName) || other.docName == docName)&&(identical(other.expDate, expDate) || other.expDate == expDate)&&(identical(other.seqNo, seqNo) || other.seqNo == seqNo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idDocument,docName,expDate,seqNo);

@override
String toString() {
  return 'MemberDocument(idDocument: $idDocument, docName: $docName, expDate: $expDate, seqNo: $seqNo)';
}


}

/// @nodoc
abstract mixin class $MemberDocumentCopyWith<$Res>  {
  factory $MemberDocumentCopyWith(MemberDocument value, $Res Function(MemberDocument) _then) = _$MemberDocumentCopyWithImpl;
@useResult
$Res call({
 int idDocument, String docName, DateTime expDate, String seqNo
});




}
/// @nodoc
class _$MemberDocumentCopyWithImpl<$Res>
    implements $MemberDocumentCopyWith<$Res> {
  _$MemberDocumentCopyWithImpl(this._self, this._then);

  final MemberDocument _self;
  final $Res Function(MemberDocument) _then;

/// Create a copy of MemberDocument
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


/// Adds pattern-matching-related methods to [MemberDocument].
extension MemberDocumentPatterns on MemberDocument {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MemberDocument value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MemberDocument() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MemberDocument value)  $default,){
final _that = this;
switch (_that) {
case _MemberDocument():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MemberDocument value)?  $default,){
final _that = this;
switch (_that) {
case _MemberDocument() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int idDocument,  String docName,  DateTime expDate,  String seqNo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MemberDocument() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int idDocument,  String docName,  DateTime expDate,  String seqNo)  $default,) {final _that = this;
switch (_that) {
case _MemberDocument():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int idDocument,  String docName,  DateTime expDate,  String seqNo)?  $default,) {final _that = this;
switch (_that) {
case _MemberDocument() when $default != null:
return $default(_that.idDocument,_that.docName,_that.expDate,_that.seqNo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MemberDocument implements MemberDocument {
  const _MemberDocument({required this.idDocument, required this.docName, required this.expDate, required this.seqNo});
  factory _MemberDocument.fromJson(Map<String, dynamic> json) => _$MemberDocumentFromJson(json);

@override final  int idDocument;
@override final  String docName;
@override final  DateTime expDate;
@override final  String seqNo;

/// Create a copy of MemberDocument
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MemberDocumentCopyWith<_MemberDocument> get copyWith => __$MemberDocumentCopyWithImpl<_MemberDocument>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MemberDocumentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MemberDocument&&(identical(other.idDocument, idDocument) || other.idDocument == idDocument)&&(identical(other.docName, docName) || other.docName == docName)&&(identical(other.expDate, expDate) || other.expDate == expDate)&&(identical(other.seqNo, seqNo) || other.seqNo == seqNo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idDocument,docName,expDate,seqNo);

@override
String toString() {
  return 'MemberDocument(idDocument: $idDocument, docName: $docName, expDate: $expDate, seqNo: $seqNo)';
}


}

/// @nodoc
abstract mixin class _$MemberDocumentCopyWith<$Res> implements $MemberDocumentCopyWith<$Res> {
  factory _$MemberDocumentCopyWith(_MemberDocument value, $Res Function(_MemberDocument) _then) = __$MemberDocumentCopyWithImpl;
@override @useResult
$Res call({
 int idDocument, String docName, DateTime expDate, String seqNo
});




}
/// @nodoc
class __$MemberDocumentCopyWithImpl<$Res>
    implements _$MemberDocumentCopyWith<$Res> {
  __$MemberDocumentCopyWithImpl(this._self, this._then);

  final _MemberDocument _self;
  final $Res Function(_MemberDocument) _then;

/// Create a copy of MemberDocument
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idDocument = null,Object? docName = null,Object? expDate = null,Object? seqNo = null,}) {
  return _then(_MemberDocument(
idDocument: null == idDocument ? _self.idDocument : idDocument // ignore: cast_nullable_to_non_nullable
as int,docName: null == docName ? _self.docName : docName // ignore: cast_nullable_to_non_nullable
as String,expDate: null == expDate ? _self.expDate : expDate // ignore: cast_nullable_to_non_nullable
as DateTime,seqNo: null == seqNo ? _self.seqNo : seqNo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
