// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../add_document_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddDocumentEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddDocumentEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddDocumentEvent()';
}


}

/// @nodoc
class $AddDocumentEventCopyWith<$Res>  {
$AddDocumentEventCopyWith(AddDocumentEvent _, $Res Function(AddDocumentEvent) __);
}


/// Adds pattern-matching-related methods to [AddDocumentEvent].
extension AddDocumentEventPatterns on AddDocumentEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetDocumentTypes value)?  getDocumentTypes,TResult Function( UploadDocument value)?  uploadDocument,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetDocumentTypes() when getDocumentTypes != null:
return getDocumentTypes(_that);case UploadDocument() when uploadDocument != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetDocumentTypes value)  getDocumentTypes,required TResult Function( UploadDocument value)  uploadDocument,}){
final _that = this;
switch (_that) {
case GetDocumentTypes():
return getDocumentTypes(_that);case UploadDocument():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetDocumentTypes value)?  getDocumentTypes,TResult? Function( UploadDocument value)?  uploadDocument,}){
final _that = this;
switch (_that) {
case GetDocumentTypes() when getDocumentTypes != null:
return getDocumentTypes(_that);case UploadDocument() when uploadDocument != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String token)?  getDocumentTypes,TResult Function( AddDocumentParams params)?  uploadDocument,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetDocumentTypes() when getDocumentTypes != null:
return getDocumentTypes(_that.token);case UploadDocument() when uploadDocument != null:
return uploadDocument(_that.params);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String token)  getDocumentTypes,required TResult Function( AddDocumentParams params)  uploadDocument,}) {final _that = this;
switch (_that) {
case GetDocumentTypes():
return getDocumentTypes(_that.token);case UploadDocument():
return uploadDocument(_that.params);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String token)?  getDocumentTypes,TResult? Function( AddDocumentParams params)?  uploadDocument,}) {final _that = this;
switch (_that) {
case GetDocumentTypes() when getDocumentTypes != null:
return getDocumentTypes(_that.token);case UploadDocument() when uploadDocument != null:
return uploadDocument(_that.params);case _:
  return null;

}
}

}

/// @nodoc


class GetDocumentTypes implements AddDocumentEvent {
  const GetDocumentTypes({required this.token});
  

 final  String token;

/// Create a copy of AddDocumentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetDocumentTypesCopyWith<GetDocumentTypes> get copyWith => _$GetDocumentTypesCopyWithImpl<GetDocumentTypes>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetDocumentTypes&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,token);

@override
String toString() {
  return 'AddDocumentEvent.getDocumentTypes(token: $token)';
}


}

