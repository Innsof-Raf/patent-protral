// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../document_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DocumentTypeModel {

@JsonKey(name: 'id_document') int get idDocument;@JsonKey(name: 'document_name') String get documentType;
/// Create a copy of DocumentTypeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocumentTypeModelCopyWith<DocumentTypeModel> get copyWith => _$DocumentTypeModelCopyWithImpl<DocumentTypeModel>(this as DocumentTypeModel, _$identity);

  /// Serializes this DocumentTypeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocumentTypeModel&&(identical(other.idDocument, idDocument) || other.idDocument == idDocument)&&(identical(other.documentType, documentType) || other.documentType == documentType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idDocument,documentType);

@override
String toString() {
  return 'DocumentTypeModel(idDocument: $idDocument, documentType: $documentType)';
}


}

/// @nodoc
abstract mixin class $DocumentTypeModelCopyWith<$Res>  {
  factory $DocumentTypeModelCopyWith(DocumentTypeModel value, $Res Function(DocumentTypeModel) _then) = _$DocumentTypeModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id_document') int idDocument,@JsonKey(name: 'document_name') String documentType
});




}
/// @nodoc
class _$DocumentTypeModelCopyWithImpl<$Res>
    implements $DocumentTypeModelCopyWith<$Res> {
  _$DocumentTypeModelCopyWithImpl(this._self, this._then);

  final DocumentTypeModel _self;
  final $Res Function(DocumentTypeModel) _then;

/// Create a copy of DocumentTypeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idDocument = null,Object? documentType = null,}) {
  return _then(_self.copyWith(
idDocument: null == idDocument ? _self.idDocument : idDocument // ignore: cast_nullable_to_non_nullable
as int,documentType: null == documentType ? _self.documentType : documentType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DocumentTypeModel].
extension DocumentTypeModelPatterns on DocumentTypeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocumentTypeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocumentTypeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocumentTypeModel value)  $default,){
final _that = this;
switch (_that) {
case _DocumentTypeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocumentTypeModel value)?  $default,){
final _that = this;
switch (_that) {
case _DocumentTypeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id_document')  int idDocument, @JsonKey(name: 'document_name')  String documentType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocumentTypeModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id_document')  int idDocument, @JsonKey(name: 'document_name')  String documentType)  $default,) {final _that = this;
switch (_that) {
case _DocumentTypeModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id_document')  int idDocument, @JsonKey(name: 'document_name')  String documentType)?  $default,) {final _that = this;
switch (_that) {
case _DocumentTypeModel() when $default != null:
return $default(_that.idDocument,_that.documentType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DocumentTypeModel extends DocumentTypeModel {
  const _DocumentTypeModel({@JsonKey(name: 'id_document') required this.idDocument, @JsonKey(name: 'document_name') required this.documentType}): super._();
  factory _DocumentTypeModel.fromJson(Map<String, dynamic> json) => _$DocumentTypeModelFromJson(json);

@override@JsonKey(name: 'id_document') final  int idDocument;
@override@JsonKey(name: 'document_name') final  String documentType;

/// Create a copy of DocumentTypeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocumentTypeModelCopyWith<_DocumentTypeModel> get copyWith => __$DocumentTypeModelCopyWithImpl<_DocumentTypeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DocumentTypeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocumentTypeModel&&(identical(other.idDocument, idDocument) || other.idDocument == idDocument)&&(identical(other.documentType, documentType) || other.documentType == documentType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idDocument,documentType);

@override
String toString() {
  return 'DocumentTypeModel(idDocument: $idDocument, documentType: $documentType)';
}


}

/// @nodoc
abstract mixin class _$DocumentTypeModelCopyWith<$Res> implements $DocumentTypeModelCopyWith<$Res> {
  factory _$DocumentTypeModelCopyWith(_DocumentTypeModel value, $Res Function(_DocumentTypeModel) _then) = __$DocumentTypeModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id_document') int idDocument,@JsonKey(name: 'document_name') String documentType
});




}
/// @nodoc
class __$DocumentTypeModelCopyWithImpl<$Res>
    implements _$DocumentTypeModelCopyWith<$Res> {
  __$DocumentTypeModelCopyWithImpl(this._self, this._then);

  final _DocumentTypeModel _self;
  final $Res Function(_DocumentTypeModel) _then;

/// Create a copy of DocumentTypeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idDocument = null,Object? documentType = null,}) {
  return _then(_DocumentTypeModel(
idDocument: null == idDocument ? _self.idDocument : idDocument // ignore: cast_nullable_to_non_nullable
as int,documentType: null == documentType ? _self.documentType : documentType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
