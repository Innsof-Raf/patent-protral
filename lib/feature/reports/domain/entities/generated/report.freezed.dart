// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Report {

 int get idConseltation; int get id; int get memberId; String get customerName; String get doctorName; String get departmentName; DateTime get appointmentDate; String get appointmentTime; String? get labPdfUrl; String? get xRayPdfUrl; String? get ussPdfUrl; String? get ctPdfUrl;
/// Create a copy of Report
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportCopyWith<Report> get copyWith => _$ReportCopyWithImpl<Report>(this as Report, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Report&&(identical(other.idConseltation, idConseltation) || other.idConseltation == idConseltation)&&(identical(other.id, id) || other.id == id)&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.doctorName, doctorName) || other.doctorName == doctorName)&&(identical(other.departmentName, departmentName) || other.departmentName == departmentName)&&(identical(other.appointmentDate, appointmentDate) || other.appointmentDate == appointmentDate)&&(identical(other.appointmentTime, appointmentTime) || other.appointmentTime == appointmentTime)&&(identical(other.labPdfUrl, labPdfUrl) || other.labPdfUrl == labPdfUrl)&&(identical(other.xRayPdfUrl, xRayPdfUrl) || other.xRayPdfUrl == xRayPdfUrl)&&(identical(other.ussPdfUrl, ussPdfUrl) || other.ussPdfUrl == ussPdfUrl)&&(identical(other.ctPdfUrl, ctPdfUrl) || other.ctPdfUrl == ctPdfUrl));
}


@override
int get hashCode => Object.hash(runtimeType,idConseltation,id,memberId,customerName,doctorName,departmentName,appointmentDate,appointmentTime,labPdfUrl,xRayPdfUrl,ussPdfUrl,ctPdfUrl);

@override
String toString() {
  return 'Report(idConseltation: $idConseltation, id: $id, memberId: $memberId, customerName: $customerName, doctorName: $doctorName, departmentName: $departmentName, appointmentDate: $appointmentDate, appointmentTime: $appointmentTime, labPdfUrl: $labPdfUrl, xRayPdfUrl: $xRayPdfUrl, ussPdfUrl: $ussPdfUrl, ctPdfUrl: $ctPdfUrl)';
}


}

