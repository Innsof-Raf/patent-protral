// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../doctor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Doctor {

 String get doctorId; int get idDoctor; int get idDept; int get idBusUnit; String get busUnitName; String get doctorName; String get departmentName; String get doctorSpeciality; String get experience; String get branch; List<String> get knownLanguages; String get doctorImage; double get consultationFee; double get onlineConsultationFee; bool get isOnline; String? get doctorBio;
/// Create a copy of Doctor
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DoctorCopyWith<Doctor> get copyWith => _$DoctorCopyWithImpl<Doctor>(this as Doctor, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Doctor&&(identical(other.doctorId, doctorId) || other.doctorId == doctorId)&&(identical(other.idDoctor, idDoctor) || other.idDoctor == idDoctor)&&(identical(other.idDept, idDept) || other.idDept == idDept)&&(identical(other.idBusUnit, idBusUnit) || other.idBusUnit == idBusUnit)&&(identical(other.busUnitName, busUnitName) || other.busUnitName == busUnitName)&&(identical(other.doctorName, doctorName) || other.doctorName == doctorName)&&(identical(other.departmentName, departmentName) || other.departmentName == departmentName)&&(identical(other.doctorSpeciality, doctorSpeciality) || other.doctorSpeciality == doctorSpeciality)&&(identical(other.experience, experience) || other.experience == experience)&&(identical(other.branch, branch) || other.branch == branch)&&const DeepCollectionEquality().equals(other.knownLanguages, knownLanguages)&&(identical(other.doctorImage, doctorImage) || other.doctorImage == doctorImage)&&(identical(other.consultationFee, consultationFee) || other.consultationFee == consultationFee)&&(identical(other.onlineConsultationFee, onlineConsultationFee) || other.onlineConsultationFee == onlineConsultationFee)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.doctorBio, doctorBio) || other.doctorBio == doctorBio));
}


@override
int get hashCode => Object.hash(runtimeType,doctorId,idDoctor,idDept,idBusUnit,busUnitName,doctorName,departmentName,doctorSpeciality,experience,branch,const DeepCollectionEquality().hash(knownLanguages),doctorImage,consultationFee,onlineConsultationFee,isOnline,doctorBio);

@override
String toString() {
  return 'Doctor(doctorId: $doctorId, idDoctor: $idDoctor, idDept: $idDept, idBusUnit: $idBusUnit, busUnitName: $busUnitName, doctorName: $doctorName, departmentName: $departmentName, doctorSpeciality: $doctorSpeciality, experience: $experience, branch: $branch, knownLanguages: $knownLanguages, doctorImage: $doctorImage, consultationFee: $consultationFee, onlineConsultationFee: $onlineConsultationFee, isOnline: $isOnline, doctorBio: $doctorBio)';
}


}

