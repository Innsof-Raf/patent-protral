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

@JsonKey(name: 'employee_id') String get doctorId;@JsonKey(name: 'id_employee') int get idDoctor;@JsonKey(name: 'id_busunit') int get idBusUnit;@JsonKey(name: 'busunit_name') String get busUnitName;@JsonKey(name: 'employee_name') String get doctorName;@JsonKey(name: 'dept_name') String get departmentName;@JsonKey(name: 'speciality') String get doctorSpecility; String get experience; String get branch;@JsonKey(name: 'Language_Known') List<LanguageKnownModel> get languages;@JsonKey(name: 'profileUrl') String get doctorImage;@JsonKey(name: 'cons_fee') double get consultationFee;@JsonKey(name: 'employee_bio') String? get doctorBio;
/// Create a copy of DoctorModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DoctorModelCopyWith<DoctorModel> get copyWith => _$DoctorModelCopyWithImpl<DoctorModel>(this as DoctorModel, _$identity);

  /// Serializes this DoctorModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorModel&&(identical(other.doctorId, doctorId) || other.doctorId == doctorId)&&(identical(other.idDoctor, idDoctor) || other.idDoctor == idDoctor)&&(identical(other.idBusUnit, idBusUnit) || other.idBusUnit == idBusUnit)&&(identical(other.busUnitName, busUnitName) || other.busUnitName == busUnitName)&&(identical(other.doctorName, doctorName) || other.doctorName == doctorName)&&(identical(other.departmentName, departmentName) || other.departmentName == departmentName)&&(identical(other.doctorSpecility, doctorSpecility) || other.doctorSpecility == doctorSpecility)&&(identical(other.experience, experience) || other.experience == experience)&&(identical(other.branch, branch) || other.branch == branch)&&const DeepCollectionEquality().equals(other.languages, languages)&&(identical(other.doctorImage, doctorImage) || other.doctorImage == doctorImage)&&(identical(other.consultationFee, consultationFee) || other.consultationFee == consultationFee)&&(identical(other.doctorBio, doctorBio) || other.doctorBio == doctorBio));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,doctorId,idDoctor,idBusUnit,busUnitName,doctorName,departmentName,doctorSpecility,experience,branch,const DeepCollectionEquality().hash(languages),doctorImage,consultationFee,doctorBio);

@override
String toString() {
  return 'DoctorModel(doctorId: $doctorId, idDoctor: $idDoctor, idBusUnit: $idBusUnit, busUnitName: $busUnitName, doctorName: $doctorName, departmentName: $departmentName, doctorSpecility: $doctorSpecility, experience: $experience, branch: $branch, languages: $languages, doctorImage: $doctorImage, consultationFee: $consultationFee, doctorBio: $doctorBio)';
}


}

