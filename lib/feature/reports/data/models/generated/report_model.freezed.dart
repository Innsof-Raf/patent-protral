// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../report_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReportModel {

@JsonKey(name: "id_cons") int get idConseltation;@JsonKey(name: "id") int get id;@JsonKey(name: "ID_CUSTOMER") int get memberId;@JsonKey(name: "employee_name") String get doctorName;@JsonKey(name: "speciality") String get departmentName;@JsonKey(name: "appmnt_dttm") DateTime get appointmentDate;@JsonKey(name: "appmnt_time") String get appointmentTime;@JsonKey(name: "labreport_url") String? get labPdfUrl;@JsonKey(name: "xrayreport_url") String? get xRayPdfUrl;@JsonKey(name: "ussreport_url") String? get ussPdfUrl;@JsonKey(name: "ct_url") String? get ctPdfUrl;
/// Create a copy of ReportModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportModelCopyWith<ReportModel> get copyWith => _$ReportModelCopyWithImpl<ReportModel>(this as ReportModel, _$identity);

  /// Serializes this ReportModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportModel&&(identical(other.idConseltation, idConseltation) || other.idConseltation == idConseltation)&&(identical(other.id, id) || other.id == id)&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.doctorName, doctorName) || other.doctorName == doctorName)&&(identical(other.departmentName, departmentName) || other.departmentName == departmentName)&&(identical(other.appointmentDate, appointmentDate) || other.appointmentDate == appointmentDate)&&(identical(other.appointmentTime, appointmentTime) || other.appointmentTime == appointmentTime)&&(identical(other.labPdfUrl, labPdfUrl) || other.labPdfUrl == labPdfUrl)&&(identical(other.xRayPdfUrl, xRayPdfUrl) || other.xRayPdfUrl == xRayPdfUrl)&&(identical(other.ussPdfUrl, ussPdfUrl) || other.ussPdfUrl == ussPdfUrl)&&(identical(other.ctPdfUrl, ctPdfUrl) || other.ctPdfUrl == ctPdfUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idConseltation,id,memberId,doctorName,departmentName,appointmentDate,appointmentTime,labPdfUrl,xRayPdfUrl,ussPdfUrl,ctPdfUrl);

@override
String toString() {
  return 'ReportModel(idConseltation: $idConseltation, id: $id, memberId: $memberId, doctorName: $doctorName, departmentName: $departmentName, appointmentDate: $appointmentDate, appointmentTime: $appointmentTime, labPdfUrl: $labPdfUrl, xRayPdfUrl: $xRayPdfUrl, ussPdfUrl: $ussPdfUrl, ctPdfUrl: $ctPdfUrl)';
}


}

