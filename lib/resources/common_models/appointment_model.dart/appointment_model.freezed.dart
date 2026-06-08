// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppointmentModel {

@JsonKey(name: "Id") int get id;@JsonKey(name: "appmt_id") String get appointmentId;@JsonKey(name: "branch") String get branch;@JsonKey(name: "id_customer") int get idMember;@JsonKey(name: "customer_name") String get memberName;@JsonKey(name: "id_employee") int get idDoctor;@JsonKey(name: "employee_name") String get doctorName;@JsonKey(name: "speciality") String get doctorSpecility;@JsonKey(name: "profileurl") String get doctorImage;@JsonKey(name: "Appmnt_Dttm") DateTime get appointmentDateTime;@JsonKey(name: "customer_img") String? get memberImage;@JsonKey(name: "busunit_name") String get busunitName;@JsonKey(name: "dept_name") String get deptName;@JsonKey(name: "email") String get email;@JsonKey(name: "employee_id") String get doctorId;@JsonKey(name: "mobile_no") String get mobileNo;@JsonKey(name: "id_busunit") int get idBusunit;@JsonKey(name: "id_dept") int get idDept;
/// Create a copy of AppointmentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppointmentModelCopyWith<AppointmentModel> get copyWith => _$AppointmentModelCopyWithImpl<AppointmentModel>(this as AppointmentModel, _$identity);

  /// Serializes this AppointmentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.appointmentId, appointmentId) || other.appointmentId == appointmentId)&&(identical(other.branch, branch) || other.branch == branch)&&(identical(other.idMember, idMember) || other.idMember == idMember)&&(identical(other.memberName, memberName) || other.memberName == memberName)&&(identical(other.idDoctor, idDoctor) || other.idDoctor == idDoctor)&&(identical(other.doctorName, doctorName) || other.doctorName == doctorName)&&(identical(other.doctorSpecility, doctorSpecility) || other.doctorSpecility == doctorSpecility)&&(identical(other.doctorImage, doctorImage) || other.doctorImage == doctorImage)&&(identical(other.appointmentDateTime, appointmentDateTime) || other.appointmentDateTime == appointmentDateTime)&&(identical(other.memberImage, memberImage) || other.memberImage == memberImage)&&(identical(other.busunitName, busunitName) || other.busunitName == busunitName)&&(identical(other.deptName, deptName) || other.deptName == deptName)&&(identical(other.email, email) || other.email == email)&&(identical(other.doctorId, doctorId) || other.doctorId == doctorId)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.idBusunit, idBusunit) || other.idBusunit == idBusunit)&&(identical(other.idDept, idDept) || other.idDept == idDept));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,appointmentId,branch,idMember,memberName,idDoctor,doctorName,doctorSpecility,doctorImage,appointmentDateTime,memberImage,busunitName,deptName,email,doctorId,mobileNo,idBusunit,idDept);

@override
String toString() {
  return 'AppointmentModel(id: $id, appointmentId: $appointmentId, branch: $branch, idMember: $idMember, memberName: $memberName, idDoctor: $idDoctor, doctorName: $doctorName, doctorSpecility: $doctorSpecility, doctorImage: $doctorImage, appointmentDateTime: $appointmentDateTime, memberImage: $memberImage, busunitName: $busunitName, deptName: $deptName, email: $email, doctorId: $doctorId, mobileNo: $mobileNo, idBusunit: $idBusunit, idDept: $idDept)';
}


}