/// @nodoc
abstract mixin class $GetDocumentTypesCopyWith<$Res> implements $AddDocumentEventCopyWith<$Res> {
  factory $GetDocumentTypesCopyWith(GetDocumentTypes value, $Res Function(GetDocumentTypes) _then) = _$GetDocumentTypesCopyWithImpl;
@useResult
$Res call({
 String token
});




}
/// @nodoc
class _$GetDocumentTypesCopyWithImpl<$Res>
    implements $GetDocumentTypesCopyWith<$Res> {
  _$GetDocumentTypesCopyWithImpl(this._self, this._then);

  final GetDocumentTypes _self;
  final $Res Function(GetDocumentTypes) _then;

/// Create a copy of AddDocumentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? token = null,}) {
  return _then(GetDocumentTypes(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UploadDocument implements AddDocumentEvent {
  const UploadDocument({required this.params});
  

 final  AddDocumentParams params;

/// Create a copy of AddDocumentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadDocumentCopyWith<UploadDocument> get copyWith => _$UploadDocumentCopyWithImpl<UploadDocument>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadDocument&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'AddDocumentEvent.uploadDocument(params: $params)';
}


}

/// @nodoc
abstract mixin class $UploadDocumentCopyWith<$Res> implements $AddDocumentEventCopyWith<$Res> {
  factory $UploadDocumentCopyWith(UploadDocument value, $Res Function(UploadDocument) _then) = _$UploadDocumentCopyWithImpl;
@useResult
$Res call({
 AddDocumentParams params
});


$AddDocumentParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$UploadDocumentCopyWithImpl<$Res>
    implements $UploadDocumentCopyWith<$Res> {
  _$UploadDocumentCopyWithImpl(this._self, this._then);

  final UploadDocument _self;
  final $Res Function(UploadDocument) _then;

/// Create a copy of AddDocumentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(UploadDocument(
params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as AddDocumentParams,
  ));
}

/// Create a copy of AddDocumentEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddDocumentParamsCopyWith<$Res> get params {
  
  return $AddDocumentParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc
mixin _$AddDocumentState {

 bool get isFetchingDocumentTypes; bool get isFetchingDocumentTypesFailed; bool get isFetchingDocumentTypesSuccess; bool get isUploadingDocument; bool get isUploadingDocumentFailed; bool get isUploadingDocumentSuccess; ErrorModel get error; List<DocumentType> get documentTypes;
/// Create a copy of AddDocumentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddDocumentStateCopyWith<AddDocumentState> get copyWith => _$AddDocumentStateCopyWithImpl<AddDocumentState>(this as AddDocumentState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddDocumentState&&(identical(other.isFetchingDocumentTypes, isFetchingDocumentTypes) || other.isFetchingDocumentTypes == isFetchingDocumentTypes)&&(identical(other.isFetchingDocumentTypesFailed, isFetchingDocumentTypesFailed) || other.isFetchingDocumentTypesFailed == isFetchingDocumentTypesFailed)&&(identical(other.isFetchingDocumentTypesSuccess, isFetchingDocumentTypesSuccess) || other.isFetchingDocumentTypesSuccess == isFetchingDocumentTypesSuccess)&&(identical(other.isUploadingDocument, isUploadingDocument) || other.isUploadingDocument == isUploadingDocument)&&(identical(other.isUploadingDocumentFailed, isUploadingDocumentFailed) || other.isUploadingDocumentFailed == isUploadingDocumentFailed)&&(identical(other.isUploadingDocumentSuccess, isUploadingDocumentSuccess) || other.isUploadingDocumentSuccess == isUploadingDocumentSuccess)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other.documentTypes, documentTypes));
}


@override
int get hashCode => Object.hash(runtimeType,isFetchingDocumentTypes,isFetchingDocumentTypesFailed,isFetchingDocumentTypesSuccess,isUploadingDocument,isUploadingDocumentFailed,isUploadingDocumentSuccess,error,const DeepCollectionEquality().hash(documentTypes));

@override
String toString() {
  return 'AddDocumentState(isFetchingDocumentTypes: $isFetchingDocumentTypes, isFetchingDocumentTypesFailed: $isFetchingDocumentTypesFailed, isFetchingDocumentTypesSuccess: $isFetchingDocumentTypesSuccess, isUploadingDocument: $isUploadingDocument, isUploadingDocumentFailed: $isUploadingDocumentFailed, isUploadingDocumentSuccess: $isUploadingDocumentSuccess, error: $error, documentTypes: $documentTypes)';
}


}

/// @nodoc
abstract mixin class $AddDocumentStateCopyWith<$Res>  {
  factory $AddDocumentStateCopyWith(AddDocumentState value, $Res Function(AddDocumentState) _then) = _$AddDocumentStateCopyWithImpl;
@useResult
$Res call({
 bool isFetchingDocumentTypes, bool isFetchingDocumentTypesFailed, bool isFetchingDocumentTypesSuccess, bool isUploadingDocument, bool isUploadingDocumentFailed, bool isUploadingDocumentSuccess, ErrorModel error, List<DocumentType> documentTypes
});


$ErrorModelCopyWith<$Res> get error;

}
/// @nodoc
class _$AddDocumentStateCopyWithImpl<$Res>
    implements $AddDocumentStateCopyWith<$Res> {
  _$AddDocumentStateCopyWithImpl(this._self, this._then);

  final AddDocumentState _self;
  final $Res Function(AddDocumentState) _then;

/// Create a copy of AddDocumentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isFetchingDocumentTypes = null,Object? isFetchingDocumentTypesFailed = null,Object? isFetchingDocumentTypesSuccess = null,Object? isUploadingDocument = null,Object? isUploadingDocumentFailed = null,Object? isUploadingDocumentSuccess = null,Object? error = null,Object? documentTypes = null,}) {
  return _then(_self.copyWith(
isFetchingDocumentTypes: null == isFetchingDocumentTypes ? _self.isFetchingDocumentTypes : isFetchingDocumentTypes // ignore: cast_nullable_to_non_nullable
as bool,isFetchingDocumentTypesFailed: null == isFetchingDocumentTypesFailed ? _self.isFetchingDocumentTypesFailed : isFetchingDocumentTypesFailed // ignore: cast_nullable_to_non_nullable
as bool,isFetchingDocumentTypesSuccess: null == isFetchingDocumentTypesSuccess ? _self.isFetchingDocumentTypesSuccess : isFetchingDocumentTypesSuccess // ignore: cast_nullable_to_non_nullable
as bool,isUploadingDocument: null == isUploadingDocument ? _self.isUploadingDocument : isUploadingDocument // ignore: cast_nullable_to_non_nullable
as bool,isUploadingDocumentFailed: null == isUploadingDocumentFailed ? _self.isUploadingDocumentFailed : isUploadingDocumentFailed // ignore: cast_nullable_to_non_nullable
as bool,isUploadingDocumentSuccess: null == isUploadingDocumentSuccess ? _self.isUploadingDocumentSuccess : isUploadingDocumentSuccess // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,documentTypes: null == documentTypes ? _self.documentTypes : documentTypes // ignore: cast_nullable_to_non_nullable
as List<DocumentType>,
  ));
}
/// Create a copy of AddDocumentState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ErrorModelCopyWith<$Res> get error {
  
  return $ErrorModelCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}