/// @nodoc
abstract mixin class $DoctorModelCopyWith<$Res>  {
  factory $DoctorModelCopyWith(DoctorModel value, $Res Function(DoctorModel) _then) = _$DoctorModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'employee_id') String doctorId,@JsonKey(name: 'id_employee') int idDoctor,@JsonKey(name: 'id_busunit') int idBusUnit,@JsonKey(name: 'busunit_name') String busUnitName,@JsonKey(name: 'employee_name') String doctorName,@JsonKey(name: 'dept_name') String departmentName,@JsonKey(name: 'speciality') String doctorSpecility, String experience, String branch,@JsonKey(name: 'Language_Known') List<LanguageKnownModel> languages,@JsonKey(name: 'profileUrl') String doctorImage,@JsonKey(name: 'cons_fee') double consultationFee,@JsonKey(name: 'employee_bio') String? doctorBio
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
@pragma('vm:prefer-inline') @override $Res call({Object? doctorId = null,Object? idDoctor = null,Object? idBusUnit = null,Object? busUnitName = null,Object? doctorName = null,Object? departmentName = null,Object? doctorSpecility = null,Object? experience = null,Object? branch = null,Object? languages = null,Object? doctorImage = null,Object? consultationFee = null,Object? doctorBio = freezed,}) {
  return _then(_self.copyWith(
doctorId: null == doctorId ? _self.doctorId : doctorId // ignore: cast_nullable_to_non_nullable
as String,idDoctor: null == idDoctor ? _self.idDoctor : idDoctor // ignore: cast_nullable_to_non_nullable
as int,idBusUnit: null == idBusUnit ? _self.idBusUnit : idBusUnit // ignore: cast_nullable_to_non_nullable
as int,busUnitName: null == busUnitName ? _self.busUnitName : busUnitName // ignore: cast_nullable_to_non_nullable
as String,doctorName: null == doctorName ? _self.doctorName : doctorName // ignore: cast_nullable_to_non_nullable
as String,departmentName: null == departmentName ? _self.departmentName : departmentName // ignore: cast_nullable_to_non_nullable
as String,doctorSpecility: null == doctorSpecility ? _self.doctorSpecility : doctorSpecility // ignore: cast_nullable_to_non_nullable
as String,experience: null == experience ? _self.experience : experience // ignore: cast_nullable_to_non_nullable
as String,branch: null == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as String,languages: null == languages ? _self.languages : languages // ignore: cast_nullable_to_non_nullable
as List<LanguageKnownModel>,doctorImage: null == doctorImage ? _self.doctorImage : doctorImage // ignore: cast_nullable_to_non_nullable
as String,consultationFee: null == consultationFee ? _self.consultationFee : consultationFee // ignore: cast_nullable_to_non_nullable
as double,doctorBio: freezed == doctorBio ? _self.doctorBio : doctorBio // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'employee_id')  String doctorId, @JsonKey(name: 'id_employee')  int idDoctor, @JsonKey(name: 'id_busunit')  int idBusUnit, @JsonKey(name: 'busunit_name')  String busUnitName, @JsonKey(name: 'employee_name')  String doctorName, @JsonKey(name: 'dept_name')  String departmentName, @JsonKey(name: 'speciality')  String doctorSpecility,  String experience,  String branch, @JsonKey(name: 'Language_Known')  List<LanguageKnownModel> languages, @JsonKey(name: 'profileUrl')  String doctorImage, @JsonKey(name: 'cons_fee')  double consultationFee, @JsonKey(name: 'employee_bio')  String? doctorBio)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DoctorModel() when $default != null:
return $default(_that.doctorId,_that.idDoctor,_that.idBusUnit,_that.busUnitName,_that.doctorName,_that.departmentName,_that.doctorSpecility,_that.experience,_that.branch,_that.languages,_that.doctorImage,_that.consultationFee,_that.doctorBio);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'employee_id')  String doctorId, @JsonKey(name: 'id_employee')  int idDoctor, @JsonKey(name: 'id_busunit')  int idBusUnit, @JsonKey(name: 'busunit_name')  String busUnitName, @JsonKey(name: 'employee_name')  String doctorName, @JsonKey(name: 'dept_name')  String departmentName, @JsonKey(name: 'speciality')  String doctorSpecility,  String experience,  String branch, @JsonKey(name: 'Language_Known')  List<LanguageKnownModel> languages, @JsonKey(name: 'profileUrl')  String doctorImage, @JsonKey(name: 'cons_fee')  double consultationFee, @JsonKey(name: 'employee_bio')  String? doctorBio)  $default,) {final _that = this;
switch (_that) {
case _DoctorModel():
return $default(_that.doctorId,_that.idDoctor,_that.idBusUnit,_that.busUnitName,_that.doctorName,_that.departmentName,_that.doctorSpecility,_that.experience,_that.branch,_that.languages,_that.doctorImage,_that.consultationFee,_that.doctorBio);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'employee_id')  String doctorId, @JsonKey(name: 'id_employee')  int idDoctor, @JsonKey(name: 'id_busunit')  int idBusUnit, @JsonKey(name: 'busunit_name')  String busUnitName, @JsonKey(name: 'employee_name')  String doctorName, @JsonKey(name: 'dept_name')  String departmentName, @JsonKey(name: 'speciality')  String doctorSpecility,  String experience,  String branch, @JsonKey(name: 'Language_Known')  List<LanguageKnownModel> languages, @JsonKey(name: 'profileUrl')  String doctorImage, @JsonKey(name: 'cons_fee')  double consultationFee, @JsonKey(name: 'employee_bio')  String? doctorBio)?  $default,) {final _that = this;
switch (_that) {
case _DoctorModel() when $default != null:
return $default(_that.doctorId,_that.idDoctor,_that.idBusUnit,_that.busUnitName,_that.doctorName,_that.departmentName,_that.doctorSpecility,_that.experience,_that.branch,_that.languages,_that.doctorImage,_that.consultationFee,_that.doctorBio);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DoctorModel extends DoctorModel {
  const _DoctorModel({@JsonKey(name: 'employee_id') required this.doctorId, @JsonKey(name: 'id_employee') required this.idDoctor, @JsonKey(name: 'id_busunit') required this.idBusUnit, @JsonKey(name: 'busunit_name') required this.busUnitName, @JsonKey(name: 'employee_name') required this.doctorName, @JsonKey(name: 'dept_name') required this.departmentName, @JsonKey(name: 'speciality') required this.doctorSpecility, required this.experience, required this.branch, @JsonKey(name: 'Language_Known') required final  List<LanguageKnownModel> languages, @JsonKey(name: 'profileUrl') required this.doctorImage, @JsonKey(name: 'cons_fee') required this.consultationFee, @JsonKey(name: 'employee_bio') this.doctorBio}): _languages = languages,super._();
  factory _DoctorModel.fromJson(Map<String, dynamic> json) => _$DoctorModelFromJson(json);

@override@JsonKey(name: 'employee_id') final  String doctorId;
@override@JsonKey(name: 'id_employee') final  int idDoctor;
@override@JsonKey(name: 'id_busunit') final  int idBusUnit;
@override@JsonKey(name: 'busunit_name') final  String busUnitName;
@override@JsonKey(name: 'employee_name') final  String doctorName;
@override@JsonKey(name: 'dept_name') final  String departmentName;
@override@JsonKey(name: 'speciality') final  String doctorSpecility;
@override final  String experience;
@override final  String branch;
 final  List<LanguageKnownModel> _languages;
@override@JsonKey(name: 'Language_Known') List<LanguageKnownModel> get languages {
  if (_languages is EqualUnmodifiableListView) return _languages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_languages);
}

@override@JsonKey(name: 'profileUrl') final  String doctorImage;
@override@JsonKey(name: 'cons_fee') final  double consultationFee;
@override@JsonKey(name: 'employee_bio') final  String? doctorBio;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DoctorModel&&(identical(other.doctorId, doctorId) || other.doctorId == doctorId)&&(identical(other.idDoctor, idDoctor) || other.idDoctor == idDoctor)&&(identical(other.idBusUnit, idBusUnit) || other.idBusUnit == idBusUnit)&&(identical(other.busUnitName, busUnitName) || other.busUnitName == busUnitName)&&(identical(other.doctorName, doctorName) || other.doctorName == doctorName)&&(identical(other.departmentName, departmentName) || other.departmentName == departmentName)&&(identical(other.doctorSpecility, doctorSpecility) || other.doctorSpecility == doctorSpecility)&&(identical(other.experience, experience) || other.experience == experience)&&(identical(other.branch, branch) || other.branch == branch)&&const DeepCollectionEquality().equals(other._languages, _languages)&&(identical(other.doctorImage, doctorImage) || other.doctorImage == doctorImage)&&(identical(other.consultationFee, consultationFee) || other.consultationFee == consultationFee)&&(identical(other.doctorBio, doctorBio) || other.doctorBio == doctorBio));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,doctorId,idDoctor,idBusUnit,busUnitName,doctorName,departmentName,doctorSpecility,experience,branch,const DeepCollectionEquality().hash(_languages),doctorImage,consultationFee,doctorBio);

