// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_document_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddDocumentEvent {

 String get token;
/// Create a copy of AddDocumentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddDocumentEventCopyWith<AddDocumentEvent> get copyWith => _$AddDocumentEventCopyWithImpl<AddDocumentEvent>(this as AddDocumentEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddDocumentEvent&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,token);

@override
String toString() {
  return 'AddDocumentEvent(token: $token)';
}


}

/// @nodoc
abstract mixin class $AddDocumentEventCopyWith<$Res>  {
  factory $AddDocumentEventCopyWith(AddDocumentEvent value, $Res Function(AddDocumentEvent) _then) = _$AddDocumentEventCopyWithImpl;
@useResult
$Res call({
 String token
});




}
/// @nodoc
class _$AddDocumentEventCopyWithImpl<$Res>
    implements $AddDocumentEventCopyWith<$Res> {
  _$AddDocumentEventCopyWithImpl(this._self, this._then);

  final AddDocumentEvent _self;
  final $Res Function(AddDocumentEvent) _then;

/// Create a copy of AddDocumentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetDocumentTypes value)?  getDocumentTypes,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetDocumentTypes() when getDocumentTypes != null:
return getDocumentTypes(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetDocumentTypes value)  getDocumentTypes,}){
final _that = this;
switch (_that) {
case GetDocumentTypes():
return getDocumentTypes(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetDocumentTypes value)?  getDocumentTypes,}){
final _that = this;
switch (_that) {
case GetDocumentTypes() when getDocumentTypes != null:
return getDocumentTypes(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String token)?  getDocumentTypes,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetDocumentTypes() when getDocumentTypes != null:
return getDocumentTypes(_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String token)  getDocumentTypes,}) {final _that = this;
switch (_that) {
case GetDocumentTypes():
return getDocumentTypes(_that.token);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String token)?  getDocumentTypes,}) {final _that = this;
switch (_that) {
case GetDocumentTypes() when getDocumentTypes != null:
return getDocumentTypes(_that.token);case _:
  return null;

}
}

}

/// @nodoc


class GetDocumentTypes implements AddDocumentEvent {
  const GetDocumentTypes({required this.token});
  

@override final  String token;

/// Create a copy of AddDocumentEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
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
@override @useResult
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
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,}) {
  return _then(GetDocumentTypes(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$AddDocumentState {

 bool get isFetchingDocumentTypes; bool get isFetchingDocumentTypesFailed; bool get isFetchingDocumentTypesSucces; ErrorModel get error; List<DocumentTypeModel> get documentTypes;
/// Create a copy of AddDocumentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddDocumentStateCopyWith<AddDocumentState> get copyWith => _$AddDocumentStateCopyWithImpl<AddDocumentState>(this as AddDocumentState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddDocumentState&&(identical(other.isFetchingDocumentTypes, isFetchingDocumentTypes) || other.isFetchingDocumentTypes == isFetchingDocumentTypes)&&(identical(other.isFetchingDocumentTypesFailed, isFetchingDocumentTypesFailed) || other.isFetchingDocumentTypesFailed == isFetchingDocumentTypesFailed)&&(identical(other.isFetchingDocumentTypesSucces, isFetchingDocumentTypesSucces) || other.isFetchingDocumentTypesSucces == isFetchingDocumentTypesSucces)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other.documentTypes, documentTypes));
}


@override
int get hashCode => Object.hash(runtimeType,isFetchingDocumentTypes,isFetchingDocumentTypesFailed,isFetchingDocumentTypesSucces,error,const DeepCollectionEquality().hash(documentTypes));

@override
String toString() {
  return 'AddDocumentState(isFetchingDocumentTypes: $isFetchingDocumentTypes, isFetchingDocumentTypesFailed: $isFetchingDocumentTypesFailed, isFetchingDocumentTypesSucces: $isFetchingDocumentTypesSucces, error: $error, documentTypes: $documentTypes)';
}


}

/// @nodoc
abstract mixin class $AddDocumentStateCopyWith<$Res>  {
  factory $AddDocumentStateCopyWith(AddDocumentState value, $Res Function(AddDocumentState) _then) = _$AddDocumentStateCopyWithImpl;
@useResult
$Res call({
 bool isFetchingDocumentTypes, bool isFetchingDocumentTypesFailed, bool isFetchingDocumentTypesSucces, ErrorModel error, List<DocumentTypeModel> documentTypes
});




}
/// @nodoc
class _$AddDocumentStateCopyWithImpl<$Res>
    implements $AddDocumentStateCopyWith<$Res> {
  _$AddDocumentStateCopyWithImpl(this._self, this._then);

  final AddDocumentState _self;
  final $Res Function(AddDocumentState) _then;

/// Create a copy of AddDocumentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isFetchingDocumentTypes = null,Object? isFetchingDocumentTypesFailed = null,Object? isFetchingDocumentTypesSucces = null,Object? error = null,Object? documentTypes = null,}) {
  return _then(_self.copyWith(
isFetchingDocumentTypes: null == isFetchingDocumentTypes ? _self.isFetchingDocumentTypes : isFetchingDocumentTypes // ignore: cast_nullable_to_non_nullable
as bool,isFetchingDocumentTypesFailed: null == isFetchingDocumentTypesFailed ? _self.isFetchingDocumentTypesFailed : isFetchingDocumentTypesFailed // ignore: cast_nullable_to_non_nullable
as bool,isFetchingDocumentTypesSucces: null == isFetchingDocumentTypesSucces ? _self.isFetchingDocumentTypesSucces : isFetchingDocumentTypesSucces // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,documentTypes: null == documentTypes ? _self.documentTypes : documentTypes // ignore: cast_nullable_to_non_nullable
as List<DocumentTypeModel>,
  ));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isFetchingDocumentTypes,  bool isFetchingDocumentTypesFailed,  bool isFetchingDocumentTypesSucces,  ErrorModel error,  List<DocumentTypeModel> documentTypes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddDocumentState() when $default != null:
return $default(_that.isFetchingDocumentTypes,_that.isFetchingDocumentTypesFailed,_that.isFetchingDocumentTypesSucces,_that.error,_that.documentTypes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isFetchingDocumentTypes,  bool isFetchingDocumentTypesFailed,  bool isFetchingDocumentTypesSucces,  ErrorModel error,  List<DocumentTypeModel> documentTypes)  $default,) {final _that = this;
switch (_that) {
case _AddDocumentState():
return $default(_that.isFetchingDocumentTypes,_that.isFetchingDocumentTypesFailed,_that.isFetchingDocumentTypesSucces,_that.error,_that.documentTypes);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isFetchingDocumentTypes,  bool isFetchingDocumentTypesFailed,  bool isFetchingDocumentTypesSucces,  ErrorModel error,  List<DocumentTypeModel> documentTypes)?  $default,) {final _that = this;
switch (_that) {
case _AddDocumentState() when $default != null:
return $default(_that.isFetchingDocumentTypes,_that.isFetchingDocumentTypesFailed,_that.isFetchingDocumentTypesSucces,_that.error,_that.documentTypes);case _:
  return null;

}
}

}

/// @nodoc


class _AddDocumentState implements AddDocumentState {
  const _AddDocumentState({required this.isFetchingDocumentTypes, required this.isFetchingDocumentTypesFailed, required this.isFetchingDocumentTypesSucces, required this.error, required final  List<DocumentTypeModel> documentTypes}): _documentTypes = documentTypes;
  

@override final  bool isFetchingDocumentTypes;
@override final  bool isFetchingDocumentTypesFailed;
@override final  bool isFetchingDocumentTypesSucces;
@override final  ErrorModel error;
 final  List<DocumentTypeModel> _documentTypes;
@override List<DocumentTypeModel> get documentTypes {
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddDocumentState&&(identical(other.isFetchingDocumentTypes, isFetchingDocumentTypes) || other.isFetchingDocumentTypes == isFetchingDocumentTypes)&&(identical(other.isFetchingDocumentTypesFailed, isFetchingDocumentTypesFailed) || other.isFetchingDocumentTypesFailed == isFetchingDocumentTypesFailed)&&(identical(other.isFetchingDocumentTypesSucces, isFetchingDocumentTypesSucces) || other.isFetchingDocumentTypesSucces == isFetchingDocumentTypesSucces)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other._documentTypes, _documentTypes));
}


