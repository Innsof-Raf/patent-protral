// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../document_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DocumentModel {

@JsonKey(name: 'doc_id') int get docId;@JsonKey(name: 'id_customer') int get memberId;@JsonKey(name: 'expire_date') DateTime get expireDate;@JsonKey(name: 'doc_name') String get docName;@JsonKey(name: 'doc_type') String get docType;
/// Create a copy of DocumentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocumentModelCopyWith<DocumentModel> get copyWith => _$DocumentModelCopyWithImpl<DocumentModel>(this as DocumentModel, _$identity);

  /// Serializes this DocumentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocumentModel&&(identical(other.docId, docId) || other.docId == docId)&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.expireDate, expireDate) || other.expireDate == expireDate)&&(identical(other.docName, docName) || other.docName == docName)&&(identical(other.docType, docType) || other.docType == docType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,docId,memberId,expireDate,docName,docType);

@override
String toString() {
  return 'DocumentModel(docId: $docId, memberId: $memberId, expireDate: $expireDate, docName: $docName, docType: $docType)';
}


}

/// @nodoc
abstract mixin class $DocumentModelCopyWith<$Res>  {
  factory $DocumentModelCopyWith(DocumentModel value, $Res Function(DocumentModel) _then) = _$DocumentModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'doc_id') int docId,@JsonKey(name: 'id_customer') int memberId,@JsonKey(name: 'expire_date') DateTime expireDate,@JsonKey(name: 'doc_name') String docName,@JsonKey(name: 'doc_type') String docType
});




}
/// @nodoc
class _$DocumentModelCopyWithImpl<$Res>
    implements $DocumentModelCopyWith<$Res> {
  _$DocumentModelCopyWithImpl(this._self, this._then);

  final DocumentModel _self;
  final $Res Function(DocumentModel) _then;

/// Create a copy of DocumentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? docId = null,Object? memberId = null,Object? expireDate = null,Object? docName = null,Object? docType = null,}) {
  return _then(_self.copyWith(
docId: null == docId ? _self.docId : docId // ignore: cast_nullable_to_non_nullable
as int,memberId: null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as int,expireDate: null == expireDate ? _self.expireDate : expireDate // ignore: cast_nullable_to_non_nullable
as DateTime,docName: null == docName ? _self.docName : docName // ignore: cast_nullable_to_non_nullable
as String,docType: null == docType ? _self.docType : docType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DocumentModel].
extension DocumentModelPatterns on DocumentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocumentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocumentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocumentModel value)  $default,){
final _that = this;
switch (_that) {
case _DocumentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocumentModel value)?  $default,){
final _that = this;
switch (_that) {
case _DocumentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'doc_id')  int docId, @JsonKey(name: 'id_customer')  int memberId, @JsonKey(name: 'expire_date')  DateTime expireDate, @JsonKey(name: 'doc_name')  String docName, @JsonKey(name: 'doc_type')  String docType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocumentModel() when $default != null:
return $default(_that.docId,_that.memberId,_that.expireDate,_that.docName,_that.docType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'doc_id')  int docId, @JsonKey(name: 'id_customer')  int memberId, @JsonKey(name: 'expire_date')  DateTime expireDate, @JsonKey(name: 'doc_name')  String docName, @JsonKey(name: 'doc_type')  String docType)  $default,) {final _that = this;
switch (_that) {
case _DocumentModel():
return $default(_that.docId,_that.memberId,_that.expireDate,_that.docName,_that.docType);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'doc_id')  int docId, @JsonKey(name: 'id_customer')  int memberId, @JsonKey(name: 'expire_date')  DateTime expireDate, @JsonKey(name: 'doc_name')  String docName, @JsonKey(name: 'doc_type')  String docType)?  $default,) {final _that = this;
switch (_that) {
case _DocumentModel() when $default != null:
return $default(_that.docId,_that.memberId,_that.expireDate,_that.docName,_that.docType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DocumentModel extends DocumentModel {
  const _DocumentModel({@JsonKey(name: 'doc_id') required this.docId, @JsonKey(name: 'id_customer') required this.memberId, @JsonKey(name: 'expire_date') required this.expireDate, @JsonKey(name: 'doc_name') required this.docName, @JsonKey(name: 'doc_type') required this.docType}): super._();
  factory _DocumentModel.fromJson(Map<String, dynamic> json) => _$DocumentModelFromJson(json);

@override@JsonKey(name: 'doc_id') final  int docId;
@override@JsonKey(name: 'id_customer') final  int memberId;
@override@JsonKey(name: 'expire_date') final  DateTime expireDate;
@override@JsonKey(name: 'doc_name') final  String docName;
@override@JsonKey(name: 'doc_type') final  String docType;

/// Create a copy of DocumentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocumentModelCopyWith<_DocumentModel> get copyWith => __$DocumentModelCopyWithImpl<_DocumentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DocumentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocumentModel&&(identical(other.docId, docId) || other.docId == docId)&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.expireDate, expireDate) || other.expireDate == expireDate)&&(identical(other.docName, docName) || other.docName == docName)&&(identical(other.docType, docType) || other.docType == docType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,docId,memberId,expireDate,docName,docType);

@override
String toString() {
  return 'DocumentModel(docId: $docId, memberId: $memberId, expireDate: $expireDate, docName: $docName, docType: $docType)';
}


}

/// @nodoc
abstract mixin class _$DocumentModelCopyWith<$Res> implements $DocumentModelCopyWith<$Res> {
  factory _$DocumentModelCopyWith(_DocumentModel value, $Res Function(_DocumentModel) _then) = __$DocumentModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'doc_id') int docId,@JsonKey(name: 'id_customer') int memberId,@JsonKey(name: 'expire_date') DateTime expireDate,@JsonKey(name: 'doc_name') String docName,@JsonKey(name: 'doc_type') String docType
});




}
/// @nodoc
class __$DocumentModelCopyWithImpl<$Res>
    implements _$DocumentModelCopyWith<$Res> {
  __$DocumentModelCopyWithImpl(this._self, this._then);

  final _DocumentModel _self;
  final $Res Function(_DocumentModel) _then;

/// Create a copy of DocumentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? docId = null,Object? memberId = null,Object? expireDate = null,Object? docName = null,Object? docType = null,}) {
  return _then(_DocumentModel(
docId: null == docId ? _self.docId : docId // ignore: cast_nullable_to_non_nullable
as int,memberId: null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as int,expireDate: null == expireDate ? _self.expireDate : expireDate // ignore: cast_nullable_to_non_nullable
as DateTime,docName: null == docName ? _self.docName : docName // ignore: cast_nullable_to_non_nullable
as String,docType: null == docType ? _self.docType : docType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