/// Adds pattern-matching-related methods to [AddDocumentState].
extension AddDocumentStatePatterns on AddDocumentState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddDocumentState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddDocumentState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddDocumentState value)  $default,){
final _that = this;
switch (_that) {
case _AddDocumentState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddDocumentState value)?  $default,){
final _that = this;
switch (_that) {
case _AddDocumentState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isFetchingDocumentTypes,  bool isFetchingDocumentTypesFailed,  bool isFetchingDocumentTypesSuccess,  bool isUploadingDocument,  bool isUploadingDocumentFailed,  bool isUploadingDocumentSuccess,  ErrorModel error,  List<DocumentType> documentTypes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddDocumentState() when $default != null:
return $default(_that.isFetchingDocumentTypes,_that.isFetchingDocumentTypesFailed,_that.isFetchingDocumentTypesSuccess,_that.isUploadingDocument,_that.isUploadingDocumentFailed,_that.isUploadingDocumentSuccess,_that.error,_that.documentTypes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isFetchingDocumentTypes,  bool isFetchingDocumentTypesFailed,  bool isFetchingDocumentTypesSuccess,  bool isUploadingDocument,  bool isUploadingDocumentFailed,  bool isUploadingDocumentSuccess,  ErrorModel error,  List<DocumentType> documentTypes)  $default,) {final _that = this;
switch (_that) {
case _AddDocumentState():
return $default(_that.isFetchingDocumentTypes,_that.isFetchingDocumentTypesFailed,_that.isFetchingDocumentTypesSuccess,_that.isUploadingDocument,_that.isUploadingDocumentFailed,_that.isUploadingDocumentSuccess,_that.error,_that.documentTypes);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isFetchingDocumentTypes,  bool isFetchingDocumentTypesFailed,  bool isFetchingDocumentTypesSuccess,  bool isUploadingDocument,  bool isUploadingDocumentFailed,  bool isUploadingDocumentSuccess,  ErrorModel error,  List<DocumentType> documentTypes)?  $default,) {final _that = this;
switch (_that) {
case _AddDocumentState() when $default != null:
return $default(_that.isFetchingDocumentTypes,_that.isFetchingDocumentTypesFailed,_that.isFetchingDocumentTypesSuccess,_that.isUploadingDocument,_that.isUploadingDocumentFailed,_that.isUploadingDocumentSuccess,_that.error,_that.documentTypes);case _:
  return null;

}
}

}

/// @nodoc


class _AddDocumentState implements AddDocumentState {
  const _AddDocumentState({required this.isFetchingDocumentTypes, required this.isFetchingDocumentTypesFailed, required this.isFetchingDocumentTypesSuccess, required this.isUploadingDocument, required this.isUploadingDocumentFailed, required this.isUploadingDocumentSuccess, required this.error, required final  List<DocumentType> documentTypes}): _documentTypes = documentTypes;
  

@override final  bool isFetchingDocumentTypes;
@override final  bool isFetchingDocumentTypesFailed;
@override final  bool isFetchingDocumentTypesSuccess;
@override final  bool isUploadingDocument;
@override final  bool isUploadingDocumentFailed;
@override final  bool isUploadingDocumentSuccess;
@override final  ErrorModel error;
 final  List<DocumentType> _documentTypes;
@override List<DocumentType> get documentTypes {
  if (_documentTypes is EqualUnmodifiableListView) return _documentTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_documentTypes);
}


