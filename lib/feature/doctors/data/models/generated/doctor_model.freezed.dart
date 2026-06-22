// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../doctor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DoctorModel {

@JsonKey(name: 'employee_id', fromJson: stringFromJson) String get doctorId;@JsonKey(name: 'id_employee', fromJson: intFromJson) int get idDoctor;@JsonKey(name: 'id_dept', fromJson: intFromJson) int get idDept;@JsonKey(name: 'id_busunit', fromJson: intFromJson) int get idBusUnit;@JsonKey(name: 'busunit_name', fromJson: stringFromJson) String get busUnitName;@JsonKey(name: 'employee_name', fromJson: stringFromJson) String get doctorName;@JsonKey(name: 'dept_name', fromJson: stringFromJson) String get departmentName;@JsonKey(name: 'speciality', readValue: _readDoctorSpeciality, fromJson: stringFromJson) String get doctorSpeciality;@JsonKey(fromJson: stringFromJson) String get experience;@JsonKey(fromJson: stringFromJson) String get branch;@JsonKey(name: 'Language_Known', readValue: _readLanguages, fromJson: _languagesFromJson) List<LanguageKnownModel> get languages;@JsonKey(name: 'profileUrl', fromJson: stringFromJson) String get doctorImage;@JsonKey(name: 'cons_fee', fromJson: doubleFromJson) double get consultationFee;@JsonKey(name: 'online_cons_fee', fromJson: doubleFromJson) double get onlineConsultationFee;@JsonKey(name: 'isOnline', fromJson: boolFromJson) bool get isOnline;@JsonKey(name: 'employee_bio', fromJson: _nullableStringFromJson) String? get doctorBio;
/// Create a copy of DoctorModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DoctorModelCopyWith<DoctorModel> get copyWith => _$DoctorModelCopyWithImpl<DoctorModel>(this as DoctorModel, _$identity);

  /// Serializes this DoctorModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorModel&&(identical(other.doctorId, doctorId) || other.doctorId == doctorId)&&(identical(other.idDoctor, idDoctor) || other.idDoctor == idDoctor)&&(identical(other.idDept, idDept) || other.idDept == idDept)&&(identical(other.idBusUnit, idBusUnit) || other.idBusUnit == idBusUnit)&&(identical(other.busUnitName, busUnitName) || other.busUnitName == busUnitName)&&(identical(other.doctorName, doctorName) || other.doctorName == doctorName)&&(identical(other.departmentName, departmentName) || other.departmentName == departmentName)&&(identical(other.doctorSpeciality, doctorSpeciality) || other.doctorSpeciality == doctorSpeciality)&&(identical(other.experience, experience) || other.experience == experience)&&(identical(other.branch, branch) || other.branch == branch)&&const DeepCollectionEquality().equals(other.languages, languages)&&(identical(other.doctorImage, doctorImage) || other.doctorImage == doctorImage)&&(identical(other.consultationFee, consultationFee) || other.consultationFee == consultationFee)&&(identical(other.onlineConsultationFee, onlineConsultationFee) || other.onlineConsultationFee == onlineConsultationFee)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.doctorBio, doctorBio) || other.doctorBio == doctorBio));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,doctorId,idDoctor,idDept,idBusUnit,busUnitName,doctorName,departmentName,doctorSpeciality,experience,branch,const DeepCollectionEquality().hash(languages),doctorImage,consultationFee,onlineConsultationFee,isOnline,doctorBio);

@override
String toString() {
  return 'DoctorModel(doctorId: $doctorId, idDoctor: $idDoctor, idDept: $idDept, idBusUnit: $idBusUnit, busUnitName: $busUnitName, doctorName: $doctorName, departmentName: $departmentName, doctorSpeciality: $doctorSpeciality, experience: $experience, branch: $branch, languages: $languages, doctorImage: $doctorImage, consultationFee: $consultationFee, onlineConsultationFee: $onlineConsultationFee, isOnline: $isOnline, doctorBio: $doctorBio)';
}


}