/// @nodoc
abstract mixin class $DoctorCopyWith<$Res>  {
  factory $DoctorCopyWith(Doctor value, $Res Function(Doctor) _then) = _$DoctorCopyWithImpl;
@useResult
$Res call({
 String doctorId, int idDoctor, int idDept, int idBusUnit, String busUnitName, String doctorName, String departmentName, String doctorSpeciality, String experience, String branch, List<String> knownLanguages, String doctorImage, double consultationFee, double onlineConsultationFee, bool isOnline, String? doctorBio
});




}
/// @nodoc
class _$DoctorCopyWithImpl<$Res>
    implements $DoctorCopyWith<$Res> {
  _$DoctorCopyWithImpl(this._self, this._then);

  final Doctor _self;
  final $Res Function(Doctor) _then;

/// Create a copy of Doctor
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? doctorId = null,Object? idDoctor = null,Object? idDept = null,Object? idBusUnit = null,Object? busUnitName = null,Object? doctorName = null,Object? departmentName = null,Object? doctorSpeciality = null,Object? experience = null,Object? branch = null,Object? knownLanguages = null,Object? doctorImage = null,Object? consultationFee = null,Object? onlineConsultationFee = null,Object? isOnline = null,Object? doctorBio = freezed,}) {
  return _then(_self.copyWith(
doctorId: null == doctorId ? _self.doctorId : doctorId // ignore: cast_nullable_to_non_nullable
as String,idDoctor: null == idDoctor ? _self.idDoctor : idDoctor // ignore: cast_nullable_to_non_nullable
as int,idDept: null == idDept ? _self.idDept : idDept // ignore: cast_nullable_to_non_nullable
as int,idBusUnit: null == idBusUnit ? _self.idBusUnit : idBusUnit // ignore: cast_nullable_to_non_nullable
as int,busUnitName: null == busUnitName ? _self.busUnitName : busUnitName // ignore: cast_nullable_to_non_nullable
as String,doctorName: null == doctorName ? _self.doctorName : doctorName // ignore: cast_nullable_to_non_nullable
as String,departmentName: null == departmentName ? _self.departmentName : departmentName // ignore: cast_nullable_to_non_nullable
as String,doctorSpeciality: null == doctorSpeciality ? _self.doctorSpeciality : doctorSpeciality // ignore: cast_nullable_to_non_nullable
as String,experience: null == experience ? _self.experience : experience // ignore: cast_nullable_to_non_nullable
as String,branch: null == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as String,knownLanguages: null == knownLanguages ? _self.knownLanguages : knownLanguages // ignore: cast_nullable_to_non_nullable
as List<String>,doctorImage: null == doctorImage ? _self.doctorImage : doctorImage // ignore: cast_nullable_to_non_nullable
as String,consultationFee: null == consultationFee ? _self.consultationFee : consultationFee // ignore: cast_nullable_to_non_nullable
as double,onlineConsultationFee: null == onlineConsultationFee ? _self.onlineConsultationFee : onlineConsultationFee // ignore: cast_nullable_to_non_nullable
as double,isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,doctorBio: freezed == doctorBio ? _self.doctorBio : doctorBio // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Doctor].
extension DoctorPatterns on Doctor {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Doctor value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Doctor() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Doctor value)  $default,){
final _that = this;
switch (_that) {
case _Doctor():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Doctor value)?  $default,){
final _that = this;
switch (_that) {
case _Doctor() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String doctorId,  int idDoctor,  int idDept,  int idBusUnit,  String busUnitName,  String doctorName,  String departmentName,  String doctorSpeciality,  String experience,  String branch,  List<String> knownLanguages,  String doctorImage,  double consultationFee,  double onlineConsultationFee,  bool isOnline,  String? doctorBio)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Doctor() when $default != null:
return $default(_that.doctorId,_that.idDoctor,_that.idDept,_that.idBusUnit,_that.busUnitName,_that.doctorName,_that.departmentName,_that.doctorSpeciality,_that.experience,_that.branch,_that.knownLanguages,_that.doctorImage,_that.consultationFee,_that.onlineConsultationFee,_that.isOnline,_that.doctorBio);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String doctorId,  int idDoctor,  int idDept,  int idBusUnit,  String busUnitName,  String doctorName,  String departmentName,  String doctorSpeciality,  String experience,  String branch,  List<String> knownLanguages,  String doctorImage,  double consultationFee,  double onlineConsultationFee,  bool isOnline,  String? doctorBio)  $default,) {final _that = this;
switch (_that) {
case _Doctor():
return $default(_that.doctorId,_that.idDoctor,_that.idDept,_that.idBusUnit,_that.busUnitName,_that.doctorName,_that.departmentName,_that.doctorSpeciality,_that.experience,_that.branch,_that.knownLanguages,_that.doctorImage,_that.consultationFee,_that.onlineConsultationFee,_that.isOnline,_that.doctorBio);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String doctorId,  int idDoctor,  int idDept,  int idBusUnit,  String busUnitName,  String doctorName,  String departmentName,  String doctorSpeciality,  String experience,  String branch,  List<String> knownLanguages,  String doctorImage,  double consultationFee,  double onlineConsultationFee,  bool isOnline,  String? doctorBio)?  $default,) {final _that = this;
switch (_that) {
case _Doctor() when $default != null:
return $default(_that.doctorId,_that.idDoctor,_that.idDept,_that.idBusUnit,_that.busUnitName,_that.doctorName,_that.departmentName,_that.doctorSpeciality,_that.experience,_that.branch,_that.knownLanguages,_that.doctorImage,_that.consultationFee,_that.onlineConsultationFee,_that.isOnline,_that.doctorBio);case _:
  return null;

}
}

}

/// @nodoc


class _Doctor implements Doctor {
  const _Doctor({required this.doctorId, required this.idDoctor, required this.idDept, required this.idBusUnit, required this.busUnitName, required this.doctorName, required this.departmentName, required this.doctorSpeciality, required this.experience, required this.branch, required final  List<String> knownLanguages, required this.doctorImage, required this.consultationFee, required this.onlineConsultationFee, required this.isOnline, this.doctorBio}): _knownLanguages = knownLanguages;
  

@override final  String doctorId;
@override final  int idDoctor;
@override final  int idDept;
@override final  int idBusUnit;
@override final  String busUnitName;
@override final  String doctorName;
@override final  String departmentName;
@override final  String doctorSpeciality;
@override final  String experience;
@override final  String branch;
 final  List<String> _knownLanguages;
@override List<String> get knownLanguages {
  if (_knownLanguages is EqualUnmodifiableListView) return _knownLanguages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_knownLanguages);
}

@override final  String doctorImage;
@override final  double consultationFee;
@override final  double onlineConsultationFee;
@override final  bool isOnline;
@override final  String? doctorBio;

