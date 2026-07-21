// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../document_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DocumentType {

 int get idDocument; String get documentType;
/// Create a copy of DocumentType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocumentTypeCopyWith<DocumentType> get copyWith => _$DocumentTypeCopyWithImpl<DocumentType>(this as DocumentType, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocumentType&&(identical(other.idDocument, idDocument) || other.idDocument == idDocument)&&(identical(other.documentType, documentType) || other.documentType == documentType));
}


@override
int get hashCode => Object.hash(runtimeType,idDocument,documentType);

@override
String toString() {
  return 'DocumentType(idDocument: $idDocument, documentType: $documentType)';
}


}

/// @nodoc
abstract mixin class $DocumentTypeCopyWith<$Res>  {
  factory $DocumentTypeCopyWith(DocumentType value, $Res Function(DocumentType) _then) = _$DocumentTypeCopyWithImpl;
@useResult
$Res call({
 int idDocument, String documentType
});




}
/// @nodoc
class _$DocumentTypeCopyWithImpl<$Res>
    implements $DocumentTypeCopyWith<$Res> {
  _$DocumentTypeCopyWithImpl(this._self, this._then);

  final DocumentType _self;
  final $Res Function(DocumentType) _then;

/// Create a copy of DocumentType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idDocument = null,Object? documentType = null,}) {
  return _then(_self.copyWith(
idDocument: null == idDocument ? _self.idDocument : idDocument // ignore: cast_nullable_to_non_nullable
as int,documentType: null == documentType ? _self.documentType : documentType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DocumentType].
extension DocumentTypePatterns on DocumentType {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocumentType value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocumentType() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocumentType value)  $default,){
final _that = this;
switch (_that) {
case _DocumentType():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocumentType value)?  $default,){
final _that = this;
switch (_that) {
case _DocumentType() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int idDocument,  String documentType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocumentType() when $default != null:
return $default(_that.idDocument,_that.documentType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int idDocument,  String documentType)  $default,) {final _that = this;
switch (_that) {
case _DocumentType():
return $default(_that.idDocument,_that.documentType);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int idDocument,  String documentType)?  $default,) {final _that = this;
switch (_that) {
case _DocumentType() when $default != null:
return $default(_that.idDocument,_that.documentType);case _:
  return null;

}
}

}

/// @nodoc


class _DocumentType implements DocumentType {
  const _DocumentType({required this.idDocument, required this.documentType});
  

@override final  int idDocument;
@override final  String documentType;

/// Create a copy of DocumentType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocumentTypeCopyWith<_DocumentType> get copyWith => __$DocumentTypeCopyWithImpl<_DocumentType>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocumentType&&(identical(other.idDocument, idDocument) || other.idDocument == idDocument)&&(identical(other.documentType, documentType) || other.documentType == documentType));
}


@override
int get hashCode => Object.hash(runtimeType,idDocument,documentType);

@override
String toString() {
  return 'DocumentType(idDocument: $idDocument, documentType: $documentType)';
}


}

/// @nodoc
abstract mixin class _$DocumentTypeCopyWith<$Res> implements $DocumentTypeCopyWith<$Res> {
  factory _$DocumentTypeCopyWith(_DocumentType value, $Res Function(_DocumentType) _then) = __$DocumentTypeCopyWithImpl;
@override @useResult
$Res call({
 int idDocument, String documentType
});




}
/// @nodoc
class __$DocumentTypeCopyWithImpl<$Res>
    implements _$DocumentTypeCopyWith<$Res> {
  __$DocumentTypeCopyWithImpl(this._self, this._then);

  final _DocumentType _self;
  final $Res Function(_DocumentType) _then;

/// Create a copy of DocumentType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idDocument = null,Object? documentType = null,}) {
  return _then(_DocumentType(
idDocument: null == idDocument ? _self.idDocument : idDocument // ignore: cast_nullable_to_non_nullable
as int,documentType: null == documentType ? _self.documentType : documentType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