/// @nodoc
abstract mixin class $DoctorModelCopyWith<$Res>  {
  factory $DoctorModelCopyWith(DoctorModel value, $Res Function(DoctorModel) _then) = _$DoctorModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'employee_id', fromJson: stringFromJson) String doctorId,@JsonKey(name: 'id_employee', fromJson: intFromJson) int idDoctor,@JsonKey(name: 'id_dept', fromJson: intFromJson) int idDept,@JsonKey(name: 'id_busunit', fromJson: intFromJson) int idBusUnit,@JsonKey(name: 'busunit_name', fromJson: stringFromJson) String busUnitName,@JsonKey(name: 'employee_name', fromJson: stringFromJson) String doctorName,@JsonKey(name: 'dept_name', fromJson: stringFromJson) String departmentName,@JsonKey(name: 'speciality', readValue: _readDoctorSpeciality, fromJson: stringFromJson) String doctorSpeciality,@JsonKey(fromJson: stringFromJson) String experience,@JsonKey(fromJson: stringFromJson) String branch,@JsonKey(name: 'Language_Known', readValue: _readLanguages, fromJson: _languagesFromJson) List<LanguageKnownModel> languages,@JsonKey(name: 'profileUrl', fromJson: stringFromJson) String doctorImage,@JsonKey(name: 'cons_fee', fromJson: doubleFromJson) double consultationFee,@JsonKey(name: 'online_cons_fee', fromJson: doubleFromJson) double onlineConsultationFee,@JsonKey(name: 'isOnline', fromJson: boolFromJson) bool isOnline,@JsonKey(name: 'employee_bio', fromJson: _nullableStringFromJson) String? doctorBio
});




}
/// @nodoc
class _$DoctorModelCopyWithImpl<$Res>
    implements $DoctorModelCopyWith<$Res> {
  _$DoctorModelCopyWithImpl(this._self, this._then);

  final DoctorModel _self;
  final $Res Function(DoctorModel) _then;

/// Create a copy of DoctorModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? doctorId = null,Object? idDoctor = null,Object? idDept = null,Object? idBusUnit = null,Object? busUnitName = null,Object? doctorName = null,Object? departmentName = null,Object? doctorSpeciality = null,Object? experience = null,Object? branch = null,Object? languages = null,Object? doctorImage = null,Object? consultationFee = null,Object? onlineConsultationFee = null,Object? isOnline = null,Object? doctorBio = freezed,}) {
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
as String,languages: null == languages ? _self.languages : languages // ignore: cast_nullable_to_non_nullable
as List<LanguageKnownModel>,doctorImage: null == doctorImage ? _self.doctorImage : doctorImage // ignore: cast_nullable_to_non_nullable
as String,consultationFee: null == consultationFee ? _self.consultationFee : consultationFee // ignore: cast_nullable_to_non_nullable
as double,onlineConsultationFee: null == onlineConsultationFee ? _self.onlineConsultationFee : onlineConsultationFee // ignore: cast_nullable_to_non_nullable
as double,isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,doctorBio: freezed == doctorBio ? _self.doctorBio : doctorBio // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DoctorModel].
extension DoctorModelPatterns on DoctorModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DoctorModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DoctorModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DoctorModel value)  $default,){
final _that = this;
switch (_that) {
case _DoctorModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DoctorModel value)?  $default,){
final _that = this;
switch (_that) {
case _DoctorModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'employee_id', fromJson: stringFromJson)  String doctorId, @JsonKey(name: 'id_employee', fromJson: intFromJson)  int idDoctor, @JsonKey(name: 'id_dept', fromJson: intFromJson)  int idDept, @JsonKey(name: 'id_busunit', fromJson: intFromJson)  int idBusUnit, @JsonKey(name: 'busunit_name', fromJson: stringFromJson)  String busUnitName, @JsonKey(name: 'employee_name', fromJson: stringFromJson)  String doctorName, @JsonKey(name: 'dept_name', fromJson: stringFromJson)  String departmentName, @JsonKey(name: 'speciality', readValue: _readDoctorSpeciality, fromJson: stringFromJson)  String doctorSpeciality, @JsonKey(fromJson: stringFromJson)  String experience, @JsonKey(fromJson: stringFromJson)  String branch, @JsonKey(name: 'Language_Known', readValue: _readLanguages, fromJson: _languagesFromJson)  List<LanguageKnownModel> languages, @JsonKey(name: 'profileUrl', fromJson: stringFromJson)  String doctorImage, @JsonKey(name: 'cons_fee', fromJson: doubleFromJson)  double consultationFee, @JsonKey(name: 'online_cons_fee', fromJson: doubleFromJson)  double onlineConsultationFee, @JsonKey(name: 'isOnline', fromJson: boolFromJson)  bool isOnline, @JsonKey(name: 'employee_bio', fromJson: _nullableStringFromJson)  String? doctorBio)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DoctorModel() when $default != null:
return $default(_that.doctorId,_that.idDoctor,_that.idDept,_that.idBusUnit,_that.busUnitName,_that.doctorName,_that.departmentName,_that.doctorSpeciality,_that.experience,_that.branch,_that.languages,_that.doctorImage,_that.consultationFee,_that.onlineConsultationFee,_that.isOnline,_that.doctorBio);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'employee_id', fromJson: stringFromJson)  String doctorId, @JsonKey(name: 'id_employee', fromJson: intFromJson)  int idDoctor, @JsonKey(name: 'id_dept', fromJson: intFromJson)  int idDept, @JsonKey(name: 'id_busunit', fromJson: intFromJson)  int idBusUnit, @JsonKey(name: 'busunit_name', fromJson: stringFromJson)  String busUnitName, @JsonKey(name: 'employee_name', fromJson: stringFromJson)  String doctorName, @JsonKey(name: 'dept_name', fromJson: stringFromJson)  String departmentName, @JsonKey(name: 'speciality', readValue: _readDoctorSpeciality, fromJson: stringFromJson)  String doctorSpeciality, @JsonKey(fromJson: stringFromJson)  String experience, @JsonKey(fromJson: stringFromJson)  String branch, @JsonKey(name: 'Language_Known', readValue: _readLanguages, fromJson: _languagesFromJson)  List<LanguageKnownModel> languages, @JsonKey(name: 'profileUrl', fromJson: stringFromJson)  String doctorImage, @JsonKey(name: 'cons_fee', fromJson: doubleFromJson)  double consultationFee, @JsonKey(name: 'online_cons_fee', fromJson: doubleFromJson)  double onlineConsultationFee, @JsonKey(name: 'isOnline', fromJson: boolFromJson)  bool isOnline, @JsonKey(name: 'employee_bio', fromJson: _nullableStringFromJson)  String? doctorBio)  $default,) {final _that = this;
switch (_that) {
case _DoctorModel():
return $default(_that.doctorId,_that.idDoctor,_that.idDept,_that.idBusUnit,_that.busUnitName,_that.doctorName,_that.departmentName,_that.doctorSpeciality,_that.experience,_that.branch,_that.languages,_that.doctorImage,_that.consultationFee,_that.onlineConsultationFee,_that.isOnline,_that.doctorBio);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'employee_id', fromJson: stringFromJson)  String doctorId, @JsonKey(name: 'id_employee', fromJson: intFromJson)  int idDoctor, @JsonKey(name: 'id_dept', fromJson: intFromJson)  int idDept, @JsonKey(name: 'id_busunit', fromJson: intFromJson)  int idBusUnit, @JsonKey(name: 'busunit_name', fromJson: stringFromJson)  String busUnitName, @JsonKey(name: 'employee_name', fromJson: stringFromJson)  String doctorName, @JsonKey(name: 'dept_name', fromJson: stringFromJson)  String departmentName, @JsonKey(name: 'speciality', readValue: _readDoctorSpeciality, fromJson: stringFromJson)  String doctorSpeciality, @JsonKey(fromJson: stringFromJson)  String experience, @JsonKey(fromJson: stringFromJson)  String branch, @JsonKey(name: 'Language_Known', readValue: _readLanguages, fromJson: _languagesFromJson)  List<LanguageKnownModel> languages, @JsonKey(name: 'profileUrl', fromJson: stringFromJson)  String doctorImage, @JsonKey(name: 'cons_fee', fromJson: doubleFromJson)  double consultationFee, @JsonKey(name: 'online_cons_fee', fromJson: doubleFromJson)  double onlineConsultationFee, @JsonKey(name: 'isOnline', fromJson: boolFromJson)  bool isOnline, @JsonKey(name: 'employee_bio', fromJson: _nullableStringFromJson)  String? doctorBio)?  $default,) {final _that = this;
switch (_that) {
case _DoctorModel() when $default != null:
return $default(_that.doctorId,_that.idDoctor,_that.idDept,_that.idBusUnit,_that.busUnitName,_that.doctorName,_that.departmentName,_that.doctorSpeciality,_that.experience,_that.branch,_that.languages,_that.doctorImage,_that.consultationFee,_that.onlineConsultationFee,_that.isOnline,_that.doctorBio);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DoctorModel extends DoctorModel {
  const _DoctorModel({@JsonKey(name: 'employee_id', fromJson: stringFromJson) required this.doctorId, @JsonKey(name: 'id_employee', fromJson: intFromJson) required this.idDoctor, @JsonKey(name: 'id_dept', fromJson: intFromJson) this.idDept = 0, @JsonKey(name: 'id_busunit', fromJson: intFromJson) required this.idBusUnit, @JsonKey(name: 'busunit_name', fromJson: stringFromJson) required this.busUnitName, @JsonKey(name: 'employee_name', fromJson: stringFromJson) required this.doctorName, @JsonKey(name: 'dept_name', fromJson: stringFromJson) required this.departmentName, @JsonKey(name: 'speciality', readValue: _readDoctorSpeciality, fromJson: stringFromJson) required this.doctorSpeciality, @JsonKey(fromJson: stringFromJson) required this.experience, @JsonKey(fromJson: stringFromJson) required this.branch, @JsonKey(name: 'Language_Known', readValue: _readLanguages, fromJson: _languagesFromJson) required final  List<LanguageKnownModel> languages, @JsonKey(name: 'profileUrl', fromJson: stringFromJson) required this.doctorImage, @JsonKey(name: 'cons_fee', fromJson: doubleFromJson) required this.consultationFee, @JsonKey(name: 'online_cons_fee', fromJson: doubleFromJson) required this.onlineConsultationFee, @JsonKey(name: 'isOnline', fromJson: boolFromJson) required this.isOnline, @JsonKey(name: 'employee_bio', fromJson: _nullableStringFromJson) this.doctorBio}): _languages = languages,super._();
  factory _DoctorModel.fromJson(Map<String, dynamic> json) => _$DoctorModelFromJson(json);

@override@JsonKey(name: 'employee_id', fromJson: stringFromJson) final  String doctorId;
@override@JsonKey(name: 'id_employee', fromJson: intFromJson) final  int idDoctor;
@override@JsonKey(name: 'id_dept', fromJson: intFromJson) final  int idDept;
@override@JsonKey(name: 'id_busunit', fromJson: intFromJson) final  int idBusUnit;
@override@JsonKey(name: 'busunit_name', fromJson: stringFromJson) final  String busUnitName;
@override@JsonKey(name: 'employee_name', fromJson: stringFromJson) final  String doctorName;
@override@JsonKey(name: 'dept_name', fromJson: stringFromJson) final  String departmentName;
@override@JsonKey(name: 'speciality', readValue: _readDoctorSpeciality, fromJson: stringFromJson) final  String doctorSpeciality;
@override@JsonKey(fromJson: stringFromJson) final  String experience;
@override@JsonKey(fromJson: stringFromJson) final  String branch;
 final  List<LanguageKnownModel> _languages;
@override@JsonKey(name: 'Language_Known', readValue: _readLanguages, fromJson: _languagesFromJson) List<LanguageKnownModel> get languages {
  if (_languages is EqualUnmodifiableListView) return _languages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_languages);
}

@override@JsonKey(name: 'profileUrl', fromJson: stringFromJson) final  String doctorImage;
@override@JsonKey(name: 'cons_fee', fromJson: doubleFromJson) final  double consultationFee;
@override@JsonKey(name: 'online_cons_fee', fromJson: doubleFromJson) final  double onlineConsultationFee;
@override@JsonKey(name: 'isOnline', fromJson: boolFromJson) final  bool isOnline;
@override@JsonKey(name: 'employee_bio', fromJson: _nullableStringFromJson) final  String? doctorBio;

/// Create a copy of DoctorModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DoctorModelCopyWith<_DoctorModel> get copyWith => __$DoctorModelCopyWithImpl<_DoctorModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DoctorModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DoctorModel&&(identical(other.doctorId, doctorId) || other.doctorId == doctorId)&&(identical(other.idDoctor, idDoctor) || other.idDoctor == idDoctor)&&(identical(other.idDept, idDept) || other.idDept == idDept)&&(identical(other.idBusUnit, idBusUnit) || other.idBusUnit == idBusUnit)&&(identical(other.busUnitName, busUnitName) || other.busUnitName == busUnitName)&&(identical(other.doctorName, doctorName) || other.doctorName == doctorName)&&(identical(other.departmentName, departmentName) || other.departmentName == departmentName)&&(identical(other.doctorSpeciality, doctorSpeciality) || other.doctorSpeciality == doctorSpeciality)&&(identical(other.experience, experience) || other.experience == experience)&&(identical(other.branch, branch) || other.branch == branch)&&const DeepCollectionEquality().equals(other._languages, _languages)&&(identical(other.doctorImage, doctorImage) || other.doctorImage == doctorImage)&&(identical(other.consultationFee, consultationFee) || other.consultationFee == consultationFee)&&(identical(other.onlineConsultationFee, onlineConsultationFee) || other.onlineConsultationFee == onlineConsultationFee)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.doctorBio, doctorBio) || other.doctorBio == doctorBio));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,doctorId,idDoctor,idDept,idBusUnit,busUnitName,doctorName,departmentName,doctorSpeciality,experience,branch,const DeepCollectionEquality().hash(_languages),doctorImage,consultationFee,onlineConsultationFee,isOnline,doctorBio);

@override
String toString() {
  return 'DoctorModel(doctorId: $doctorId, idDoctor: $idDoctor, idDept: $idDept, idBusUnit: $idBusUnit, busUnitName: $busUnitName, doctorName: $doctorName, departmentName: $departmentName, doctorSpeciality: $doctorSpeciality, experience: $experience, branch: $branch, languages: $languages, doctorImage: $doctorImage, consultationFee: $consultationFee, onlineConsultationFee: $onlineConsultationFee, isOnline: $isOnline, doctorBio: $doctorBio)';
}


}

/// @nodoc
abstract mixin class _$DoctorModelCopyWith<$Res> implements $DoctorModelCopyWith<$Res> {
  factory _$DoctorModelCopyWith(_DoctorModel value, $Res Function(_DoctorModel) _then) = __$DoctorModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'employee_id', fromJson: stringFromJson) String doctorId,@JsonKey(name: 'id_employee', fromJson: intFromJson) int idDoctor,@JsonKey(name: 'id_dept', fromJson: intFromJson) int idDept,@JsonKey(name: 'id_busunit', fromJson: intFromJson) int idBusUnit,@JsonKey(name: 'busunit_name', fromJson: stringFromJson) String busUnitName,@JsonKey(name: 'employee_name', fromJson: stringFromJson) String doctorName,@JsonKey(name: 'dept_name', fromJson: stringFromJson) String departmentName,@JsonKey(name: 'speciality', readValue: _readDoctorSpeciality, fromJson: stringFromJson) String doctorSpeciality,@JsonKey(fromJson: stringFromJson) String experience,@JsonKey(fromJson: stringFromJson) String branch,@JsonKey(name: 'Language_Known', readValue: _readLanguages, fromJson: _languagesFromJson) List<LanguageKnownModel> languages,@JsonKey(name: 'profileUrl', fromJson: stringFromJson) String doctorImage,@JsonKey(name: 'cons_fee', fromJson: doubleFromJson) double consultationFee,@JsonKey(name: 'online_cons_fee', fromJson: doubleFromJson) double onlineConsultationFee,@JsonKey(name: 'isOnline', fromJson: boolFromJson) bool isOnline,@JsonKey(name: 'employee_bio', fromJson: _nullableStringFromJson) String? doctorBio
});




}
/// @nodoc
class __$DoctorModelCopyWithImpl<$Res>
    implements _$DoctorModelCopyWith<$Res> {
  __$DoctorModelCopyWithImpl(this._self, this._then);

  final _DoctorModel _self;
  final $Res Function(_DoctorModel) _then;

/// Create a copy of DoctorModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? doctorId = null,Object? idDoctor = null,Object? idDept = null,Object? idBusUnit = null,Object? busUnitName = null,Object? doctorName = null,Object? departmentName = null,Object? doctorSpeciality = null,Object? experience = null,Object? branch = null,Object? languages = null,Object? doctorImage = null,Object? consultationFee = null,Object? onlineConsultationFee = null,Object? isOnline = null,Object? doctorBio = freezed,}) {
  return _then(_DoctorModel(
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
as String,languages: null == languages ? _self._languages : languages // ignore: cast_nullable_to_non_nullable
as List<LanguageKnownModel>,doctorImage: null == doctorImage ? _self.doctorImage : doctorImage // ignore: cast_nullable_to_non_nullable
as String,consultationFee: null == consultationFee ? _self.consultationFee : consultationFee // ignore: cast_nullable_to_non_nullable
as double,onlineConsultationFee: null == onlineConsultationFee ? _self.onlineConsultationFee : onlineConsultationFee // ignore: cast_nullable_to_non_nullable
as double,isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,doctorBio: freezed == doctorBio ? _self.doctorBio : doctorBio // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
