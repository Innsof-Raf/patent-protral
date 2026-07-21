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
ReportsParams _$ReportsParamsFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'getReports':
          return GetReportsParams.fromJson(
            json
          );
                case 'downloadReport':
          return DownloadReportParams.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'ReportsParams',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$ReportsParams {



  /// Serializes this ReportsParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportsParams);
}

@JsonKey(includeFromJson: false, includeToJson: false)
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function(@JsonKey(name: 'id_customer')  int memberId, @JsonKey(includeToJson: false)  String token, @JsonKey(name: 'mobile_no')  String mobileNumber,  String status)?  getReports,TResult Function(@JsonKey(includeToJson: false)  String url)?  downloadReport,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetReportsParams() when getReports != null:
return getReports(_that.memberId,_that.token,_that.mobileNumber,_that.status);case DownloadReportParams() when downloadReport != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function(@JsonKey(name: 'id_customer')  int memberId, @JsonKey(includeToJson: false)  String token, @JsonKey(name: 'mobile_no')  String mobileNumber,  String status)  getReports,required TResult Function(@JsonKey(includeToJson: false)  String url)  downloadReport,}) {final _that = this;
switch (_that) {
case GetReportsParams():
return getReports(_that.memberId,_that.token,_that.mobileNumber,_that.status);case DownloadReportParams():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function(@JsonKey(name: 'id_customer')  int memberId, @JsonKey(includeToJson: false)  String token, @JsonKey(name: 'mobile_no')  String mobileNumber,  String status)?  getReports,TResult? Function(@JsonKey(includeToJson: false)  String url)?  downloadReport,}) {final _that = this;
switch (_that) {
case GetReportsParams() when getReports != null:
return getReports(_that.memberId,_that.token,_that.mobileNumber,_that.status);case DownloadReportParams() when downloadReport != null:
return downloadReport(_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class GetReportsParams implements ReportsParams {
  const GetReportsParams({@JsonKey(name: 'id_customer') required this.memberId, @JsonKey(includeToJson: false) required this.token, @JsonKey(name: 'mobile_no') required this.mobileNumber, this.status = 'ALL', final  String? $type}): $type = $type ?? 'getReports';
  factory GetReportsParams.fromJson(Map<String, dynamic> json) => _$GetReportsParamsFromJson(json);

@JsonKey(name: 'id_customer') final  int memberId;
@JsonKey(includeToJson: false) final  String token;
@JsonKey(name: 'mobile_no') final  String mobileNumber;
@JsonKey() final  String status;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ReportsParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetReportsParamsCopyWith<GetReportsParams> get copyWith => _$GetReportsParamsCopyWithImpl<GetReportsParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetReportsParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetReportsParams&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.token, token) || other.token == token)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,memberId,token,mobileNumber,status);

@override
String toString() {
  return 'ReportsParams.getReports(memberId: $memberId, token: $token, mobileNumber: $mobileNumber, status: $status)';
}


}

/// @nodoc
abstract mixin class $GetReportsParamsCopyWith<$Res> implements $ReportsParamsCopyWith<$Res> {
  factory $GetReportsParamsCopyWith(GetReportsParams value, $Res Function(GetReportsParams) _then) = _$GetReportsParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id_customer') int memberId,@JsonKey(includeToJson: false) String token,@JsonKey(name: 'mobile_no') String mobileNumber, String status
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
@pragma('vm:prefer-inline') $Res call({Object? memberId = null,Object? token = null,Object? mobileNumber = null,Object? status = null,}) {
  return _then(GetReportsParams(
memberId: null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as int,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class DownloadReportParams implements ReportsParams {
  const DownloadReportParams({@JsonKey(includeToJson: false) required this.url, final  String? $type}): $type = $type ?? 'downloadReport';
  factory DownloadReportParams.fromJson(Map<String, dynamic> json) => _$DownloadReportParamsFromJson(json);

@JsonKey(includeToJson: false) final  String url;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ReportsParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DownloadReportParamsCopyWith<DownloadReportParams> get copyWith => _$DownloadReportParamsCopyWithImpl<DownloadReportParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DownloadReportParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadReportParams&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
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
@JsonKey(includeToJson: false) String url
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
