// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../add_document_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
AddDocumentParams _$AddDocumentParamsFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'getDocumentTypes':
          return _GetDocumentTypesParams.fromJson(
            json
          );
                case 'uploadDocument':
          return _UploadDocumentParams.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'AddDocumentParams',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$AddDocumentParams {

@JsonKey(includeToJson: false) String get token;
/// Create a copy of AddDocumentParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddDocumentParamsCopyWith<AddDocumentParams> get copyWith => _$AddDocumentParamsCopyWithImpl<AddDocumentParams>(this as AddDocumentParams, _$identity);

  /// Serializes this AddDocumentParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddDocumentParams&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token);

@override
String toString() {
  return 'AddDocumentParams(token: $token)';
}


}

/// @nodoc
abstract mixin class $AddDocumentParamsCopyWith<$Res>  {
  factory $AddDocumentParamsCopyWith(AddDocumentParams value, $Res Function(AddDocumentParams) _then) = _$AddDocumentParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeToJson: false) String token
});




}
/// @nodoc
class _$AddDocumentParamsCopyWithImpl<$Res>
    implements $AddDocumentParamsCopyWith<$Res> {
  _$AddDocumentParamsCopyWithImpl(this._self, this._then);

  final AddDocumentParams _self;
  final $Res Function(AddDocumentParams) _then;

/// Create a copy of AddDocumentParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AddDocumentParams].
extension AddDocumentParamsPatterns on AddDocumentParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetDocumentTypesParams value)?  getDocumentTypes,TResult Function( _UploadDocumentParams value)?  uploadDocument,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetDocumentTypesParams() when getDocumentTypes != null:
return getDocumentTypes(_that);case _UploadDocumentParams() when uploadDocument != null:
return uploadDocument(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetDocumentTypesParams value)  getDocumentTypes,required TResult Function( _UploadDocumentParams value)  uploadDocument,}){
final _that = this;
switch (_that) {
case _GetDocumentTypesParams():
return getDocumentTypes(_that);case _UploadDocumentParams():
return uploadDocument(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetDocumentTypesParams value)?  getDocumentTypes,TResult? Function( _UploadDocumentParams value)?  uploadDocument,}){
final _that = this;
switch (_that) {
case _GetDocumentTypesParams() when getDocumentTypes != null:
return getDocumentTypes(_that);case _UploadDocumentParams() when uploadDocument != null:
return uploadDocument(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function(@JsonKey(includeToJson: false)  String token)?  getDocumentTypes,TResult Function(@JsonKey(includeToJson: false)  String token, @JsonKey(name: 'id_customer')  int memberId, @JsonKey(name: 'doc_name')  String documentName, @JsonKey(includeToJson: false)  String documentPath, @JsonKey(name: 'expiry_dt')  DateTime? expireDate, @JsonKey(name: 'seq_no')  int seqNo, @JsonKey(name: 'id_document')  String idDocument, @JsonKey(name: 'doc_ext')  String docExt,  bool isself)?  uploadDocument,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetDocumentTypesParams() when getDocumentTypes != null:
return getDocumentTypes(_that.token);case _UploadDocumentParams() when uploadDocument != null:
return uploadDocument(_that.token,_that.memberId,_that.documentName,_that.documentPath,_that.expireDate,_that.seqNo,_that.idDocument,_that.docExt,_that.isself);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function(@JsonKey(includeToJson: false)  String token)  getDocumentTypes,required TResult Function(@JsonKey(includeToJson: false)  String token, @JsonKey(name: 'id_customer')  int memberId, @JsonKey(name: 'doc_name')  String documentName, @JsonKey(includeToJson: false)  String documentPath, @JsonKey(name: 'expiry_dt')  DateTime? expireDate, @JsonKey(name: 'seq_no')  int seqNo, @JsonKey(name: 'id_document')  String idDocument, @JsonKey(name: 'doc_ext')  String docExt,  bool isself)  uploadDocument,}) {final _that = this;
switch (_that) {
case _GetDocumentTypesParams():
return getDocumentTypes(_that.token);case _UploadDocumentParams():
return uploadDocument(_that.token,_that.memberId,_that.documentName,_that.documentPath,_that.expireDate,_that.seqNo,_that.idDocument,_that.docExt,_that.isself);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function(@JsonKey(includeToJson: false)  String token)?  getDocumentTypes,TResult? Function(@JsonKey(includeToJson: false)  String token, @JsonKey(name: 'id_customer')  int memberId, @JsonKey(name: 'doc_name')  String documentName, @JsonKey(includeToJson: false)  String documentPath, @JsonKey(name: 'expiry_dt')  DateTime? expireDate, @JsonKey(name: 'seq_no')  int seqNo, @JsonKey(name: 'id_document')  String idDocument, @JsonKey(name: 'doc_ext')  String docExt,  bool isself)?  uploadDocument,}) {final _that = this;
switch (_that) {
case _GetDocumentTypesParams() when getDocumentTypes != null:
return getDocumentTypes(_that.token);case _UploadDocumentParams() when uploadDocument != null:
return uploadDocument(_that.token,_that.memberId,_that.documentName,_that.documentPath,_that.expireDate,_that.seqNo,_that.idDocument,_that.docExt,_that.isself);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetDocumentTypesParams implements AddDocumentParams {
  const _GetDocumentTypesParams({@JsonKey(includeToJson: false) required this.token, final  String? $type}): $type = $type ?? 'getDocumentTypes';
  factory _GetDocumentTypesParams.fromJson(Map<String, dynamic> json) => _$GetDocumentTypesParamsFromJson(json);

@override@JsonKey(includeToJson: false) final  String token;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of AddDocumentParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetDocumentTypesParamsCopyWith<_GetDocumentTypesParams> get copyWith => __$GetDocumentTypesParamsCopyWithImpl<_GetDocumentTypesParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetDocumentTypesParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetDocumentTypesParams&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token);

@override
String toString() {
  return 'AddDocumentParams.getDocumentTypes(token: $token)';
}


}

/// @nodoc
abstract mixin class _$GetDocumentTypesParamsCopyWith<$Res> implements $AddDocumentParamsCopyWith<$Res> {
  factory _$GetDocumentTypesParamsCopyWith(_GetDocumentTypesParams value, $Res Function(_GetDocumentTypesParams) _then) = __$GetDocumentTypesParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeToJson: false) String token
});




}
/// @nodoc
class __$GetDocumentTypesParamsCopyWithImpl<$Res>
    implements _$GetDocumentTypesParamsCopyWith<$Res> {
  __$GetDocumentTypesParamsCopyWithImpl(this._self, this._then);

  final _GetDocumentTypesParams _self;
  final $Res Function(_GetDocumentTypesParams) _then;

/// Create a copy of AddDocumentParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,}) {
  return _then(_GetDocumentTypesParams(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _UploadDocumentParams implements AddDocumentParams {
  const _UploadDocumentParams({@JsonKey(includeToJson: false) required this.token, @JsonKey(name: 'id_customer') required this.memberId, @JsonKey(name: 'doc_name') required this.documentName, @JsonKey(includeToJson: false) required this.documentPath, @JsonKey(name: 'expiry_dt') required this.expireDate, @JsonKey(name: 'seq_no') this.seqNo = 0, @JsonKey(name: 'id_document') this.idDocument = '', @JsonKey(name: 'doc_ext') this.docExt = '{Ext}', this.isself = true, final  String? $type}): $type = $type ?? 'uploadDocument';
  factory _UploadDocumentParams.fromJson(Map<String, dynamic> json) => _$UploadDocumentParamsFromJson(json);

@override@JsonKey(includeToJson: false) final  String token;
@JsonKey(name: 'id_customer') final  int memberId;
@JsonKey(name: 'doc_name') final  String documentName;
@JsonKey(includeToJson: false) final  String documentPath;
@JsonKey(name: 'expiry_dt') final  DateTime? expireDate;
@JsonKey(name: 'seq_no') final  int seqNo;
@JsonKey(name: 'id_document') final  String idDocument;
@JsonKey(name: 'doc_ext') final  String docExt;
@JsonKey() final  bool isself;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of AddDocumentParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadDocumentParamsCopyWith<_UploadDocumentParams> get copyWith => __$UploadDocumentParamsCopyWithImpl<_UploadDocumentParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UploadDocumentParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadDocumentParams&&(identical(other.token, token) || other.token == token)&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.documentName, documentName) || other.documentName == documentName)&&(identical(other.documentPath, documentPath) || other.documentPath == documentPath)&&(identical(other.expireDate, expireDate) || other.expireDate == expireDate)&&(identical(other.seqNo, seqNo) || other.seqNo == seqNo)&&(identical(other.idDocument, idDocument) || other.idDocument == idDocument)&&(identical(other.docExt, docExt) || other.docExt == docExt)&&(identical(other.isself, isself) || other.isself == isself));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,memberId,documentName,documentPath,expireDate,seqNo,idDocument,docExt,isself);