/// Create a copy of Doctor
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DoctorCopyWith<_Doctor> get copyWith => __$DoctorCopyWithImpl<_Doctor>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Doctor&&(identical(other.doctorId, doctorId) || other.doctorId == doctorId)&&(identical(other.idDoctor, idDoctor) || other.idDoctor == idDoctor)&&(identical(other.idDept, idDept) || other.idDept == idDept)&&(identical(other.idBusUnit, idBusUnit) || other.idBusUnit == idBusUnit)&&(identical(other.busUnitName, busUnitName) || other.busUnitName == busUnitName)&&(identical(other.doctorName, doctorName) || other.doctorName == doctorName)&&(identical(other.departmentName, departmentName) || other.departmentName == departmentName)&&(identical(other.doctorSpeciality, doctorSpeciality) || other.doctorSpeciality == doctorSpeciality)&&(identical(other.experience, experience) || other.experience == experience)&&(identical(other.branch, branch) || other.branch == branch)&&const DeepCollectionEquality().equals(other._knownLanguages, _knownLanguages)&&(identical(other.doctorImage, doctorImage) || other.doctorImage == doctorImage)&&(identical(other.consultationFee, consultationFee) || other.consultationFee == consultationFee)&&(identical(other.onlineConsultationFee, onlineConsultationFee) || other.onlineConsultationFee == onlineConsultationFee)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.doctorBio, doctorBio) || other.doctorBio == doctorBio));
}


@override
int get hashCode => Object.hash(runtimeType,doctorId,idDoctor,idDept,idBusUnit,busUnitName,doctorName,departmentName,doctorSpeciality,experience,branch,const DeepCollectionEquality().hash(_knownLanguages),doctorImage,consultationFee,onlineConsultationFee,isOnline,doctorBio);

@override
String toString() {
  return 'Doctor(doctorId: $doctorId, idDoctor: $idDoctor, idDept: $idDept, idBusUnit: $idBusUnit, busUnitName: $busUnitName, doctorName: $doctorName, departmentName: $departmentName, doctorSpeciality: $doctorSpeciality, experience: $experience, branch: $branch, knownLanguages: $knownLanguages, doctorImage: $doctorImage, consultationFee: $consultationFee, onlineConsultationFee: $onlineConsultationFee, isOnline: $isOnline, doctorBio: $doctorBio)';
}


}

/// @nodoc
abstract mixin class _$DoctorCopyWith<$Res> implements $DoctorCopyWith<$Res> {
  factory _$DoctorCopyWith(_Doctor value, $Res Function(_Doctor) _then) = __$DoctorCopyWithImpl;
@override @useResult
$Res call({
 String doctorId, int idDoctor, int idDept, int idBusUnit, String busUnitName, String doctorName, String departmentName, String doctorSpeciality, String experience, String branch, List<String> knownLanguages, String doctorImage, double consultationFee, double onlineConsultationFee, bool isOnline, String? doctorBio
});




}
/// @nodoc
class __$DoctorCopyWithImpl<$Res>
    implements _$DoctorCopyWith<$Res> {
  __$DoctorCopyWithImpl(this._self, this._then);

  final _Doctor _self;
  final $Res Function(_Doctor) _then;

/// Create a copy of Doctor
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? doctorId = null,Object? idDoctor = null,Object? idDept = null,Object? idBusUnit = null,Object? busUnitName = null,Object? doctorName = null,Object? departmentName = null,Object? doctorSpeciality = null,Object? experience = null,Object? branch = null,Object? knownLanguages = null,Object? doctorImage = null,Object? consultationFee = null,Object? onlineConsultationFee = null,Object? isOnline = null,Object? doctorBio = freezed,}) {
  return _then(_Doctor(
doctorId: null == doctorId ? _self.doctorId : doctorId // ignore: cast_nullable_to_non_nullable
as String,idDoctor: null == idDoctor ? _self.idDoctor : idDoctor // ignore: cast_nullable_to_non_nullable
as int,idDept: null == idDept ? _self.idDept : idDept // ignore: cast_nullable_to_non_nullable
as int,idBusUnit: null == idBusUnit ? _self.idBusUnit : idBusUnit // ignore: cast_nullable_to_non_nullable
as int,busUnitName: null == busUnitName ? _self.busUnitName : busUnitName // ignore: cast_nullable_to_non_nullable
as String,doctorName: null == doctorName ? _self.doctorName : doctorName // ignore: cast_nullable_to_non_nullable
as String,departmentName: null == departmentName ? _self.departmentName : departmentName // ignore: cast_nullable_to_non_nullable
as String,doctorSpeciality: null == doctorSpeciality ? _self.doctorSpeciality : doctorSpeciality // ignore: cast_nullable_to_non_nullable
as String,experience: null == experience ? _self.experience : experience // ignore: cast_nullable_to_non_nullable
as String,branch: null == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as String,knownLanguages: null == knownLanguages ? _self._knownLanguages : knownLanguages // ignore: cast_nullable_to_non_nullable
as List<String>,doctorImage: null == doctorImage ? _self.doctorImage : doctorImage // ignore: cast_nullable_to_non_nullable
as String,consultationFee: null == consultationFee ? _self.consultationFee : consultationFee // ignore: cast_nullable_to_non_nullable
as double,onlineConsultationFee: null == onlineConsultationFee ? _self.onlineConsultationFee : onlineConsultationFee // ignore: cast_nullable_to_non_nullable
as double,isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,doctorBio: freezed == doctorBio ? _self.doctorBio : doctorBio // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
