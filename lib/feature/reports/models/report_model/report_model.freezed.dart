// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'report_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReportModel _$ReportModelFromJson(Map<String, dynamic> json) {
  return _ReportModel.fromJson(json);
}

/// @nodoc
mixin _$ReportModel {
  @JsonKey(name: "id_cons")
  int get idConseltation => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "ID_CUSTOMER")
  int get memberId => throw _privateConstructorUsedError;
  @JsonKey(name: "employee_name")
  String get doctorName => throw _privateConstructorUsedError;
  @JsonKey(name: "speciality")
  String get departmentName => throw _privateConstructorUsedError;
  @JsonKey(name: "appmnt_dttm")
  DateTime get appointmentDate => throw _privateConstructorUsedError;
  @JsonKey(name: "appmnt_time")
  String get appointmentTime => throw _privateConstructorUsedError;
  @JsonKey(name: "labreport_url")
  String? get labPdfUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "xrayreport_url")
  String? get xRayPdfUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "ussreport_url")
  String? get ussPdfUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "ct_url")
  String? get ctPdfUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportModelCopyWith<ReportModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportModelCopyWith<$Res> {
  factory $ReportModelCopyWith(
          ReportModel value, $Res Function(ReportModel) then) =
      _$ReportModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id_cons") int idConseltation,
      @JsonKey(name: "id") int id,
      @JsonKey(name: "ID_CUSTOMER") int memberId,
      @JsonKey(name: "employee_name") String doctorName,
      @JsonKey(name: "speciality") String departmentName,
      @JsonKey(name: "appmnt_dttm") DateTime appointmentDate,
      @JsonKey(name: "appmnt_time") String appointmentTime,
      @JsonKey(name: "labreport_url") String? labPdfUrl,
      @JsonKey(name: "xrayreport_url") String? xRayPdfUrl,
      @JsonKey(name: "ussreport_url") String? ussPdfUrl,
      @JsonKey(name: "ct_url") String? ctPdfUrl});
}

/// @nodoc
class _$ReportModelCopyWithImpl<$Res> implements $ReportModelCopyWith<$Res> {
  _$ReportModelCopyWithImpl(this._value, this._then);

  final ReportModel _value;
  // ignore: unused_field
  final $Res Function(ReportModel) _then;