/// @nodoc
abstract mixin class $ReportModelCopyWith<$Res>  {
  factory $ReportModelCopyWith(ReportModel value, $Res Function(ReportModel) _then) = _$ReportModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id_cons") int idConseltation,@JsonKey(name: "id") int id,@JsonKey(name: "ID_CUSTOMER") int memberId,@JsonKey(name: "employee_name") String doctorName,@JsonKey(name: "speciality") String departmentName,@JsonKey(name: "appmnt_dttm") DateTime appointmentDate,@JsonKey(name: "appmnt_time") String appointmentTime,@JsonKey(name: "labreport_url") String? labPdfUrl,@JsonKey(name: "xrayreport_url") String? xRayPdfUrl,@JsonKey(name: "ussreport_url") String? ussPdfUrl,@JsonKey(name: "ct_url") String? ctPdfUrl
});




}
/// @nodoc
class _$ReportModelCopyWithImpl<$Res>
    implements $ReportModelCopyWith<$Res> {
  _$ReportModelCopyWithImpl(this._self, this._then);

  final ReportModel _self;
  final $Res Function(ReportModel) _then;

/// Create a copy of ReportModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idConseltation = null,Object? id = null,Object? memberId = null,Object? doctorName = null,Object? departmentName = null,Object? appointmentDate = null,Object? appointmentTime = null,Object? labPdfUrl = freezed,Object? xRayPdfUrl = freezed,Object? ussPdfUrl = freezed,Object? ctPdfUrl = freezed,}) {
  return _then(_self.copyWith(
idConseltation: null == idConseltation ? _self.idConseltation : idConseltation // ignore: cast_nullable_to_non_nullable
as int,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,memberId: null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as int,doctorName: null == doctorName ? _self.doctorName : doctorName // ignore: cast_nullable_to_non_nullable
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


/// Adds pattern-matching-related methods to [ReportModel].
extension ReportModelPatterns on ReportModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportModel value)  $default,){
final _that = this;
switch (_that) {
case _ReportModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReportModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id_cons")  int idConseltation, @JsonKey(name: "id")  int id, @JsonKey(name: "ID_CUSTOMER")  int memberId, @JsonKey(name: "employee_name")  String doctorName, @JsonKey(name: "speciality")  String departmentName, @JsonKey(name: "appmnt_dttm")  DateTime appointmentDate, @JsonKey(name: "appmnt_time")  String appointmentTime, @JsonKey(name: "labreport_url")  String? labPdfUrl, @JsonKey(name: "xrayreport_url")  String? xRayPdfUrl, @JsonKey(name: "ussreport_url")  String? ussPdfUrl, @JsonKey(name: "ct_url")  String? ctPdfUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportModel() when $default != null:
return $default(_that.idConseltation,_that.id,_that.memberId,_that.doctorName,_that.departmentName,_that.appointmentDate,_that.appointmentTime,_that.labPdfUrl,_that.xRayPdfUrl,_that.ussPdfUrl,_that.ctPdfUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id_cons")  int idConseltation, @JsonKey(name: "id")  int id, @JsonKey(name: "ID_CUSTOMER")  int memberId, @JsonKey(name: "employee_name")  String doctorName, @JsonKey(name: "speciality")  String departmentName, @JsonKey(name: "appmnt_dttm")  DateTime appointmentDate, @JsonKey(name: "appmnt_time")  String appointmentTime, @JsonKey(name: "labreport_url")  String? labPdfUrl, @JsonKey(name: "xrayreport_url")  String? xRayPdfUrl, @JsonKey(name: "ussreport_url")  String? ussPdfUrl, @JsonKey(name: "ct_url")  String? ctPdfUrl)  $default,) {final _that = this;
switch (_that) {
case _ReportModel():
return $default(_that.idConseltation,_that.id,_that.memberId,_that.doctorName,_that.departmentName,_that.appointmentDate,_that.appointmentTime,_that.labPdfUrl,_that.xRayPdfUrl,_that.ussPdfUrl,_that.ctPdfUrl);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id_cons")  int idConseltation, @JsonKey(name: "id")  int id, @JsonKey(name: "ID_CUSTOMER")  int memberId, @JsonKey(name: "employee_name")  String doctorName, @JsonKey(name: "speciality")  String departmentName, @JsonKey(name: "appmnt_dttm")  DateTime appointmentDate, @JsonKey(name: "appmnt_time")  String appointmentTime, @JsonKey(name: "labreport_url")  String? labPdfUrl, @JsonKey(name: "xrayreport_url")  String? xRayPdfUrl, @JsonKey(name: "ussreport_url")  String? ussPdfUrl, @JsonKey(name: "ct_url")  String? ctPdfUrl)?  $default,) {final _that = this;
switch (_that) {
case _ReportModel() when $default != null:
return $default(_that.idConseltation,_that.id,_that.memberId,_that.doctorName,_that.departmentName,_that.appointmentDate,_that.appointmentTime,_that.labPdfUrl,_that.xRayPdfUrl,_that.ussPdfUrl,_that.ctPdfUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportModel extends ReportModel {
  const _ReportModel({@JsonKey(name: "id_cons") required this.idConseltation, @JsonKey(name: "id") required this.id, @JsonKey(name: "ID_CUSTOMER") required this.memberId, @JsonKey(name: "employee_name") required this.doctorName, @JsonKey(name: "speciality") required this.departmentName, @JsonKey(name: "appmnt_dttm") required this.appointmentDate, @JsonKey(name: "appmnt_time") required this.appointmentTime, @JsonKey(name: "labreport_url") this.labPdfUrl = null, @JsonKey(name: "xrayreport_url") this.xRayPdfUrl = null, @JsonKey(name: "ussreport_url") this.ussPdfUrl = null, @JsonKey(name: "ct_url") this.ctPdfUrl = null}): super._();
  factory _ReportModel.fromJson(Map<String, dynamic> json) => _$ReportModelFromJson(json);

@override@JsonKey(name: "id_cons") final  int idConseltation;
@override@JsonKey(name: "id") final  int id;
@override@JsonKey(name: "ID_CUSTOMER") final  int memberId;
@override@JsonKey(name: "employee_name") final  String doctorName;
@override@JsonKey(name: "speciality") final  String departmentName;
@override@JsonKey(name: "appmnt_dttm") final  DateTime appointmentDate;
@override@JsonKey(name: "appmnt_time") final  String appointmentTime;
@override@JsonKey(name: "labreport_url") final  String? labPdfUrl;
@override@JsonKey(name: "xrayreport_url") final  String? xRayPdfUrl;
@override@JsonKey(name: "ussreport_url") final  String? ussPdfUrl;
@override@JsonKey(name: "ct_url") final  String? ctPdfUrl;

/// Create a copy of ReportModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportModelCopyWith<_ReportModel> get copyWith => __$ReportModelCopyWithImpl<_ReportModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportModel&&(identical(other.idConseltation, idConseltation) || other.idConseltation == idConseltation)&&(identical(other.id, id) || other.id == id)&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.doctorName, doctorName) || other.doctorName == doctorName)&&(identical(other.departmentName, departmentName) || other.departmentName == departmentName)&&(identical(other.appointmentDate, appointmentDate) || other.appointmentDate == appointmentDate)&&(identical(other.appointmentTime, appointmentTime) || other.appointmentTime == appointmentTime)&&(identical(other.labPdfUrl, labPdfUrl) || other.labPdfUrl == labPdfUrl)&&(identical(other.xRayPdfUrl, xRayPdfUrl) || other.xRayPdfUrl == xRayPdfUrl)&&(identical(other.ussPdfUrl, ussPdfUrl) || other.ussPdfUrl == ussPdfUrl)&&(identical(other.ctPdfUrl, ctPdfUrl) || other.ctPdfUrl == ctPdfUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idConseltation,id,memberId,doctorName,departmentName,appointmentDate,appointmentTime,labPdfUrl,xRayPdfUrl,ussPdfUrl,ctPdfUrl);

@override
String toString() {
  return 'ReportModel(idConseltation: $idConseltation, id: $id, memberId: $memberId, doctorName: $doctorName, departmentName: $departmentName, appointmentDate: $appointmentDate, appointmentTime: $appointmentTime, labPdfUrl: $labPdfUrl, xRayPdfUrl: $xRayPdfUrl, ussPdfUrl: $ussPdfUrl, ctPdfUrl: $ctPdfUrl)';
}


}

/// @nodoc
abstract mixin class _$ReportModelCopyWith<$Res> implements $ReportModelCopyWith<$Res> {
  factory _$ReportModelCopyWith(_ReportModel value, $Res Function(_ReportModel) _then) = __$ReportModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id_cons") int idConseltation,@JsonKey(name: "id") int id,@JsonKey(name: "ID_CUSTOMER") int memberId,@JsonKey(name: "employee_name") String doctorName,@JsonKey(name: "speciality") String departmentName,@JsonKey(name: "appmnt_dttm") DateTime appointmentDate,@JsonKey(name: "appmnt_time") String appointmentTime,@JsonKey(name: "labreport_url") String? labPdfUrl,@JsonKey(name: "xrayreport_url") String? xRayPdfUrl,@JsonKey(name: "ussreport_url") String? ussPdfUrl,@JsonKey(name: "ct_url") String? ctPdfUrl
});




}
/// @nodoc
class __$ReportModelCopyWithImpl<$Res>
    implements _$ReportModelCopyWith<$Res> {
  __$ReportModelCopyWithImpl(this._self, this._then);

  final _ReportModel _self;
  final $Res Function(_ReportModel) _then;

/// Create a copy of ReportModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idConseltation = null,Object? id = null,Object? memberId = null,Object? doctorName = null,Object? departmentName = null,Object? appointmentDate = null,Object? appointmentTime = null,Object? labPdfUrl = freezed,Object? xRayPdfUrl = freezed,Object? ussPdfUrl = freezed,Object? ctPdfUrl = freezed,}) {
  return _then(_ReportModel(
idConseltation: null == idConseltation ? _self.idConseltation : idConseltation // ignore: cast_nullable_to_non_nullable
as int,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,memberId: null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as int,doctorName: null == doctorName ? _self.doctorName : doctorName // ignore: cast_nullable_to_non_nullable
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