@override
int get hashCode => Object.hash(runtimeType,isFetchingDocumentTypes,isFetchingDocumentTypesFailed,isFetchingDocumentTypesSucces,error,const DeepCollectionEquality().hash(_documentTypes));

@override
String toString() {
  return 'AddDocumentState(isFetchingDocumentTypes: $isFetchingDocumentTypes, isFetchingDocumentTypesFailed: $isFetchingDocumentTypesFailed, isFetchingDocumentTypesSucces: $isFetchingDocumentTypesSucces, error: $error, documentTypes: $documentTypes)';
}


}

/// @nodoc
abstract mixin class _$AddDocumentStateCopyWith<$Res> implements $AddDocumentStateCopyWith<$Res> {
  factory _$AddDocumentStateCopyWith(_AddDocumentState value, $Res Function(_AddDocumentState) _then) = __$AddDocumentStateCopyWithImpl;
@override @useResult
$Res call({
 bool isFetchingDocumentTypes, bool isFetchingDocumentTypesFailed, bool isFetchingDocumentTypesSucces, ErrorModel error, List<DocumentTypeModel> documentTypes
});




}
/// @nodoc
class __$AddDocumentStateCopyWithImpl<$Res>
    implements _$AddDocumentStateCopyWith<$Res> {
  __$AddDocumentStateCopyWithImpl(this._self, this._then);

  final _AddDocumentState _self;
  final $Res Function(_AddDocumentState) _then;

/// Create a copy of AddDocumentState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isFetchingDocumentTypes = null,Object? isFetchingDocumentTypesFailed = null,Object? isFetchingDocumentTypesSucces = null,Object? error = null,Object? documentTypes = null,}) {
  return _then(_AddDocumentState(
isFetchingDocumentTypes: null == isFetchingDocumentTypes ? _self.isFetchingDocumentTypes : isFetchingDocumentTypes // ignore: cast_nullable_to_non_nullable
as bool,isFetchingDocumentTypesFailed: null == isFetchingDocumentTypesFailed ? _self.isFetchingDocumentTypesFailed : isFetchingDocumentTypesFailed // ignore: cast_nullable_to_non_nullable
as bool,isFetchingDocumentTypesSucces: null == isFetchingDocumentTypesSucces ? _self.isFetchingDocumentTypesSucces : isFetchingDocumentTypesSucces // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,documentTypes: null == documentTypes ? _self._documentTypes : documentTypes // ignore: cast_nullable_to_non_nullable
as List<DocumentTypeModel>,
  ));
}


}

// dart format on