/// @nodoc
abstract mixin class $ReportCopyWith<$Res>  {
  factory $ReportCopyWith(Report value, $Res Function(Report) _then) = _$ReportCopyWithImpl;
@useResult
$Res call({
 int idConseltation, int id, int memberId, String customerName, String doctorName, String departmentName, DateTime appointmentDate, String appointmentTime, String? labPdfUrl, String? xRayPdfUrl, String? ussPdfUrl, String? ctPdfUrl
});




}
/// @nodoc
class _$ReportCopyWithImpl<$Res>
    implements $ReportCopyWith<$Res> {
  _$ReportCopyWithImpl(this._self, this._then);

  final Report _self;
  final $Res Function(Report) _then;

/// Create a copy of Report
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idConseltation = null,Object? id = null,Object? memberId = null,Object? customerName = null,Object? doctorName = null,Object? departmentName = null,Object? appointmentDate = null,Object? appointmentTime = null,Object? labPdfUrl = freezed,Object? xRayPdfUrl = freezed,Object? ussPdfUrl = freezed,Object? ctPdfUrl = freezed,}) {
  return _then(_self.copyWith(
idConseltation: null == idConseltation ? _self.idConseltation : idConseltation // ignore: cast_nullable_to_non_nullable
as int,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,memberId: null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as int,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,doctorName: null == doctorName ? _self.doctorName : doctorName // ignore: cast_nullable_to_non_nullable
as String,departmentName: null == departmentName ? _self.departmentName : departmentName // ignore: cast_nullable_to_non_nullable
as String,appointmentDate: null == appointmentDate ? _self.appointmentDate : appointmentDate // ignore: cast_nullable_to_non_nullable
as DateTime,appointmentTime: null == appointmentTime ? _self.appointmentTime : appointmentTime // ignore: cast_nullable_to_non_nullable
as String,labPdfUrl: freezed == labPdfUrl ? _self.labPdfUrl : labPdfUrl // ignore: cast_nullable_to_non_nullable
as String?,xRayPdfUrl: freezed == xRayPdfUrl ? _self.xRayPdfUrl : xRayPdfUrl // ignore: cast_nullable_to_non_nullable
as String?,ussPdfUrl: freezed == ussPdfUrl ? _self.ussPdfUrl : ussPdfUrl // ignore: cast_nullable_to_non_nullable
as String?,ctPdfUrl: freezed == ctPdfUrl ? _self.ctPdfUrl : ctPdfUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Report].
extension ReportPatterns on Report {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Report value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Report() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Report value)  $default,){
final _that = this;
switch (_that) {
case _Report():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Report value)?  $default,){
final _that = this;
switch (_that) {
case _Report() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int idConseltation,  int id,  int memberId,  String customerName,  String doctorName,  String departmentName,  DateTime appointmentDate,  String appointmentTime,  String? labPdfUrl,  String? xRayPdfUrl,  String? ussPdfUrl,  String? ctPdfUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Report() when $default != null:
return $default(_that.idConseltation,_that.id,_that.memberId,_that.customerName,_that.doctorName,_that.departmentName,_that.appointmentDate,_that.appointmentTime,_that.labPdfUrl,_that.xRayPdfUrl,_that.ussPdfUrl,_that.ctPdfUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int idConseltation,  int id,  int memberId,  String customerName,  String doctorName,  String departmentName,  DateTime appointmentDate,  String appointmentTime,  String? labPdfUrl,  String? xRayPdfUrl,  String? ussPdfUrl,  String? ctPdfUrl)  $default,) {final _that = this;
switch (_that) {
case _Report():
return $default(_that.idConseltation,_that.id,_that.memberId,_that.customerName,_that.doctorName,_that.departmentName,_that.appointmentDate,_that.appointmentTime,_that.labPdfUrl,_that.xRayPdfUrl,_that.ussPdfUrl,_that.ctPdfUrl);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int idConseltation,  int id,  int memberId,  String customerName,  String doctorName,  String departmentName,  DateTime appointmentDate,  String appointmentTime,  String? labPdfUrl,  String? xRayPdfUrl,  String? ussPdfUrl,  String? ctPdfUrl)?  $default,) {final _that = this;
switch (_that) {
case _Report() when $default != null:
return $default(_that.idConseltation,_that.id,_that.memberId,_that.customerName,_that.doctorName,_that.departmentName,_that.appointmentDate,_that.appointmentTime,_that.labPdfUrl,_that.xRayPdfUrl,_that.ussPdfUrl,_that.ctPdfUrl);case _:
  return null;

}
}

}

/// @nodoc


class _Report implements Report {
  const _Report({required this.idConseltation, required this.id, required this.memberId, required this.customerName, required this.doctorName, required this.departmentName, required this.appointmentDate, required this.appointmentTime, this.labPdfUrl, this.xRayPdfUrl, this.ussPdfUrl, this.ctPdfUrl});
  

@override final  int idConseltation;
@override final  int id;
@override final  int memberId;
@override final  String customerName;
@override final  String doctorName;
@override final  String departmentName;
@override final  DateTime appointmentDate;
@override final  String appointmentTime;
@override final  String? labPdfUrl;
@override final  String? xRayPdfUrl;
@override final  String? ussPdfUrl;
@override final  String? ctPdfUrl;

/// Create a copy of Report
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportCopyWith<_Report> get copyWith => __$ReportCopyWithImpl<_Report>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Report&&(identical(other.idConseltation, idConseltation) || other.idConseltation == idConseltation)&&(identical(other.id, id) || other.id == id)&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.doctorName, doctorName) || other.doctorName == doctorName)&&(identical(other.departmentName, departmentName) || other.departmentName == departmentName)&&(identical(other.appointmentDate, appointmentDate) || other.appointmentDate == appointmentDate)&&(identical(other.appointmentTime, appointmentTime) || other.appointmentTime == appointmentTime)&&(identical(other.labPdfUrl, labPdfUrl) || other.labPdfUrl == labPdfUrl)&&(identical(other.xRayPdfUrl, xRayPdfUrl) || other.xRayPdfUrl == xRayPdfUrl)&&(identical(other.ussPdfUrl, ussPdfUrl) || other.ussPdfUrl == ussPdfUrl)&&(identical(other.ctPdfUrl, ctPdfUrl) || other.ctPdfUrl == ctPdfUrl));
}