/// Create a copy of AddDocumentState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddDocumentStateCopyWith<_AddDocumentState> get copyWith => __$AddDocumentStateCopyWithImpl<_AddDocumentState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddDocumentState&&(identical(other.isFetchingDocumentTypes, isFetchingDocumentTypes) || other.isFetchingDocumentTypes == isFetchingDocumentTypes)&&(identical(other.isFetchingDocumentTypesFailed, isFetchingDocumentTypesFailed) || other.isFetchingDocumentTypesFailed == isFetchingDocumentTypesFailed)&&(identical(other.isFetchingDocumentTypesSuccess, isFetchingDocumentTypesSuccess) || other.isFetchingDocumentTypesSuccess == isFetchingDocumentTypesSuccess)&&(identical(other.isUploadingDocument, isUploadingDocument) || other.isUploadingDocument == isUploadingDocument)&&(identical(other.isUploadingDocumentFailed, isUploadingDocumentFailed) || other.isUploadingDocumentFailed == isUploadingDocumentFailed)&&(identical(other.isUploadingDocumentSuccess, isUploadingDocumentSuccess) || other.isUploadingDocumentSuccess == isUploadingDocumentSuccess)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other._documentTypes, _documentTypes));
}


@override
int get hashCode => Object.hash(runtimeType,isFetchingDocumentTypes,isFetchingDocumentTypesFailed,isFetchingDocumentTypesSuccess,isUploadingDocument,isUploadingDocumentFailed,isUploadingDocumentSuccess,error,const DeepCollectionEquality().hash(_documentTypes));

@override
String toString() {
  return 'AddDocumentState(isFetchingDocumentTypes: $isFetchingDocumentTypes, isFetchingDocumentTypesFailed: $isFetchingDocumentTypesFailed, isFetchingDocumentTypesSuccess: $isFetchingDocumentTypesSuccess, isUploadingDocument: $isUploadingDocument, isUploadingDocumentFailed: $isUploadingDocumentFailed, isUploadingDocumentSuccess: $isUploadingDocumentSuccess, error: $error, documentTypes: $documentTypes)';
}


}

/// @nodoc
abstract mixin class _$AddDocumentStateCopyWith<$Res> implements $AddDocumentStateCopyWith<$Res> {
  factory _$AddDocumentStateCopyWith(_AddDocumentState value, $Res Function(_AddDocumentState) _then) = __$AddDocumentStateCopyWithImpl;
@override @useResult
$Res call({
 bool isFetchingDocumentTypes, bool isFetchingDocumentTypesFailed, bool isFetchingDocumentTypesSuccess, bool isUploadingDocument, bool isUploadingDocumentFailed, bool isUploadingDocumentSuccess, ErrorModel error, List<DocumentType> documentTypes
});


@override $ErrorModelCopyWith<$Res> get error;

}
/// @nodoc
class __$AddDocumentStateCopyWithImpl<$Res>
    implements _$AddDocumentStateCopyWith<$Res> {
  __$AddDocumentStateCopyWithImpl(this._self, this._then);

  final _AddDocumentState _self;
  final $Res Function(_AddDocumentState) _then;

/// Create a copy of AddDocumentState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isFetchingDocumentTypes = null,Object? isFetchingDocumentTypesFailed = null,Object? isFetchingDocumentTypesSuccess = null,Object? isUploadingDocument = null,Object? isUploadingDocumentFailed = null,Object? isUploadingDocumentSuccess = null,Object? error = null,Object? documentTypes = null,}) {
  return _then(_AddDocumentState(
isFetchingDocumentTypes: null == isFetchingDocumentTypes ? _self.isFetchingDocumentTypes : isFetchingDocumentTypes // ignore: cast_nullable_to_non_nullable
as bool,isFetchingDocumentTypesFailed: null == isFetchingDocumentTypesFailed ? _self.isFetchingDocumentTypesFailed : isFetchingDocumentTypesFailed // ignore: cast_nullable_to_non_nullable
as bool,isFetchingDocumentTypesSuccess: null == isFetchingDocumentTypesSuccess ? _self.isFetchingDocumentTypesSuccess : isFetchingDocumentTypesSuccess // ignore: cast_nullable_to_non_nullable
as bool,isUploadingDocument: null == isUploadingDocument ? _self.isUploadingDocument : isUploadingDocument // ignore: cast_nullable_to_non_nullable
as bool,isUploadingDocumentFailed: null == isUploadingDocumentFailed ? _self.isUploadingDocumentFailed : isUploadingDocumentFailed // ignore: cast_nullable_to_non_nullable
as bool,isUploadingDocumentSuccess: null == isUploadingDocumentSuccess ? _self.isUploadingDocumentSuccess : isUploadingDocumentSuccess // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,documentTypes: null == documentTypes ? _self._documentTypes : documentTypes // ignore: cast_nullable_to_non_nullable
as List<DocumentType>,
  ));
}

/// Create a copy of AddDocumentState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ErrorModelCopyWith<$Res> get error {
  
  return $ErrorModelCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

// dart format on