@override
String toString() {
  return 'DoctorModel(doctorId: $doctorId, idDoctor: $idDoctor, idBusUnit: $idBusUnit, busUnitName: $busUnitName, doctorName: $doctorName, departmentName: $departmentName, doctorSpecility: $doctorSpecility, experience: $experience, branch: $branch, languages: $languages, doctorImage: $doctorImage, consultationFee: $consultationFee, doctorBio: $doctorBio)';
}


}

/// @nodoc
abstract mixin class _$DoctorModelCopyWith<$Res> implements $DoctorModelCopyWith<$Res> {
  factory _$DoctorModelCopyWith(_DoctorModel value, $Res Function(_DoctorModel) _then) = __$DoctorModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'employee_id') String doctorId,@JsonKey(name: 'id_employee') int idDoctor,@JsonKey(name: 'id_busunit') int idBusUnit,@JsonKey(name: 'busunit_name') String busUnitName,@JsonKey(name: 'employee_name') String doctorName,@JsonKey(name: 'dept_name') String departmentName,@JsonKey(name: 'speciality') String doctorSpecility, String experience, String branch,@JsonKey(name: 'Language_Known') List<LanguageKnownModel> languages,@JsonKey(name: 'profileUrl') String doctorImage,@JsonKey(name: 'cons_fee') double consultationFee,@JsonKey(name: 'employee_bio') String? doctorBio
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
@override @pragma('vm:prefer-inline') $Res call({Object? doctorId = null,Object? idDoctor = null,Object? idBusUnit = null,Object? busUnitName = null,Object? doctorName = null,Object? departmentName = null,Object? doctorSpecility = null,Object? experience = null,Object? branch = null,Object? languages = null,Object? doctorImage = null,Object? consultationFee = null,Object? doctorBio = freezed,}) {
  return _then(_DoctorModel(
doctorId: null == doctorId ? _self.doctorId : doctorId // ignore: cast_nullable_to_non_nullable
as String,idDoctor: null == idDoctor ? _self.idDoctor : idDoctor // ignore: cast_nullable_to_non_nullable
as int,idBusUnit: null == idBusUnit ? _self.idBusUnit : idBusUnit // ignore: cast_nullable_to_non_nullable
as int,busUnitName: null == busUnitName ? _self.busUnitName : busUnitName // ignore: cast_nullable_to_non_nullable
as String,doctorName: null == doctorName ? _self.doctorName : doctorName // ignore: cast_nullable_to_non_nullable
as String,departmentName: null == departmentName ? _self.departmentName : departmentName // ignore: cast_nullable_to_non_nullable
as String,doctorSpecility: null == doctorSpecility ? _self.doctorSpecility : doctorSpecility // ignore: cast_nullable_to_non_nullable
as String,experience: null == experience ? _self.experience : experience // ignore: cast_nullable_to_non_nullable
as String,branch: null == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as String,languages: null == languages ? _self._languages : languages // ignore: cast_nullable_to_non_nullable
as List<LanguageKnownModel>,doctorImage: null == doctorImage ? _self.doctorImage : doctorImage // ignore: cast_nullable_to_non_nullable
as String,consultationFee: null == consultationFee ? _self.consultationFee : consultationFee // ignore: cast_nullable_to_non_nullable
as double,doctorBio: freezed == doctorBio ? _self.doctorBio : doctorBio // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
