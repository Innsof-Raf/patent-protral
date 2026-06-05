// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'doctor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DoctorModel _$DoctorModelFromJson(Map<String, dynamic> json) {
  return _DoctorModel.fromJson(json);
}

/// @nodoc
mixin _$DoctorModel {
  @JsonKey(name: 'employee_id')
  String get doctorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_employee')
  int get idDoctor => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_busunit')
  int get idBusUnit => throw _privateConstructorUsedError;
  @JsonKey(name: 'busunit_name')
  String get busUnitName => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_name')
  String get doctorName => throw _privateConstructorUsedError;
  @JsonKey(name: 'dept_name')
  String get departmentName => throw _privateConstructorUsedError;
  @JsonKey(name: 'speciality')
  String get doctorSpecility => throw _privateConstructorUsedError;
  String get experience => throw _privateConstructorUsedError;
  String get branch => throw _privateConstructorUsedError;
  @JsonKey(name: 'Language_Known')
  List<LanguageKnownModel> get knownLanguages =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'profileUrl')
  String get doctorImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'cons_fee')
  double get consultationFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_bio')
  String? get doctorBio => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoctorModelCopyWith<DoctorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorModelCopyWith<$Res> {
  factory $DoctorModelCopyWith(
          DoctorModel value, $Res Function(DoctorModel) then) =
      _$DoctorModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'employee_id') String doctorId,
      @JsonKey(name: 'id_employee') int idDoctor,
      @JsonKey(name: 'id_busunit') int idBusUnit,
      @JsonKey(name: 'busunit_name') String busUnitName,
      @JsonKey(name: 'employee_name') String doctorName,
      @JsonKey(name: 'dept_name') String departmentName,
      @JsonKey(name: 'speciality') String doctorSpecility,
      String experience,
      String branch,
      @JsonKey(name: 'Language_Known') List<LanguageKnownModel> knownLanguages,
      @JsonKey(name: 'profileUrl') String doctorImage,
      @JsonKey(name: 'cons_fee') double consultationFee,
      @JsonKey(name: 'employee_bio') String? doctorBio});
}

/// @nodoc
class _$DoctorModelCopyWithImpl<$Res> implements $DoctorModelCopyWith<$Res> {
  _$DoctorModelCopyWithImpl(this._value, this._then);

  final DoctorModel _value;
  // ignore: unused_field
  final $Res Function(DoctorModel) _then;