@override
int get hashCode => Object.hash(runtimeType,idConseltation,id,memberId,customerName,doctorName,departmentName,appointmentDate,appointmentTime,labPdfUrl,xRayPdfUrl,ussPdfUrl,ctPdfUrl);

@override
String toString() {
  return 'Report(idConseltation: $idConseltation, id: $id, memberId: $memberId, customerName: $customerName, doctorName: $doctorName, departmentName: $departmentName, appointmentDate: $appointmentDate, appointmentTime: $appointmentTime, labPdfUrl: $labPdfUrl, xRayPdfUrl: $xRayPdfUrl, ussPdfUrl: $ussPdfUrl, ctPdfUrl: $ctPdfUrl)';
}


}

/// @nodoc
abstract mixin class _$ReportCopyWith<$Res> implements $ReportCopyWith<$Res> {
  factory _$ReportCopyWith(_Report value, $Res Function(_Report) _then) = __$ReportCopyWithImpl;
@override @useResult
$Res call({
 int idConseltation, int id, int memberId, String customerName, String doctorName, String departmentName, DateTime appointmentDate, String appointmentTime, String? labPdfUrl, String? xRayPdfUrl, String? ussPdfUrl, String? ctPdfUrl
});




}
/// @nodoc
class __$ReportCopyWithImpl<$Res>
    implements _$ReportCopyWith<$Res> {
  __$ReportCopyWithImpl(this._self, this._then);

  final _Report _self;
  final $Res Function(_Report) _then;

/// Create a copy of Report
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idConseltation = null,Object? id = null,Object? memberId = null,Object? customerName = null,Object? doctorName = null,Object? departmentName = null,Object? appointmentDate = null,Object? appointmentTime = null,Object? labPdfUrl = freezed,Object? xRayPdfUrl = freezed,Object? ussPdfUrl = freezed,Object? ctPdfUrl = freezed,}) {
  return _then(_Report(
idConseltation: null == idConseltation ? _self.idConseltation : idConseltation // ignore: cast_nullable_to_non_nullable
as int,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,memberId: null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as int,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,doctorName: null == doctorName ? _self.doctorName : doctorName // ignore: cast_nullable_to_non_nullable
as String,departmentName: null == departmentName ? _self.departmentName : departmentName // ignore: cast_nullable_to_non_nullable
as String,appointmentDate: null == appointmentDate ? _self.appointmentDate : appointmentDate // ignore: cast_nullable_to_non_nullable
as DateTime,appointmentTime: null == appointmentTime ? _self.appointmentTime : appointmentTime // ignore: cast_nullable_to_non_nullable
as String,labPdfUrl: freezed == labPdfUrl ? _self.labPdfUrl : labPdfUrl // ignore: cast_nullable_to_non_nullable
as String?,xRayPdfUrl: freezed == xRayPdfUrl ? _self.xRayPdfUrl : xRayPdfUrl // ignore: cast_nullable_to_non_nullable
as String?,ussPdfUrl: freezed == ussPdfUrl ? _self.ussPdfUrl : ussPdfUrl // ignore: cast_nullable_to_non_nullable
as String?,ctPdfUrl: freezed == ctPdfUrl ? _self.ctPdfUrl : ctPdfUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