  @override
  $Res call({
    Object? idConseltation = freezed,
    Object? id = freezed,
    Object? memberId = freezed,
    Object? doctorName = freezed,
    Object? departmentName = freezed,
    Object? appointmentDate = freezed,
    Object? appointmentTime = freezed,
    Object? labPdfUrl = freezed,
    Object? xRayPdfUrl = freezed,
    Object? ussPdfUrl = freezed,
    Object? ctPdfUrl = freezed,
  }) {
    return _then(_value.copyWith(
      idConseltation: idConseltation == freezed
          ? _value.idConseltation
          : idConseltation // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      memberId: memberId == freezed
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      doctorName: doctorName == freezed
          ? _value.doctorName
          : doctorName // ignore: cast_nullable_to_non_nullable
              as String,
      departmentName: departmentName == freezed
          ? _value.departmentName
          : departmentName // ignore: cast_nullable_to_non_nullable
              as String,
      appointmentDate: appointmentDate == freezed
          ? _value.appointmentDate
          : appointmentDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      appointmentTime: appointmentTime == freezed
          ? _value.appointmentTime
          : appointmentTime // ignore: cast_nullable_to_non_nullable
              as String,
      labPdfUrl: labPdfUrl == freezed
          ? _value.labPdfUrl
          : labPdfUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      xRayPdfUrl: xRayPdfUrl == freezed
          ? _value.xRayPdfUrl
          : xRayPdfUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      ussPdfUrl: ussPdfUrl == freezed
          ? _value.ussPdfUrl
          : ussPdfUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      ctPdfUrl: ctPdfUrl == freezed
          ? _value.ctPdfUrl
          : ctPdfUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ReportModelCopyWith<$Res>
    implements $ReportModelCopyWith<$Res> {
  factory _$$_ReportModelCopyWith(
          _$_ReportModel value, $Res Function(_$_ReportModel) then) =
      __$$_ReportModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id_cons") int idConseltation,
      @JsonKey(name: "id") int id,
      @JsonKey(name: "ID_CUSTOMER") int memberId,
      @JsonKey(name: "employee_name") String doctorName,
      @JsonKey(name: "speciality") String departmentName,
      @JsonKey(name: "appmnt_dttm") DateTime appointmentDate,
      @JsonKey(name: "appmnt_time") String appointmentTime,
      @JsonKey(name: "labreport_url") String? labPdfUrl,
      @JsonKey(name: "xrayreport_url") String? xRayPdfUrl,
      @JsonKey(name: "ussreport_url") String? ussPdfUrl,
      @JsonKey(name: "ct_url") String? ctPdfUrl});
}

/// @nodoc
class __$$_ReportModelCopyWithImpl<$Res> extends _$ReportModelCopyWithImpl<$Res>
    implements _$$_ReportModelCopyWith<$Res> {
  __$$_ReportModelCopyWithImpl(
      _$_ReportModel _value, $Res Function(_$_ReportModel) _then)
      : super(_value, (v) => _then(v as _$_ReportModel));

  @override
  _$_ReportModel get _value => super._value as _$_ReportModel;

  @override
  $Res call({
    Object? idConseltation = freezed,
    Object? id = freezed,
    Object? memberId = freezed,
    Object? doctorName = freezed,
    Object? departmentName = freezed,
    Object? appointmentDate = freezed,
    Object? appointmentTime = freezed,
    Object? labPdfUrl = freezed,
    Object? xRayPdfUrl = freezed,
    Object? ussPdfUrl = freezed,
    Object? ctPdfUrl = freezed,
  }) {
    return _then(_$_ReportModel(
      idConseltation: idConseltation == freezed
          ? _value.idConseltation
          : idConseltation // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      memberId: memberId == freezed
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      doctorName: doctorName == freezed
          ? _value.doctorName
          : doctorName // ignore: cast_nullable_to_non_nullable
              as String,
      departmentName: departmentName == freezed
          ? _value.departmentName
          : departmentName // ignore: cast_nullable_to_non_nullable
              as String,
      appointmentDate: appointmentDate == freezed
          ? _value.appointmentDate
          : appointmentDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      appointmentTime: appointmentTime == freezed
          ? _value.appointmentTime
          : appointmentTime // ignore: cast_nullable_to_non_nullable
              as String,
      labPdfUrl: labPdfUrl == freezed
          ? _value.labPdfUrl
          : labPdfUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      xRayPdfUrl: xRayPdfUrl == freezed
          ? _value.xRayPdfUrl
          : xRayPdfUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      ussPdfUrl: ussPdfUrl == freezed
          ? _value.ussPdfUrl
          : ussPdfUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      ctPdfUrl: ctPdfUrl == freezed
          ? _value.ctPdfUrl
          : ctPdfUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReportModel implements _ReportModel {
  const _$_ReportModel(
      {@JsonKey(name: "id_cons") required this.idConseltation,
      @JsonKey(name: "id") required this.id,
      @JsonKey(name: "ID_CUSTOMER") required this.memberId,
      @JsonKey(name: "employee_name") required this.doctorName,
      @JsonKey(name: "speciality") required this.departmentName,
      @JsonKey(name: "appmnt_dttm") required this.appointmentDate,
      @JsonKey(name: "appmnt_time") required this.appointmentTime,
      @JsonKey(name: "labreport_url") this.labPdfUrl = null,
      @JsonKey(name: "xrayreport_url") this.xRayPdfUrl = null,
      @JsonKey(name: "ussreport_url") this.ussPdfUrl = null,
      @JsonKey(name: "ct_url") this.ctPdfUrl = null});

  factory _$_ReportModel.fromJson(Map<String, dynamic> json) =>
      _$$_ReportModelFromJson(json);

  @override
  @JsonKey(name: "id_cons")
  final int idConseltation;
  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "ID_CUSTOMER")
  final int memberId;
  @override
  @JsonKey(name: "employee_name")
  final String doctorName;
  @override
  @JsonKey(name: "speciality")
  final String departmentName;
  @override
  @JsonKey(name: "appmnt_dttm")
  final DateTime appointmentDate;
  @override
  @JsonKey(name: "appmnt_time")
  final String appointmentTime;
  @override
  @JsonKey(name: "labreport_url")
  final String? labPdfUrl;
  @override
  @JsonKey(name: "xrayreport_url")
  final String? xRayPdfUrl;
  @override
  @JsonKey(name: "ussreport_url")
  final String? ussPdfUrl;
  @override
  @JsonKey(name: "ct_url")
  final String? ctPdfUrl;

  @override
  String toString() {
    return 'ReportModel(idConseltation: $idConseltation, id: $id, memberId: $memberId, doctorName: $doctorName, departmentName: $departmentName, appointmentDate: $appointmentDate, appointmentTime: $appointmentTime, labPdfUrl: $labPdfUrl, xRayPdfUrl: $xRayPdfUrl, ussPdfUrl: $ussPdfUrl, ctPdfUrl: $ctPdfUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReportModel &&
            const DeepCollectionEquality()
                .equals(other.idConseltation, idConseltation) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.memberId, memberId) &&
            const DeepCollectionEquality()
                .equals(other.doctorName, doctorName) &&
            const DeepCollectionEquality()
                .equals(other.departmentName, departmentName) &&
            const DeepCollectionEquality()
                .equals(other.appointmentDate, appointmentDate) &&
            const DeepCollectionEquality()
                .equals(other.appointmentTime, appointmentTime) &&
            const DeepCollectionEquality().equals(other.labPdfUrl, labPdfUrl) &&
            const DeepCollectionEquality()
                .equals(other.xRayPdfUrl, xRayPdfUrl) &&
            const DeepCollectionEquality().equals(other.ussPdfUrl, ussPdfUrl) &&
            const DeepCollectionEquality().equals(other.ctPdfUrl, ctPdfUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idConseltation),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(memberId),
      const DeepCollectionEquality().hash(doctorName),
      const DeepCollectionEquality().hash(departmentName),
      const DeepCollectionEquality().hash(appointmentDate),
      const DeepCollectionEquality().hash(appointmentTime),
      const DeepCollectionEquality().hash(labPdfUrl),
      const DeepCollectionEquality().hash(xRayPdfUrl),
      const DeepCollectionEquality().hash(ussPdfUrl),
      const DeepCollectionEquality().hash(ctPdfUrl));

  @JsonKey(ignore: true)
  @override
  _$$_ReportModelCopyWith<_$_ReportModel> get copyWith =>
      __$$_ReportModelCopyWithImpl<_$_ReportModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReportModelToJson(
      this,
    );
  }
}

abstract class _ReportModel implements ReportModel {
  const factory _ReportModel(
      {@JsonKey(name: "id_cons") required final int idConseltation,
      @JsonKey(name: "id") required final int id,
      @JsonKey(name: "ID_CUSTOMER") required final int memberId,
      @JsonKey(name: "employee_name") required final String doctorName,
      @JsonKey(name: "speciality") required final String departmentName,
      @JsonKey(name: "appmnt_dttm") required final DateTime appointmentDate,
      @JsonKey(name: "appmnt_time") required final String appointmentTime,
      @JsonKey(name: "labreport_url") final String? labPdfUrl,
      @JsonKey(name: "xrayreport_url") final String? xRayPdfUrl,
      @JsonKey(name: "ussreport_url") final String? ussPdfUrl,
      @JsonKey(name: "ct_url") final String? ctPdfUrl}) = _$_ReportModel;

  factory _ReportModel.fromJson(Map<String, dynamic> json) =
      _$_ReportModel.fromJson;

  @override
  @JsonKey(name: "id_cons")
  int get idConseltation;
  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "ID_CUSTOMER")
  int get memberId;
  @override
  @JsonKey(name: "employee_name")
  String get doctorName;
  @override
  @JsonKey(name: "speciality")
  String get departmentName;
  @override
  @JsonKey(name: "appmnt_dttm")
  DateTime get appointmentDate;
  @override
  @JsonKey(name: "appmnt_time")
  String get appointmentTime;
  @override
  @JsonKey(name: "labreport_url")
  String? get labPdfUrl;
  @override
  @JsonKey(name: "xrayreport_url")
  String? get xRayPdfUrl;
  @override
  @JsonKey(name: "ussreport_url")
  String? get ussPdfUrl;
  @override
  @JsonKey(name: "ct_url")
  String? get ctPdfUrl;
  @override
  @JsonKey(ignore: true)
  _$$_ReportModelCopyWith<_$_ReportModel> get copyWith =>
      throw _privateConstructorUsedError;
}