/// @nodoc
abstract mixin class $AppointmentModelCopyWith<$Res>  {
  factory $AppointmentModelCopyWith(AppointmentModel value, $Res Function(AppointmentModel) _then) = _$AppointmentModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "Id") int id,@JsonKey(name: "appmt_id") String appointmentId,@JsonKey(name: "branch") String branch,@JsonKey(name: "id_customer") int idMember,@JsonKey(name: "customer_name") String memberName,@JsonKey(name: "id_employee") int idDoctor,@JsonKey(name: "employee_name") String doctorName,@JsonKey(name: "speciality") String doctorSpecility,@JsonKey(name: "profileurl") String doctorImage,@JsonKey(name: "Appmnt_Dttm") DateTime appointmentDateTime,@JsonKey(name: "customer_img") String? memberImage,@JsonKey(name: "busunit_name") String busunitName,@JsonKey(name: "dept_name") String deptName,@JsonKey(name: "email") String email,@JsonKey(name: "employee_id") String doctorId,@JsonKey(name: "mobile_no") String mobileNo,@JsonKey(name: "id_busunit") int idBusunit,@JsonKey(name: "id_dept") int idDept
});




}
/// @nodoc
class _$AppointmentModelCopyWithImpl<$Res>
    implements $AppointmentModelCopyWith<$Res> {
  _$AppointmentModelCopyWithImpl(this._self, this._then);

  final AppointmentModel _self;
  final $Res Function(AppointmentModel) _then;

/// Create a copy of AppointmentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? appointmentId = null,Object? branch = null,Object? idMember = null,Object? memberName = null,Object? idDoctor = null,Object? doctorName = null,Object? doctorSpecility = null,Object? doctorImage = null,Object? appointmentDateTime = null,Object? memberImage = freezed,Object? busunitName = null,Object? deptName = null,Object? email = null,Object? doctorId = null,Object? mobileNo = null,Object? idBusunit = null,Object? idDept = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,appointmentId: null == appointmentId ? _self.appointmentId : appointmentId // ignore: cast_nullable_to_non_nullable
as String,branch: null == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as String,idMember: null == idMember ? _self.idMember : idMember // ignore: cast_nullable_to_non_nullable
as int,memberName: null == memberName ? _self.memberName : memberName // ignore: cast_nullable_to_non_nullable
as String,idDoctor: null == idDoctor ? _self.idDoctor : idDoctor // ignore: cast_nullable_to_non_nullable
as int,doctorName: null == doctorName ? _self.doctorName : doctorName // ignore: cast_nullable_to_non_nullable
as String,doctorSpecility: null == doctorSpecility ? _self.doctorSpecility : doctorSpecility // ignore: cast_nullable_to_non_nullable
as String,doctorImage: null == doctorImage ? _self.doctorImage : doctorImage // ignore: cast_nullable_to_non_nullable
as String,appointmentDateTime: null == appointmentDateTime ? _self.appointmentDateTime : appointmentDateTime // ignore: cast_nullable_to_non_nullable
as DateTime,memberImage: freezed == memberImage ? _self.memberImage : memberImage // ignore: cast_nullable_to_non_nullable
as String?,busunitName: null == busunitName ? _self.busunitName : busunitName // ignore: cast_nullable_to_non_nullable
as String,deptName: null == deptName ? _self.deptName : deptName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,doctorId: null == doctorId ? _self.doctorId : doctorId // ignore: cast_nullable_to_non_nullable
as String,mobileNo: null == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String,idBusunit: null == idBusunit ? _self.idBusunit : idBusunit // ignore: cast_nullable_to_non_nullable
as int,idDept: null == idDept ? _self.idDept : idDept // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AppointmentModel].
extension AppointmentModelPatterns on AppointmentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppointmentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppointmentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppointmentModel value)  $default,){
final _that = this;
switch (_that) {
case _AppointmentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppointmentModel value)?  $default,){
final _that = this;
switch (_that) {
case _AppointmentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "Id")  int id, @JsonKey(name: "appmt_id")  String appointmentId, @JsonKey(name: "branch")  String branch, @JsonKey(name: "id_customer")  int idMember, @JsonKey(name: "customer_name")  String memberName, @JsonKey(name: "id_employee")  int idDoctor, @JsonKey(name: "employee_name")  String doctorName, @JsonKey(name: "speciality")  String doctorSpecility, @JsonKey(name: "profileurl")  String doctorImage, @JsonKey(name: "Appmnt_Dttm")  DateTime appointmentDateTime, @JsonKey(name: "customer_img")  String? memberImage, @JsonKey(name: "busunit_name")  String busunitName, @JsonKey(name: "dept_name")  String deptName, @JsonKey(name: "email")  String email, @JsonKey(name: "employee_id")  String doctorId, @JsonKey(name: "mobile_no")  String mobileNo, @JsonKey(name: "id_busunit")  int idBusunit, @JsonKey(name: "id_dept")  int idDept)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppointmentModel() when $default != null:
return $default(_that.id,_that.appointmentId,_that.branch,_that.idMember,_that.memberName,_that.idDoctor,_that.doctorName,_that.doctorSpecility,_that.doctorImage,_that.appointmentDateTime,_that.memberImage,_that.busunitName,_that.deptName,_that.email,_that.doctorId,_that.mobileNo,_that.idBusunit,_that.idDept);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "Id")  int id, @JsonKey(name: "appmt_id")  String appointmentId, @JsonKey(name: "branch")  String branch, @JsonKey(name: "id_customer")  int idMember, @JsonKey(name: "customer_name")  String memberName, @JsonKey(name: "id_employee")  int idDoctor, @JsonKey(name: "employee_name")  String doctorName, @JsonKey(name: "speciality")  String doctorSpecility, @JsonKey(name: "profileurl")  String doctorImage, @JsonKey(name: "Appmnt_Dttm")  DateTime appointmentDateTime, @JsonKey(name: "customer_img")  String? memberImage, @JsonKey(name: "busunit_name")  String busunitName, @JsonKey(name: "dept_name")  String deptName, @JsonKey(name: "email")  String email, @JsonKey(name: "employee_id")  String doctorId, @JsonKey(name: "mobile_no")  String mobileNo, @JsonKey(name: "id_busunit")  int idBusunit, @JsonKey(name: "id_dept")  int idDept)  $default,) {final _that = this;
switch (_that) {
case _AppointmentModel():
return $default(_that.id,_that.appointmentId,_that.branch,_that.idMember,_that.memberName,_that.idDoctor,_that.doctorName,_that.doctorSpecility,_that.doctorImage,_that.appointmentDateTime,_that.memberImage,_that.busunitName,_that.deptName,_that.email,_that.doctorId,_that.mobileNo,_that.idBusunit,_that.idDept);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "Id")  int id, @JsonKey(name: "appmt_id")  String appointmentId, @JsonKey(name: "branch")  String branch, @JsonKey(name: "id_customer")  int idMember, @JsonKey(name: "customer_name")  String memberName, @JsonKey(name: "id_employee")  int idDoctor, @JsonKey(name: "employee_name")  String doctorName, @JsonKey(name: "speciality")  String doctorSpecility, @JsonKey(name: "profileurl")  String doctorImage, @JsonKey(name: "Appmnt_Dttm")  DateTime appointmentDateTime, @JsonKey(name: "customer_img")  String? memberImage, @JsonKey(name: "busunit_name")  String busunitName, @JsonKey(name: "dept_name")  String deptName, @JsonKey(name: "email")  String email, @JsonKey(name: "employee_id")  String doctorId, @JsonKey(name: "mobile_no")  String mobileNo, @JsonKey(name: "id_busunit")  int idBusunit, @JsonKey(name: "id_dept")  int idDept)?  $default,) {final _that = this;
switch (_that) {
case _AppointmentModel() when $default != null:
return $default(_that.id,_that.appointmentId,_that.branch,_that.idMember,_that.memberName,_that.idDoctor,_that.doctorName,_that.doctorSpecility,_that.doctorImage,_that.appointmentDateTime,_that.memberImage,_that.busunitName,_that.deptName,_that.email,_that.doctorId,_that.mobileNo,_that.idBusunit,_that.idDept);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppointmentModel implements AppointmentModel {
  const _AppointmentModel({@JsonKey(name: "Id") required this.id, @JsonKey(name: "appmt_id") required this.appointmentId, @JsonKey(name: "branch") required this.branch, @JsonKey(name: "id_customer") required this.idMember, @JsonKey(name: "customer_name") required this.memberName, @JsonKey(name: "id_employee") required this.idDoctor, @JsonKey(name: "employee_name") required this.doctorName, @JsonKey(name: "speciality") required this.doctorSpecility, @JsonKey(name: "profileurl") required this.doctorImage, @JsonKey(name: "Appmnt_Dttm") required this.appointmentDateTime, @JsonKey(name: "customer_img") this.memberImage = null, @JsonKey(name: "busunit_name") required this.busunitName, @JsonKey(name: "dept_name") required this.deptName, @JsonKey(name: "email") required this.email, @JsonKey(name: "employee_id") required this.doctorId, @JsonKey(name: "mobile_no") required this.mobileNo, @JsonKey(name: "id_busunit") required this.idBusunit, @JsonKey(name: "id_dept") required this.idDept});
  factory _AppointmentModel.fromJson(Map<String, dynamic> json) => _$AppointmentModelFromJson(json);

@override@JsonKey(name: "Id") final  int id;
@override@JsonKey(name: "appmt_id") final  String appointmentId;
@override@JsonKey(name: "branch") final  String branch;
@override@JsonKey(name: "id_customer") final  int idMember;
@override@JsonKey(name: "customer_name") final  String memberName;
@override@JsonKey(name: "id_employee") final  int idDoctor;
@override@JsonKey(name: "employee_name") final  String doctorName;
@override@JsonKey(name: "speciality") final  String doctorSpecility;
@override@JsonKey(name: "profileurl") final  String doctorImage;
@override@JsonKey(name: "Appmnt_Dttm") final  DateTime appointmentDateTime;
@override@JsonKey(name: "customer_img") final  String? memberImage;
@override@JsonKey(name: "busunit_name") final  String busunitName;
@override@JsonKey(name: "dept_name") final  String deptName;
@override@JsonKey(name: "email") final  String email;
@override@JsonKey(name: "employee_id") final  String doctorId;
@override@JsonKey(name: "mobile_no") final  String mobileNo;
@override@JsonKey(name: "id_busunit") final  int idBusunit;
@override@JsonKey(name: "id_dept") final  int idDept;

/// Create a copy of AppointmentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppointmentModelCopyWith<_AppointmentModel> get copyWith => __$AppointmentModelCopyWithImpl<_AppointmentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppointmentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppointmentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.appointmentId, appointmentId) || other.appointmentId == appointmentId)&&(identical(other.branch, branch) || other.branch == branch)&&(identical(other.idMember, idMember) || other.idMember == idMember)&&(identical(other.memberName, memberName) || other.memberName == memberName)&&(identical(other.idDoctor, idDoctor) || other.idDoctor == idDoctor)&&(identical(other.doctorName, doctorName) || other.doctorName == doctorName)&&(identical(other.doctorSpecility, doctorSpecility) || other.doctorSpecility == doctorSpecility)&&(identical(other.doctorImage, doctorImage) || other.doctorImage == doctorImage)&&(identical(other.appointmentDateTime, appointmentDateTime) || other.appointmentDateTime == appointmentDateTime)&&(identical(other.memberImage, memberImage) || other.memberImage == memberImage)&&(identical(other.busunitName, busunitName) || other.busunitName == busunitName)&&(identical(other.deptName, deptName) || other.deptName == deptName)&&(identical(other.email, email) || other.email == email)&&(identical(other.doctorId, doctorId) || other.doctorId == doctorId)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.idBusunit, idBusunit) || other.idBusunit == idBusunit)&&(identical(other.idDept, idDept) || other.idDept == idDept));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,appointmentId,branch,idMember,memberName,idDoctor,doctorName,doctorSpecility,doctorImage,appointmentDateTime,memberImage,busunitName,deptName,email,doctorId,mobileNo,idBusunit,idDept);

@override
String toString() {
  return 'AppointmentModel(id: $id, appointmentId: $appointmentId, branch: $branch, idMember: $idMember, memberName: $memberName, idDoctor: $idDoctor, doctorName: $doctorName, doctorSpecility: $doctorSpecility, doctorImage: $doctorImage, appointmentDateTime: $appointmentDateTime, memberImage: $memberImage, busunitName: $busunitName, deptName: $deptName, email: $email, doctorId: $doctorId, mobileNo: $mobileNo, idBusunit: $idBusunit, idDept: $idDept)';
}


}

/// @nodoc
abstract mixin class _$AppointmentModelCopyWith<$Res> implements $AppointmentModelCopyWith<$Res> {
  factory _$AppointmentModelCopyWith(_AppointmentModel value, $Res Function(_AppointmentModel) _then) = __$AppointmentModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "Id") int id,@JsonKey(name: "appmt_id") String appointmentId,@JsonKey(name: "branch") String branch,@JsonKey(name: "id_customer") int idMember,@JsonKey(name: "customer_name") String memberName,@JsonKey(name: "id_employee") int idDoctor,@JsonKey(name: "employee_name") String doctorName,@JsonKey(name: "speciality") String doctorSpecility,@JsonKey(name: "profileurl") String doctorImage,@JsonKey(name: "Appmnt_Dttm") DateTime appointmentDateTime,@JsonKey(name: "customer_img") String? memberImage,@JsonKey(name: "busunit_name") String busunitName,@JsonKey(name: "dept_name") String deptName,@JsonKey(name: "email") String email,@JsonKey(name: "employee_id") String doctorId,@JsonKey(name: "mobile_no") String mobileNo,@JsonKey(name: "id_busunit") int idBusunit,@JsonKey(name: "id_dept") int idDept
});




}
/// @nodoc
class __$AppointmentModelCopyWithImpl<$Res>
    implements _$AppointmentModelCopyWith<$Res> {
  __$AppointmentModelCopyWithImpl(this._self, this._then);

  final _AppointmentModel _self;
  final $Res Function(_AppointmentModel) _then;

/// Create a copy of AppointmentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? appointmentId = null,Object? branch = null,Object? idMember = null,Object? memberName = null,Object? idDoctor = null,Object? doctorName = null,Object? doctorSpecility = null,Object? doctorImage = null,Object? appointmentDateTime = null,Object? memberImage = freezed,Object? busunitName = null,Object? deptName = null,Object? email = null,Object? doctorId = null,Object? mobileNo = null,Object? idBusunit = null,Object? idDept = null,}) {
  return _then(_AppointmentModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,appointmentId: null == appointmentId ? _self.appointmentId : appointmentId // ignore: cast_nullable_to_non_nullable
as String,branch: null == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as String,idMember: null == idMember ? _self.idMember : idMember // ignore: cast_nullable_to_non_nullable
as int,memberName: null == memberName ? _self.memberName : memberName // ignore: cast_nullable_to_non_nullable
as String,idDoctor: null == idDoctor ? _self.idDoctor : idDoctor // ignore: cast_nullable_to_non_nullable
as int,doctorName: null == doctorName ? _self.doctorName : doctorName // ignore: cast_nullable_to_non_nullable
as String,doctorSpecility: null == doctorSpecility ? _self.doctorSpecility : doctorSpecility // ignore: cast_nullable_to_non_nullable
as String,doctorImage: null == doctorImage ? _self.doctorImage : doctorImage // ignore: cast_nullable_to_non_nullable
as String,appointmentDateTime: null == appointmentDateTime ? _self.appointmentDateTime : appointmentDateTime // ignore: cast_nullable_to_non_nullable
as DateTime,memberImage: freezed == memberImage ? _self.memberImage : memberImage // ignore: cast_nullable_to_non_nullable
as String?,busunitName: null == busunitName ? _self.busunitName : busunitName // ignore: cast_nullable_to_non_nullable
as String,deptName: null == deptName ? _self.deptName : deptName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,doctorId: null == doctorId ? _self.doctorId : doctorId // ignore: cast_nullable_to_non_nullable
as String,mobileNo: null == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String,idBusunit: null == idBusunit ? _self.idBusunit : idBusunit // ignore: cast_nullable_to_non_nullable
as int,idDept: null == idDept ? _self.idDept : idDept // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