@override
String toString() {
  return 'AddDocumentParams.uploadDocument(token: $token, memberId: $memberId, documentName: $documentName, documentPath: $documentPath, expireDate: $expireDate, seqNo: $seqNo, idDocument: $idDocument, docExt: $docExt, isself: $isself)';
}


}

/// @nodoc
abstract mixin class _$UploadDocumentParamsCopyWith<$Res> implements $AddDocumentParamsCopyWith<$Res> {
  factory _$UploadDocumentParamsCopyWith(_UploadDocumentParams value, $Res Function(_UploadDocumentParams) _then) = __$UploadDocumentParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeToJson: false) String token,@JsonKey(name: 'id_customer') int memberId,@JsonKey(name: 'doc_name') String documentName,@JsonKey(includeToJson: false) String documentPath,@JsonKey(name: 'expiry_dt') DateTime? expireDate,@JsonKey(name: 'seq_no') int seqNo,@JsonKey(name: 'id_document') String idDocument,@JsonKey(name: 'doc_ext') String docExt, bool isself
});




}
/// @nodoc
class __$UploadDocumentParamsCopyWithImpl<$Res>
    implements _$UploadDocumentParamsCopyWith<$Res> {
  __$UploadDocumentParamsCopyWithImpl(this._self, this._then);

  final _UploadDocumentParams _self;
  final $Res Function(_UploadDocumentParams) _then;

/// Create a copy of AddDocumentParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? memberId = null,Object? documentName = null,Object? documentPath = null,Object? expireDate = freezed,Object? seqNo = null,Object? idDocument = null,Object? docExt = null,Object? isself = null,}) {
  return _then(_UploadDocumentParams(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,memberId: null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as int,documentName: null == documentName ? _self.documentName : documentName // ignore: cast_nullable_to_non_nullable
as String,documentPath: null == documentPath ? _self.documentPath : documentPath // ignore: cast_nullable_to_non_nullable
as String,expireDate: freezed == expireDate ? _self.expireDate : expireDate // ignore: cast_nullable_to_non_nullable
as DateTime?,seqNo: null == seqNo ? _self.seqNo : seqNo // ignore: cast_nullable_to_non_nullable
as int,idDocument: null == idDocument ? _self.idDocument : idDocument // ignore: cast_nullable_to_non_nullable
as String,docExt: null == docExt ? _self.docExt : docExt // ignore: cast_nullable_to_non_nullable
as String,isself: null == isself ? _self.isself : isself // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