  @override
  $Res call({
    Object? doctorId = freezed,
    Object? idDoctor = freezed,
    Object? idBusUnit = freezed,
    Object? busUnitName = freezed,
    Object? doctorName = freezed,
    Object? departmentName = freezed,
    Object? doctorSpecility = freezed,
    Object? experience = freezed,
    Object? branch = freezed,
    Object? knownLanguages = freezed,
    Object? doctorImage = freezed,
    Object? consultationFee = freezed,
    Object? doctorBio = freezed,
  }) {
    return _then(_value.copyWith(
      doctorId: doctorId == freezed
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
      idDoctor: idDoctor == freezed
          ? _value.idDoctor
          : idDoctor // ignore: cast_nullable_to_non_nullable
              as int,
      idBusUnit: idBusUnit == freezed
          ? _value.idBusUnit
          : idBusUnit // ignore: cast_nullable_to_non_nullable
              as int,
      busUnitName: busUnitName == freezed
          ? _value.busUnitName
          : busUnitName // ignore: cast_nullable_to_non_nullable
              as String,
      doctorName: doctorName == freezed
          ? _value.doctorName
          : doctorName // ignore: cast_nullable_to_non_nullable
              as String,
      departmentName: departmentName == freezed
          ? _value.departmentName
          : departmentName // ignore: cast_nullable_to_non_nullable
              as String,
      doctorSpecility: doctorSpecility == freezed
          ? _value.doctorSpecility
          : doctorSpecility // ignore: cast_nullable_to_non_nullable
              as String,
      experience: experience == freezed
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as String,
      branch: branch == freezed
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as String,
      knownLanguages: knownLanguages == freezed
          ? _value.knownLanguages
          : knownLanguages // ignore: cast_nullable_to_non_nullable
              as List<LanguageKnownModel>,
      doctorImage: doctorImage == freezed
          ? _value.doctorImage
          : doctorImage // ignore: cast_nullable_to_non_nullable
              as String,
      consultationFee: consultationFee == freezed
          ? _value.consultationFee
          : consultationFee // ignore: cast_nullable_to_non_nullable
              as double,
      doctorBio: doctorBio == freezed
          ? _value.doctorBio
          : doctorBio // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_DoctorModelCopyWith<$Res>
    implements $DoctorModelCopyWith<$Res> {
  factory _$$_DoctorModelCopyWith(
          _$_DoctorModel value, $Res Function(_$_DoctorModel) then) =
      __$$_DoctorModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'employee_id') String doctorId,
      @JsonKey(name: 'id_employee') int idDoctor,
      @JsonKey(name: 'id_busunit') int idBusUnit,
      @JsonKey(name: 'busunit_name') String busUnitName,
      @JsonKey(name: 'employee_name') String doctorName,
      @JsonKey(name: 'dept_name') String departmentName,
      @JsonKey(name: 'speciality') String doctorSpecility,
      String experience,
      String branch,
      @JsonKey(name: 'Language_Known') List<LanguageKnownModel> knownLanguages,
      @JsonKey(name: 'profileUrl') String doctorImage,
      @JsonKey(name: 'cons_fee') double consultationFee,
      @JsonKey(name: 'employee_bio') String? doctorBio});
}

/// @nodoc
class __$$_DoctorModelCopyWithImpl<$Res> extends _$DoctorModelCopyWithImpl<$Res>
    implements _$$_DoctorModelCopyWith<$Res> {
  __$$_DoctorModelCopyWithImpl(
      _$_DoctorModel _value, $Res Function(_$_DoctorModel) _then)
      : super(_value, (v) => _then(v as _$_DoctorModel));

  @override
  _$_DoctorModel get _value => super._value as _$_DoctorModel;

  @override
  $Res call({
    Object? doctorId = freezed,
    Object? idDoctor = freezed,
    Object? idBusUnit = freezed,
    Object? busUnitName = freezed,
    Object? doctorName = freezed,
    Object? departmentName = freezed,
    Object? doctorSpecility = freezed,
    Object? experience = freezed,
    Object? branch = freezed,
    Object? knownLanguages = freezed,
    Object? doctorImage = freezed,
    Object? consultationFee = freezed,
    Object? doctorBio = freezed,
  }) {
    return _then(_$_DoctorModel(
      doctorId: doctorId == freezed
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
      idDoctor: idDoctor == freezed
          ? _value.idDoctor
          : idDoctor // ignore: cast_nullable_to_non_nullable
              as int,
      idBusUnit: idBusUnit == freezed
          ? _value.idBusUnit
          : idBusUnit // ignore: cast_nullable_to_non_nullable
              as int,
      busUnitName: busUnitName == freezed
          ? _value.busUnitName
          : busUnitName // ignore: cast_nullable_to_non_nullable
              as String,
      doctorName: doctorName == freezed
          ? _value.doctorName
          : doctorName // ignore: cast_nullable_to_non_nullable
              as String,
      departmentName: departmentName == freezed
          ? _value.departmentName
          : departmentName // ignore: cast_nullable_to_non_nullable
              as String,
      doctorSpecility: doctorSpecility == freezed
          ? _value.doctorSpecility
          : doctorSpecility // ignore: cast_nullable_to_non_nullable
              as String,
      experience: experience == freezed
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as String,
      branch: branch == freezed
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as String,
      knownLanguages: knownLanguages == freezed
          ? _value._knownLanguages
          : knownLanguages // ignore: cast_nullable_to_non_nullable
              as List<LanguageKnownModel>,
      doctorImage: doctorImage == freezed
          ? _value.doctorImage
          : doctorImage // ignore: cast_nullable_to_non_nullable
              as String,
      consultationFee: consultationFee == freezed
          ? _value.consultationFee
          : consultationFee // ignore: cast_nullable_to_non_nullable
              as double,
      doctorBio: doctorBio == freezed
          ? _value.doctorBio
          : doctorBio // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DoctorModel implements _DoctorModel {
  const _$_DoctorModel(
      {@JsonKey(name: 'employee_id')
          required this.doctorId,
      @JsonKey(name: 'id_employee')
          required this.idDoctor,
      @JsonKey(name: 'id_busunit')
          required this.idBusUnit,
      @JsonKey(name: 'busunit_name')
          required this.busUnitName,
      @JsonKey(name: 'employee_name')
          required this.doctorName,
      @JsonKey(name: 'dept_name')
          required this.departmentName,
      @JsonKey(name: 'speciality')
          required this.doctorSpecility,
      required this.experience,
      required this.branch,
      @JsonKey(name: 'Language_Known')
          required final List<LanguageKnownModel> knownLanguages,
      @JsonKey(name: 'profileUrl')
          required this.doctorImage,
      @JsonKey(name: 'cons_fee')
          required this.consultationFee,
      @JsonKey(name: 'employee_bio')
          required this.doctorBio})
      : _knownLanguages = knownLanguages;

  factory _$_DoctorModel.fromJson(Map<String, dynamic> json) =>
      _$$_DoctorModelFromJson(json);

  @override
  @JsonKey(name: 'employee_id')
  final String doctorId;
  @override
  @JsonKey(name: 'id_employee')
  final int idDoctor;
  @override
  @JsonKey(name: 'id_busunit')
  final int idBusUnit;
  @override
  @JsonKey(name: 'busunit_name')
  final String busUnitName;
  @override
  @JsonKey(name: 'employee_name')
  final String doctorName;
  @override
  @JsonKey(name: 'dept_name')
  final String departmentName;
  @override
  @JsonKey(name: 'speciality')
  final String doctorSpecility;
  @override
  final String experience;
  @override
  final String branch;
  final List<LanguageKnownModel> _knownLanguages;
  @override
  @JsonKey(name: 'Language_Known')
  List<LanguageKnownModel> get knownLanguages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_knownLanguages);
  }

  @override
  @JsonKey(name: 'profileUrl')
  final String doctorImage;
  @override
  @JsonKey(name: 'cons_fee')
  final double consultationFee;
  @override
  @JsonKey(name: 'employee_bio')
  final String? doctorBio;

  @override
  String toString() {
    return 'DoctorModel(doctorId: $doctorId, idDoctor: $idDoctor, idBusUnit: $idBusUnit, busUnitName: $busUnitName, doctorName: $doctorName, departmentName: $departmentName, doctorSpecility: $doctorSpecility, experience: $experience, branch: $branch, knownLanguages: $knownLanguages, doctorImage: $doctorImage, consultationFee: $consultationFee, doctorBio: $doctorBio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DoctorModel &&
            const DeepCollectionEquality().equals(other.doctorId, doctorId) &&
            const DeepCollectionEquality().equals(other.idDoctor, idDoctor) &&
            const DeepCollectionEquality().equals(other.idBusUnit, idBusUnit) &&
            const DeepCollectionEquality()
                .equals(other.busUnitName, busUnitName) &&
            const DeepCollectionEquality()
                .equals(other.doctorName, doctorName) &&
            const DeepCollectionEquality()
                .equals(other.departmentName, departmentName) &&
            const DeepCollectionEquality()
                .equals(other.doctorSpecility, doctorSpecility) &&
            const DeepCollectionEquality()
                .equals(other.experience, experience) &&
            const DeepCollectionEquality().equals(other.branch, branch) &&
            const DeepCollectionEquality()
                .equals(other._knownLanguages, _knownLanguages) &&
            const DeepCollectionEquality()
                .equals(other.doctorImage, doctorImage) &&
            const DeepCollectionEquality()
                .equals(other.consultationFee, consultationFee) &&
            const DeepCollectionEquality().equals(other.doctorBio, doctorBio));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(doctorId),
      const DeepCollectionEquality().hash(idDoctor),
      const DeepCollectionEquality().hash(idBusUnit),
      const DeepCollectionEquality().hash(busUnitName),
      const DeepCollectionEquality().hash(doctorName),
      const DeepCollectionEquality().hash(departmentName),
      const DeepCollectionEquality().hash(doctorSpecility),
      const DeepCollectionEquality().hash(experience),
      const DeepCollectionEquality().hash(branch),
      const DeepCollectionEquality().hash(_knownLanguages),
      const DeepCollectionEquality().hash(doctorImage),
      const DeepCollectionEquality().hash(consultationFee),
      const DeepCollectionEquality().hash(doctorBio));

  @JsonKey(ignore: true)
  @override
  _$$_DoctorModelCopyWith<_$_DoctorModel> get copyWith =>
      __$$_DoctorModelCopyWithImpl<_$_DoctorModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DoctorModelToJson(
      this,
    );
  }
}

