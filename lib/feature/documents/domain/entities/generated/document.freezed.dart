// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Document {

 int get docId; int get memberId; DateTime get expireDate; String get docName; String get docType;
/// Create a copy of Document
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocumentCopyWith<Document> get copyWith => _$DocumentCopyWithImpl<Document>(this as Document, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Document&&(identical(other.docId, docId) || other.docId == docId)&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.expireDate, expireDate) || other.expireDate == expireDate)&&(identical(other.docName, docName) || other.docName == docName)&&(identical(other.docType, docType) || other.docType == docType));
}


@override
int get hashCode => Object.hash(runtimeType,docId,memberId,expireDate,docName,docType);

@override
String toString() {
  return 'Document(docId: $docId, memberId: $memberId, expireDate: $expireDate, docName: $docName, docType: $docType)';
}


}

/// @nodoc
abstract mixin class $DocumentCopyWith<$Res>  {
  factory $DocumentCopyWith(Document value, $Res Function(Document) _then) = _$DocumentCopyWithImpl;
@useResult
$Res call({
 int docId, int memberId, DateTime expireDate, String docName, String docType
});




}
/// @nodoc
class _$DocumentCopyWithImpl<$Res>
    implements $DocumentCopyWith<$Res> {
  _$DocumentCopyWithImpl(this._self, this._then);

  final Document _self;
  final $Res Function(Document) _then;

/// Create a copy of Document
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


/// Adds pattern-matching-related methods to [Document].
extension DocumentPatterns on Document {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Document value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Document() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Document value)  $default,){
final _that = this;
switch (_that) {
case _Document():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Document value)?  $default,){
final _that = this;
switch (_that) {
case _Document() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int docId,  int memberId,  DateTime expireDate,  String docName,  String docType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Document() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int docId,  int memberId,  DateTime expireDate,  String docName,  String docType)  $default,) {final _that = this;
switch (_that) {
case _Document():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int docId,  int memberId,  DateTime expireDate,  String docName,  String docType)?  $default,) {final _that = this;
switch (_that) {
case _Document() when $default != null:
return $default(_that.docId,_that.memberId,_that.expireDate,_that.docName,_that.docType);case _:
  return null;

}
}

}

/// @nodoc


class _Document implements Document {
  const _Document({required this.docId, required this.memberId, required this.expireDate, required this.docName, required this.docType});
  

@override final  int docId;
@override final  int memberId;
@override final  DateTime expireDate;
@override final  String docName;
@override final  String docType;

/// Create a copy of Document
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocumentCopyWith<_Document> get copyWith => __$DocumentCopyWithImpl<_Document>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Document&&(identical(other.docId, docId) || other.docId == docId)&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.expireDate, expireDate) || other.expireDate == expireDate)&&(identical(other.docName, docName) || other.docName == docName)&&(identical(other.docType, docType) || other.docType == docType));
}


@override
int get hashCode => Object.hash(runtimeType,docId,memberId,expireDate,docName,docType);

@override
String toString() {
  return 'Document(docId: $docId, memberId: $memberId, expireDate: $expireDate, docName: $docName, docType: $docType)';
}


}

/// @nodoc
abstract mixin class _$DocumentCopyWith<$Res> implements $DocumentCopyWith<$Res> {
  factory _$DocumentCopyWith(_Document value, $Res Function(_Document) _then) = __$DocumentCopyWithImpl;
@override @useResult
$Res call({
 int docId, int memberId, DateTime expireDate, String docName, String docType
});




}
/// @nodoc
class __$DocumentCopyWithImpl<$Res>
    implements _$DocumentCopyWith<$Res> {
  __$DocumentCopyWithImpl(this._self, this._then);

  final _Document _self;
  final $Res Function(_Document) _then;

/// Create a copy of Document
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? docId = null,Object? memberId = null,Object? expireDate = null,Object? docName = null,Object? docType = null,}) {
  return _then(_Document(
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
