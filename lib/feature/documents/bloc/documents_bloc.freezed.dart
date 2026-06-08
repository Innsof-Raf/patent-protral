// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'documents_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DocumentsEvent {

 int get memberId; String get mobileNumber; String get token;
/// Create a copy of DocumentsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocumentsEventCopyWith<DocumentsEvent> get copyWith => _$DocumentsEventCopyWithImpl<DocumentsEvent>(this as DocumentsEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocumentsEvent&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,memberId,mobileNumber,token);

@override
String toString() {
  return 'DocumentsEvent(memberId: $memberId, mobileNumber: $mobileNumber, token: $token)';
}


}

/// @nodoc
abstract mixin class $DocumentsEventCopyWith<$Res>  {
  factory $DocumentsEventCopyWith(DocumentsEvent value, $Res Function(DocumentsEvent) _then) = _$DocumentsEventCopyWithImpl;
@useResult
$Res call({
 int memberId, String mobileNumber, String token
});




}
/// @nodoc
class _$DocumentsEventCopyWithImpl<$Res>
    implements $DocumentsEventCopyWith<$Res> {
  _$DocumentsEventCopyWithImpl(this._self, this._then);

  final DocumentsEvent _self;
  final $Res Function(DocumentsEvent) _then;

/// Create a copy of DocumentsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? memberId = null,Object? mobileNumber = null,Object? token = null,}) {
  return _then(_self.copyWith(
memberId: null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as int,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DocumentsEvent].
extension DocumentsEventPatterns on DocumentsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetDocuments value)?  getDocuments,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetDocuments() when getDocuments != null:
return getDocuments(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetDocuments value)  getDocuments,}){
final _that = this;
switch (_that) {
case GetDocuments():
return getDocuments(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetDocuments value)?  getDocuments,}){
final _that = this;
switch (_that) {
case GetDocuments() when getDocuments != null:
return getDocuments(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int memberId,  String mobileNumber,  String token)?  getDocuments,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetDocuments() when getDocuments != null:
return getDocuments(_that.memberId,_that.mobileNumber,_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int memberId,  String mobileNumber,  String token)  getDocuments,}) {final _that = this;
switch (_that) {
case GetDocuments():
return getDocuments(_that.memberId,_that.mobileNumber,_that.token);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int memberId,  String mobileNumber,  String token)?  getDocuments,}) {final _that = this;
switch (_that) {
case GetDocuments() when getDocuments != null:
return getDocuments(_that.memberId,_that.mobileNumber,_that.token);case _:
  return null;

}
}

}

/// @nodoc


class GetDocuments implements DocumentsEvent {
  const GetDocuments({required this.memberId, required this.mobileNumber, required this.token});
  

@override final  int memberId;
@override final  String mobileNumber;
@override final  String token;

/// Create a copy of DocumentsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetDocumentsCopyWith<GetDocuments> get copyWith => _$GetDocumentsCopyWithImpl<GetDocuments>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetDocuments&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,memberId,mobileNumber,token);

@override
String toString() {
  return 'DocumentsEvent.getDocuments(memberId: $memberId, mobileNumber: $mobileNumber, token: $token)';
}


}