abstract class _DoctorModel implements DoctorModel {
  const factory _DoctorModel(
      {@JsonKey(name: 'employee_id')
          required final String doctorId,
      @JsonKey(name: 'id_employee')
          required final int idDoctor,
      @JsonKey(name: 'id_busunit')
          required final int idBusUnit,
      @JsonKey(name: 'busunit_name')
          required final String busUnitName,
      @JsonKey(name: 'employee_name')
          required final String doctorName,
      @JsonKey(name: 'dept_name')
          required final String departmentName,
      @JsonKey(name: 'speciality')
          required final String doctorSpecility,
      required final String experience,
      required final String branch,
      @JsonKey(name: 'Language_Known')
          required final List<LanguageKnownModel> knownLanguages,
      @JsonKey(name: 'profileUrl')
          required final String doctorImage,
      @JsonKey(name: 'cons_fee')
          required final double consultationFee,
      @JsonKey(name: 'employee_bio')
          required final String? doctorBio}) = _$_DoctorModel;

  factory _DoctorModel.fromJson(Map<String, dynamic> json) =
      _$_DoctorModel.fromJson;

  @override
  @JsonKey(name: 'employee_id')
  String get doctorId;
  @override
  @JsonKey(name: 'id_employee')
  int get idDoctor;
  @override
  @JsonKey(name: 'id_busunit')
  int get idBusUnit;
  @override
  @JsonKey(name: 'busunit_name')
  String get busUnitName;
  @override
  @JsonKey(name: 'employee_name')
  String get doctorName;
  @override
  @JsonKey(name: 'dept_name')
  String get departmentName;
  @override
  @JsonKey(name: 'speciality')
  String get doctorSpecility;
  @override
  String get experience;
  @override
  String get branch;
  @override
  @JsonKey(name: 'Language_Known')
  List<LanguageKnownModel> get knownLanguages;
  @override
  @JsonKey(name: 'profileUrl')
  String get doctorImage;
  @override
  @JsonKey(name: 'cons_fee')
  double get consultationFee;
  @override
  @JsonKey(name: 'employee_bio')
  String? get doctorBio;
  @override
  @JsonKey(ignore: true)
  _$$_DoctorModelCopyWith<_$_DoctorModel> get copyWith =>
      throw _privateConstructorUsedError;
}
