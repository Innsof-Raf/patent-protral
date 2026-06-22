// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../documents_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
DocumentsParams _$DocumentsParamsFromJson(
  Map<String, dynamic> json
) {
    return _GetDocumentsParams.fromJson(
      json
    );
}

/// @nodoc
mixin _$DocumentsParams {

@JsonKey(name: 'id_customer') int get memberId;@JsonKey(name: 'mobile_number') String get mobileNumber;@JsonKey(includeToJson: false) String get token;
/// Create a copy of DocumentsParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocumentsParamsCopyWith<DocumentsParams> get copyWith => _$DocumentsParamsCopyWithImpl<DocumentsParams>(this as DocumentsParams, _$identity);

  /// Serializes this DocumentsParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocumentsParams&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,memberId,mobileNumber,token);

@override
String toString() {
  return 'DocumentsParams(memberId: $memberId, mobileNumber: $mobileNumber, token: $token)';
}


}

/// @nodoc
abstract mixin class $DocumentsParamsCopyWith<$Res>  {
  factory $DocumentsParamsCopyWith(DocumentsParams value, $Res Function(DocumentsParams) _then) = _$DocumentsParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id_customer') int memberId,@JsonKey(name: 'mobile_number') String mobileNumber,@JsonKey(includeToJson: false) String token
});




}
/// @nodoc
class _$DocumentsParamsCopyWithImpl<$Res>
    implements $DocumentsParamsCopyWith<$Res> {
  _$DocumentsParamsCopyWithImpl(this._self, this._then);

  final DocumentsParams _self;
  final $Res Function(DocumentsParams) _then;

/// Create a copy of DocumentsParams
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


/// Adds pattern-matching-related methods to [DocumentsParams].
extension DocumentsParamsPatterns on DocumentsParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetDocumentsParams value)?  getDocuments,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetDocumentsParams() when getDocuments != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetDocumentsParams value)  getDocuments,}){
final _that = this;
switch (_that) {
case _GetDocumentsParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetDocumentsParams value)?  getDocuments,}){
final _that = this;
switch (_that) {
case _GetDocumentsParams() when getDocuments != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function(@JsonKey(name: 'id_customer')  int memberId, @JsonKey(name: 'mobile_number')  String mobileNumber, @JsonKey(includeToJson: false)  String token)?  getDocuments,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetDocumentsParams() when getDocuments != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function(@JsonKey(name: 'id_customer')  int memberId, @JsonKey(name: 'mobile_number')  String mobileNumber, @JsonKey(includeToJson: false)  String token)  getDocuments,}) {final _that = this;
switch (_that) {
case _GetDocumentsParams():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function(@JsonKey(name: 'id_customer')  int memberId, @JsonKey(name: 'mobile_number')  String mobileNumber, @JsonKey(includeToJson: false)  String token)?  getDocuments,}) {final _that = this;
switch (_that) {
case _GetDocumentsParams() when getDocuments != null:
return getDocuments(_that.memberId,_that.mobileNumber,_that.token);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetDocumentsParams implements DocumentsParams {
  const _GetDocumentsParams({@JsonKey(name: 'id_customer') required this.memberId, @JsonKey(name: 'mobile_number') required this.mobileNumber, @JsonKey(includeToJson: false) required this.token});
  factory _GetDocumentsParams.fromJson(Map<String, dynamic> json) => _$GetDocumentsParamsFromJson(json);

@override@JsonKey(name: 'id_customer') final  int memberId;
@override@JsonKey(name: 'mobile_number') final  String mobileNumber;
@override@JsonKey(includeToJson: false) final  String token;

/// Create a copy of DocumentsParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetDocumentsParamsCopyWith<_GetDocumentsParams> get copyWith => __$GetDocumentsParamsCopyWithImpl<_GetDocumentsParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetDocumentsParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetDocumentsParams&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,memberId,mobileNumber,token);

@override
String toString() {
  return 'DocumentsParams.getDocuments(memberId: $memberId, mobileNumber: $mobileNumber, token: $token)';
}


}

/// @nodoc
abstract mixin class _$GetDocumentsParamsCopyWith<$Res> implements $DocumentsParamsCopyWith<$Res> {
  factory _$GetDocumentsParamsCopyWith(_GetDocumentsParams value, $Res Function(_GetDocumentsParams) _then) = __$GetDocumentsParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id_customer') int memberId,@JsonKey(name: 'mobile_number') String mobileNumber,@JsonKey(includeToJson: false) String token
});




}
/// @nodoc
class __$GetDocumentsParamsCopyWithImpl<$Res>
    implements _$GetDocumentsParamsCopyWith<$Res> {
  __$GetDocumentsParamsCopyWithImpl(this._self, this._then);

  final _GetDocumentsParams _self;
  final $Res Function(_GetDocumentsParams) _then;

/// Create a copy of DocumentsParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? memberId = null,Object? mobileNumber = null,Object? token = null,}) {
  return _then(_GetDocumentsParams(
memberId: null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as int,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
