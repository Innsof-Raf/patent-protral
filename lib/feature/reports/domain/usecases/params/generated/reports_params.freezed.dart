// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../reports_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReportsParams {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportsParams);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReportsParams()';
}


}

/// @nodoc
class $ReportsParamsCopyWith<$Res>  {
$ReportsParamsCopyWith(ReportsParams _, $Res Function(ReportsParams) __);
}


/// Adds pattern-matching-related methods to [ReportsParams].
extension ReportsParamsPatterns on ReportsParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetReportsParams value)?  getReports,TResult Function( DownloadReportParams value)?  downloadReport,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetReportsParams() when getReports != null:
return getReports(_that);case DownloadReportParams() when downloadReport != null:
return downloadReport(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetReportsParams value)  getReports,required TResult Function( DownloadReportParams value)  downloadReport,}){
final _that = this;
switch (_that) {
case GetReportsParams():
return getReports(_that);case DownloadReportParams():
return downloadReport(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetReportsParams value)?  getReports,TResult? Function( DownloadReportParams value)?  downloadReport,}){
final _that = this;
switch (_that) {
case GetReportsParams() when getReports != null:
return getReports(_that);case DownloadReportParams() when downloadReport != null:
return downloadReport(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int memberId,  String token,  String mobileNumber)?  getReports,TResult Function( String url)?  downloadReport,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetReportsParams() when getReports != null:
return getReports(_that.memberId,_that.token,_that.mobileNumber);case DownloadReportParams() when downloadReport != null:
return downloadReport(_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int memberId,  String token,  String mobileNumber)  getReports,required TResult Function( String url)  downloadReport,}) {final _that = this;
switch (_that) {
case GetReportsParams():
return getReports(_that.memberId,_that.token,_that.mobileNumber);case DownloadReportParams():
return downloadReport(_that.url);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int memberId,  String token,  String mobileNumber)?  getReports,TResult? Function( String url)?  downloadReport,}) {final _that = this;
switch (_that) {
case GetReportsParams() when getReports != null:
return getReports(_that.memberId,_that.token,_that.mobileNumber);case DownloadReportParams() when downloadReport != null:
return downloadReport(_that.url);case _:
  return null;

}
}

}

/// @nodoc


class GetReportsParams implements ReportsParams {
  const GetReportsParams({required this.memberId, required this.token, required this.mobileNumber});
  

 final  int memberId;
 final  String token;
 final  String mobileNumber;

/// Create a copy of ReportsParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetReportsParamsCopyWith<GetReportsParams> get copyWith => _$GetReportsParamsCopyWithImpl<GetReportsParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetReportsParams&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.token, token) || other.token == token)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber));
}


@override
int get hashCode => Object.hash(runtimeType,memberId,token,mobileNumber);

@override
String toString() {
  return 'ReportsParams.getReports(memberId: $memberId, token: $token, mobileNumber: $mobileNumber)';
}


}

/// @nodoc
abstract mixin class $GetReportsParamsCopyWith<$Res> implements $ReportsParamsCopyWith<$Res> {
  factory $GetReportsParamsCopyWith(GetReportsParams value, $Res Function(GetReportsParams) _then) = _$GetReportsParamsCopyWithImpl;
@useResult
$Res call({
 int memberId, String token, String mobileNumber
});




}
/// @nodoc
class _$GetReportsParamsCopyWithImpl<$Res>
    implements $GetReportsParamsCopyWith<$Res> {
  _$GetReportsParamsCopyWithImpl(this._self, this._then);

  final GetReportsParams _self;
  final $Res Function(GetReportsParams) _then;

/// Create a copy of ReportsParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? memberId = null,Object? token = null,Object? mobileNumber = null,}) {
  return _then(GetReportsParams(
memberId: null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as int,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DownloadReportParams implements ReportsParams {
  const DownloadReportParams({required this.url});
  

 final  String url;

/// Create a copy of ReportsParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DownloadReportParamsCopyWith<DownloadReportParams> get copyWith => _$DownloadReportParamsCopyWithImpl<DownloadReportParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadReportParams&&(identical(other.url, url) || other.url == url));
}


@override
int get hashCode => Object.hash(runtimeType,url);

@override
String toString() {
  return 'ReportsParams.downloadReport(url: $url)';
}


}

/// @nodoc
abstract mixin class $DownloadReportParamsCopyWith<$Res> implements $ReportsParamsCopyWith<$Res> {
  factory $DownloadReportParamsCopyWith(DownloadReportParams value, $Res Function(DownloadReportParams) _then) = _$DownloadReportParamsCopyWithImpl;
@useResult
$Res call({
 String url
});




}
/// @nodoc
class _$DownloadReportParamsCopyWithImpl<$Res>
    implements $DownloadReportParamsCopyWith<$Res> {
  _$DownloadReportParamsCopyWithImpl(this._self, this._then);

  final DownloadReportParams _self;
  final $Res Function(DownloadReportParams) _then;

/// Create a copy of ReportsParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? url = null,}) {
  return _then(DownloadReportParams(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