/// @nodoc
abstract mixin class $GetDocumentsCopyWith<$Res> implements $DocumentsEventCopyWith<$Res> {
  factory $GetDocumentsCopyWith(GetDocuments value, $Res Function(GetDocuments) _then) = _$GetDocumentsCopyWithImpl;
@override @useResult
$Res call({
 int memberId, String mobileNumber, String token
});




}
/// @nodoc
class _$GetDocumentsCopyWithImpl<$Res>
    implements $GetDocumentsCopyWith<$Res> {
  _$GetDocumentsCopyWithImpl(this._self, this._then);

  final GetDocuments _self;
  final $Res Function(GetDocuments) _then;

/// Create a copy of DocumentsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? memberId = null,Object? mobileNumber = null,Object? token = null,}) {
  return _then(GetDocuments(
memberId: null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as int,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$DocumentsState {

 List<DocumentModel> get documents; bool get isFetching; bool get isFetchingFailed; bool get isFetchingSucces; ErrorModel get error; int get selectedMemberId;
/// Create a copy of DocumentsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocumentsStateCopyWith<DocumentsState> get copyWith => _$DocumentsStateCopyWithImpl<DocumentsState>(this as DocumentsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocumentsState&&const DeepCollectionEquality().equals(other.documents, documents)&&(identical(other.isFetching, isFetching) || other.isFetching == isFetching)&&(identical(other.isFetchingFailed, isFetchingFailed) || other.isFetchingFailed == isFetchingFailed)&&(identical(other.isFetchingSucces, isFetchingSucces) || other.isFetchingSucces == isFetchingSucces)&&(identical(other.error, error) || other.error == error)&&(identical(other.selectedMemberId, selectedMemberId) || other.selectedMemberId == selectedMemberId));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(documents),isFetching,isFetchingFailed,isFetchingSucces,error,selectedMemberId);

@override
String toString() {
  return 'DocumentsState(documents: $documents, isFetching: $isFetching, isFetchingFailed: $isFetchingFailed, isFetchingSucces: $isFetchingSucces, error: $error, selectedMemberId: $selectedMemberId)';
}


}

/// @nodoc
abstract mixin class $DocumentsStateCopyWith<$Res>  {
  factory $DocumentsStateCopyWith(DocumentsState value, $Res Function(DocumentsState) _then) = _$DocumentsStateCopyWithImpl;
@useResult
$Res call({
 List<DocumentModel> documents, bool isFetching, bool isFetchingFailed, bool isFetchingSucces, ErrorModel error, int selectedMemberId
});




}
/// @nodoc
class _$DocumentsStateCopyWithImpl<$Res>
    implements $DocumentsStateCopyWith<$Res> {
  _$DocumentsStateCopyWithImpl(this._self, this._then);

  final DocumentsState _self;
  final $Res Function(DocumentsState) _then;

/// Create a copy of DocumentsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? documents = null,Object? isFetching = null,Object? isFetchingFailed = null,Object? isFetchingSucces = null,Object? error = null,Object? selectedMemberId = null,}) {
  return _then(_self.copyWith(
documents: null == documents ? _self.documents : documents // ignore: cast_nullable_to_non_nullable
as List<DocumentModel>,isFetching: null == isFetching ? _self.isFetching : isFetching // ignore: cast_nullable_to_non_nullable
as bool,isFetchingFailed: null == isFetchingFailed ? _self.isFetchingFailed : isFetchingFailed // ignore: cast_nullable_to_non_nullable
as bool,isFetchingSucces: null == isFetchingSucces ? _self.isFetchingSucces : isFetchingSucces // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,selectedMemberId: null == selectedMemberId ? _self.selectedMemberId : selectedMemberId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DocumentsState].
extension DocumentsStatePatterns on DocumentsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocumentsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocumentsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocumentsState value)  $default,){
final _that = this;
switch (_that) {
case _DocumentsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocumentsState value)?  $default,){
final _that = this;
switch (_that) {
case _DocumentsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<DocumentModel> documents,  bool isFetching,  bool isFetchingFailed,  bool isFetchingSucces,  ErrorModel error,  int selectedMemberId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocumentsState() when $default != null:
return $default(_that.documents,_that.isFetching,_that.isFetchingFailed,_that.isFetchingSucces,_that.error,_that.selectedMemberId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<DocumentModel> documents,  bool isFetching,  bool isFetchingFailed,  bool isFetchingSucces,  ErrorModel error,  int selectedMemberId)  $default,) {final _that = this;
switch (_that) {
case _DocumentsState():
return $default(_that.documents,_that.isFetching,_that.isFetchingFailed,_that.isFetchingSucces,_that.error,_that.selectedMemberId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<DocumentModel> documents,  bool isFetching,  bool isFetchingFailed,  bool isFetchingSucces,  ErrorModel error,  int selectedMemberId)?  $default,) {final _that = this;
switch (_that) {
case _DocumentsState() when $default != null:
return $default(_that.documents,_that.isFetching,_that.isFetchingFailed,_that.isFetchingSucces,_that.error,_that.selectedMemberId);case _:
  return null;

}
}

}

/// @nodoc


class _DocumentsState implements DocumentsState {
  const _DocumentsState({required final  List<DocumentModel> documents, required this.isFetching, required this.isFetchingFailed, required this.isFetchingSucces, required this.error, required this.selectedMemberId}): _documents = documents;
  

 final  List<DocumentModel> _documents;
@override List<DocumentModel> get documents {
  if (_documents is EqualUnmodifiableListView) return _documents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_documents);
}

@override final  bool isFetching;
@override final  bool isFetchingFailed;
@override final  bool isFetchingSucces;
@override final  ErrorModel error;
@override final  int selectedMemberId;

/// Create a copy of DocumentsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocumentsStateCopyWith<_DocumentsState> get copyWith => __$DocumentsStateCopyWithImpl<_DocumentsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocumentsState&&const DeepCollectionEquality().equals(other._documents, _documents)&&(identical(other.isFetching, isFetching) || other.isFetching == isFetching)&&(identical(other.isFetchingFailed, isFetchingFailed) || other.isFetchingFailed == isFetchingFailed)&&(identical(other.isFetchingSucces, isFetchingSucces) || other.isFetchingSucces == isFetchingSucces)&&(identical(other.error, error) || other.error == error)&&(identical(other.selectedMemberId, selectedMemberId) || other.selectedMemberId == selectedMemberId));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_documents),isFetching,isFetchingFailed,isFetchingSucces,error,selectedMemberId);

@override
String toString() {
  return 'DocumentsState(documents: $documents, isFetching: $isFetching, isFetchingFailed: $isFetchingFailed, isFetchingSucces: $isFetchingSucces, error: $error, selectedMemberId: $selectedMemberId)';
}


}

/// @nodoc
abstract mixin class _$DocumentsStateCopyWith<$Res> implements $DocumentsStateCopyWith<$Res> {
  factory _$DocumentsStateCopyWith(_DocumentsState value, $Res Function(_DocumentsState) _then) = __$DocumentsStateCopyWithImpl;
@override @useResult
$Res call({
 List<DocumentModel> documents, bool isFetching, bool isFetchingFailed, bool isFetchingSucces, ErrorModel error, int selectedMemberId
});




}
/// @nodoc
class __$DocumentsStateCopyWithImpl<$Res>
    implements _$DocumentsStateCopyWith<$Res> {
  __$DocumentsStateCopyWithImpl(this._self, this._then);

  final _DocumentsState _self;
  final $Res Function(_DocumentsState) _then;

/// Create a copy of DocumentsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? documents = null,Object? isFetching = null,Object? isFetchingFailed = null,Object? isFetchingSucces = null,Object? error = null,Object? selectedMemberId = null,}) {
  return _then(_DocumentsState(
documents: null == documents ? _self._documents : documents // ignore: cast_nullable_to_non_nullable
as List<DocumentModel>,isFetching: null == isFetching ? _self.isFetching : isFetching // ignore: cast_nullable_to_non_nullable
as bool,isFetchingFailed: null == isFetchingFailed ? _self.isFetchingFailed : isFetchingFailed // ignore: cast_nullable_to_non_nullable
as bool,isFetchingSucces: null == isFetchingSucces ? _self.isFetchingSucces : isFetchingSucces // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,selectedMemberId: null == selectedMemberId ? _self.selectedMemberId : selectedMemberId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
