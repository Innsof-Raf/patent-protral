// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'appointment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppointmentModel _$AppointmentModelFromJson(Map<String, dynamic> json) {
  return _AppointmentModel.fromJson(json);
}

/// @nodoc
mixin _$AppointmentModel {
  @JsonKey(name: "Id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "appmt_id")
  String get appointmentId => throw _privateConstructorUsedError;
  @JsonKey(name: "branch")
  String get branch => throw _privateConstructorUsedError;
  @JsonKey(name: "id_customer")
  int get idMember => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_name")
  String get memberName => throw _privateConstructorUsedError;
  @JsonKey(name: "id_employee")
  int get idDoctor => throw _privateConstructorUsedError;
  @JsonKey(name: "employee_name")
  String get doctorName => throw _privateConstructorUsedError;
  @JsonKey(name: "speciality")
  String get doctorSpecility => throw _privateConstructorUsedError;
  @JsonKey(name: "profileurl")
  String get doctorImage => throw _privateConstructorUsedError;
  @JsonKey(name: "Appmnt_Dttm")
  DateTime get appointmentDateTime => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_img")
  String? get memberImage => throw _privateConstructorUsedError;
  @JsonKey(name: "busunit_name")
  String get busunitName => throw _privateConstructorUsedError;
  @JsonKey(name: "dept_name")
  String get deptName => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: "employee_id")
  String get doctorId => throw _privateConstructorUsedError;
  @JsonKey(name: "mobile_no")
  String get mobileNo => throw _privateConstructorUsedError;
  @JsonKey(name: "id_busunit")
  int get idBusunit => throw _privateConstructorUsedError;
  @JsonKey(name: "id_dept")
  int get idDept => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppointmentModelCopyWith<AppointmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentModelCopyWith<$Res> {
  factory $AppointmentModelCopyWith(
          AppointmentModel value, $Res Function(AppointmentModel) then) =
      _$AppointmentModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "Id") int id,
      @JsonKey(name: "appmt_id") String appointmentId,
      @JsonKey(name: "branch") String branch,
      @JsonKey(name: "id_customer") int idMember,
      @JsonKey(name: "customer_name") String memberName,
      @JsonKey(name: "id_employee") int idDoctor,
      @JsonKey(name: "employee_name") String doctorName,
      @JsonKey(name: "speciality") String doctorSpecility,
      @JsonKey(name: "profileurl") String doctorImage,
      @JsonKey(name: "Appmnt_Dttm") DateTime appointmentDateTime,
      @JsonKey(name: "customer_img") String? memberImage,
      @JsonKey(name: "busunit_name") String busunitName,
      @JsonKey(name: "dept_name") String deptName,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "employee_id") String doctorId,
      @JsonKey(name: "mobile_no") String mobileNo,
      @JsonKey(name: "id_busunit") int idBusunit,
      @JsonKey(name: "id_dept") int idDept});
}

/// @nodoc
class _$AppointmentModelCopyWithImpl<$Res>
    implements $AppointmentModelCopyWith<$Res> {
  _$AppointmentModelCopyWithImpl(this._value, this._then);

  final AppointmentModel _value;
  // ignore: unused_field
  final $Res Function(AppointmentModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? appointmentId = freezed,
    Object? branch = freezed,
    Object? idMember = freezed,
    Object? memberName = freezed,
    Object? idDoctor = freezed,
    Object? doctorName = freezed,
    Object? doctorSpecility = freezed,
    Object? doctorImage = freezed,
    Object? appointmentDateTime = freezed,
    Object? memberImage = freezed,
    Object? busunitName = freezed,
    Object? deptName = freezed,
    Object? email = freezed,
    Object? doctorId = freezed,
    Object? mobileNo = freezed,
    Object? idBusunit = freezed,
    Object? idDept = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      appointmentId: appointmentId == freezed
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String,
      branch: branch == freezed
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as String,
      idMember: idMember == freezed
          ? _value.idMember
          : idMember // ignore: cast_nullable_to_non_nullable
              as int,
      memberName: memberName == freezed
          ? _value.memberName
          : memberName // ignore: cast_nullable_to_non_nullable
              as String,
      idDoctor: idDoctor == freezed
          ? _value.idDoctor
          : idDoctor // ignore: cast_nullable_to_non_nullable
              as int,
      doctorName: doctorName == freezed
          ? _value.doctorName
          : doctorName // ignore: cast_nullable_to_non_nullable
              as String,
      doctorSpecility: doctorSpecility == freezed
          ? _value.doctorSpecility
          : doctorSpecility // ignore: cast_nullable_to_non_nullable
              as String,
      doctorImage: doctorImage == freezed
          ? _value.doctorImage
          : doctorImage // ignore: cast_nullable_to_non_nullable
              as String,
      appointmentDateTime: appointmentDateTime == freezed
          ? _value.appointmentDateTime
          : appointmentDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      memberImage: memberImage == freezed
          ? _value.memberImage
          : memberImage // ignore: cast_nullable_to_non_nullable
              as String?,
      busunitName: busunitName == freezed
          ? _value.busunitName
          : busunitName // ignore: cast_nullable_to_non_nullable
              as String,
      deptName: deptName == freezed
          ? _value.deptName
          : deptName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      doctorId: doctorId == freezed
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNo: mobileNo == freezed
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String,
      idBusunit: idBusunit == freezed
          ? _value.idBusunit
          : idBusunit // ignore: cast_nullable_to_non_nullable
              as int,
      idDept: idDept == freezed
          ? _value.idDept
          : idDept // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_AppointmentModelCopyWith<$Res>
    implements $AppointmentModelCopyWith<$Res> {
  factory _$$_AppointmentModelCopyWith(
          _$_AppointmentModel value, $Res Function(_$_AppointmentModel) then) =
      __$$_AppointmentModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "Id") int id,
      @JsonKey(name: "appmt_id") String appointmentId,
      @JsonKey(name: "branch") String branch,
      @JsonKey(name: "id_customer") int idMember,
      @JsonKey(name: "customer_name") String memberName,
      @JsonKey(name: "id_employee") int idDoctor,
      @JsonKey(name: "employee_name") String doctorName,
      @JsonKey(name: "speciality") String doctorSpecility,
      @JsonKey(name: "profileurl") String doctorImage,
      @JsonKey(name: "Appmnt_Dttm") DateTime appointmentDateTime,
      @JsonKey(name: "customer_img") String? memberImage,
      @JsonKey(name: "busunit_name") String busunitName,
      @JsonKey(name: "dept_name") String deptName,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "employee_id") String doctorId,
      @JsonKey(name: "mobile_no") String mobileNo,
      @JsonKey(name: "id_busunit") int idBusunit,
      @JsonKey(name: "id_dept") int idDept});
}

/// @nodoc
class __$$_AppointmentModelCopyWithImpl<$Res>
    extends _$AppointmentModelCopyWithImpl<$Res>
    implements _$$_AppointmentModelCopyWith<$Res> {
  __$$_AppointmentModelCopyWithImpl(
      _$_AppointmentModel _value, $Res Function(_$_AppointmentModel) _then)
      : super(_value, (v) => _then(v as _$_AppointmentModel));

  @override
  _$_AppointmentModel get _value => super._value as _$_AppointmentModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? appointmentId = freezed,
    Object? branch = freezed,
    Object? idMember = freezed,
    Object? memberName = freezed,
    Object? idDoctor = freezed,
    Object? doctorName = freezed,
    Object? doctorSpecility = freezed,
    Object? doctorImage = freezed,
    Object? appointmentDateTime = freezed,
    Object? memberImage = freezed,
    Object? busunitName = freezed,
    Object? deptName = freezed,
    Object? email = freezed,
    Object? doctorId = freezed,
    Object? mobileNo = freezed,
    Object? idBusunit = freezed,
    Object? idDept = freezed,
  }) {
    return _then(_$_AppointmentModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      appointmentId: appointmentId == freezed
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String,
      branch: branch == freezed
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as String,
      idMember: idMember == freezed
          ? _value.idMember
          : idMember // ignore: cast_nullable_to_non_nullable
              as int,
      memberName: memberName == freezed
          ? _value.memberName
          : memberName // ignore: cast_nullable_to_non_nullable
              as String,
      idDoctor: idDoctor == freezed
          ? _value.idDoctor
          : idDoctor // ignore: cast_nullable_to_non_nullable
              as int,
      doctorName: doctorName == freezed
          ? _value.doctorName
          : doctorName // ignore: cast_nullable_to_non_nullable
              as String,
      doctorSpecility: doctorSpecility == freezed
          ? _value.doctorSpecility
          : doctorSpecility // ignore: cast_nullable_to_non_nullable
              as String,
      doctorImage: doctorImage == freezed
          ? _value.doctorImage
          : doctorImage // ignore: cast_nullable_to_non_nullable
              as String,
      appointmentDateTime: appointmentDateTime == freezed
          ? _value.appointmentDateTime
          : appointmentDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      memberImage: memberImage == freezed
          ? _value.memberImage
          : memberImage // ignore: cast_nullable_to_non_nullable
              as String?,
      busunitName: busunitName == freezed
          ? _value.busunitName
          : busunitName // ignore: cast_nullable_to_non_nullable
              as String,
      deptName: deptName == freezed
          ? _value.deptName
          : deptName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      doctorId: doctorId == freezed
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNo: mobileNo == freezed
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String,
      idBusunit: idBusunit == freezed
          ? _value.idBusunit
          : idBusunit // ignore: cast_nullable_to_non_nullable
              as int,
      idDept: idDept == freezed
          ? _value.idDept
          : idDept // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppointmentModel implements _AppointmentModel {
  const _$_AppointmentModel(
      {@JsonKey(name: "Id") required this.id,
      @JsonKey(name: "appmt_id") required this.appointmentId,
      @JsonKey(name: "branch") required this.branch,
      @JsonKey(name: "id_customer") required this.idMember,
      @JsonKey(name: "customer_name") required this.memberName,
      @JsonKey(name: "id_employee") required this.idDoctor,
      @JsonKey(name: "employee_name") required this.doctorName,
      @JsonKey(name: "speciality") required this.doctorSpecility,
      @JsonKey(name: "profileurl") required this.doctorImage,
      @JsonKey(name: "Appmnt_Dttm") required this.appointmentDateTime,
      @JsonKey(name: "customer_img") this.memberImage = null,
      @JsonKey(name: "busunit_name") required this.busunitName,
      @JsonKey(name: "dept_name") required this.deptName,
      @JsonKey(name: "email") required this.email,
      @JsonKey(name: "employee_id") required this.doctorId,
      @JsonKey(name: "mobile_no") required this.mobileNo,
      @JsonKey(name: "id_busunit") required this.idBusunit,
      @JsonKey(name: "id_dept") required this.idDept});

  factory _$_AppointmentModel.fromJson(Map<String, dynamic> json) =>
      _$$_AppointmentModelFromJson(json);

  @override
  @JsonKey(name: "Id")
  final int id;
  @override
  @JsonKey(name: "appmt_id")
  final String appointmentId;
  @override
  @JsonKey(name: "branch")
  final String branch;
  @override
  @JsonKey(name: "id_customer")
  final int idMember;
  @override
  @JsonKey(name: "customer_name")
  final String memberName;
  @override
  @JsonKey(name: "id_employee")
  final int idDoctor;
  @override
  @JsonKey(name: "employee_name")
  final String doctorName;
  @override
  @JsonKey(name: "speciality")
  final String doctorSpecility;
  @override
  @JsonKey(name: "profileurl")
  final String doctorImage;
  @override
  @JsonKey(name: "Appmnt_Dttm")
  final DateTime appointmentDateTime;
  @override
  @JsonKey(name: "customer_img")
  final String? memberImage;
  @override
  @JsonKey(name: "busunit_name")
  final String busunitName;
  @override
  @JsonKey(name: "dept_name")
  final String deptName;
  @override
  @JsonKey(name: "email")
  final String email;
  @override
  @JsonKey(name: "employee_id")
  final String doctorId;
  @override
  @JsonKey(name: "mobile_no")
  final String mobileNo;
  @override
  @JsonKey(name: "id_busunit")
  final int idBusunit;
  @override
  @JsonKey(name: "id_dept")
  final int idDept;

  @override
  String toString() {
    return 'AppointmentModel(id: $id, appointmentId: $appointmentId, branch: $branch, idMember: $idMember, memberName: $memberName, idDoctor: $idDoctor, doctorName: $doctorName, doctorSpecility: $doctorSpecility, doctorImage: $doctorImage, appointmentDateTime: $appointmentDateTime, memberImage: $memberImage, busunitName: $busunitName, deptName: $deptName, email: $email, doctorId: $doctorId, mobileNo: $mobileNo, idBusunit: $idBusunit, idDept: $idDept)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppointmentModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.appointmentId, appointmentId) &&
            const DeepCollectionEquality().equals(other.branch, branch) &&
            const DeepCollectionEquality().equals(other.idMember, idMember) &&
            const DeepCollectionEquality()
                .equals(other.memberName, memberName) &&
            const DeepCollectionEquality().equals(other.idDoctor, idDoctor) &&
            const DeepCollectionEquality()
                .equals(other.doctorName, doctorName) &&
            const DeepCollectionEquality()
                .equals(other.doctorSpecility, doctorSpecility) &&
            const DeepCollectionEquality()
                .equals(other.doctorImage, doctorImage) &&
            const DeepCollectionEquality()
                .equals(other.appointmentDateTime, appointmentDateTime) &&
            const DeepCollectionEquality()
                .equals(other.memberImage, memberImage) &&
            const DeepCollectionEquality()
                .equals(other.busunitName, busunitName) &&
            const DeepCollectionEquality().equals(other.deptName, deptName) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.doctorId, doctorId) &&
            const DeepCollectionEquality().equals(other.mobileNo, mobileNo) &&
            const DeepCollectionEquality().equals(other.idBusunit, idBusunit) &&
            const DeepCollectionEquality().equals(other.idDept, idDept));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(appointmentId),
      const DeepCollectionEquality().hash(branch),
      const DeepCollectionEquality().hash(idMember),
      const DeepCollectionEquality().hash(memberName),
      const DeepCollectionEquality().hash(idDoctor),
      const DeepCollectionEquality().hash(doctorName),
      const DeepCollectionEquality().hash(doctorSpecility),
      const DeepCollectionEquality().hash(doctorImage),
      const DeepCollectionEquality().hash(appointmentDateTime),
      const DeepCollectionEquality().hash(memberImage),
      const DeepCollectionEquality().hash(busunitName),
      const DeepCollectionEquality().hash(deptName),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(doctorId),
      const DeepCollectionEquality().hash(mobileNo),
      const DeepCollectionEquality().hash(idBusunit),
      const DeepCollectionEquality().hash(idDept));

  @JsonKey(ignore: true)
  @override
  _$$_AppointmentModelCopyWith<_$_AppointmentModel> get copyWith =>
      __$$_AppointmentModelCopyWithImpl<_$_AppointmentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppointmentModelToJson(
      this,
    );
  }
}

abstract class _AppointmentModel implements AppointmentModel {
  const factory _AppointmentModel(
      {@JsonKey(name: "Id")
          required final int id,
      @JsonKey(name: "appmt_id")
          required final String appointmentId,
      @JsonKey(name: "branch")
          required final String branch,
      @JsonKey(name: "id_customer")
          required final int idMember,
      @JsonKey(name: "customer_name")
          required final String memberName,
      @JsonKey(name: "id_employee")
          required final int idDoctor,
      @JsonKey(name: "employee_name")
          required final String doctorName,
      @JsonKey(name: "speciality")
          required final String doctorSpecility,
      @JsonKey(name: "profileurl")
          required final String doctorImage,
      @JsonKey(name: "Appmnt_Dttm")
          required final DateTime appointmentDateTime,
      @JsonKey(name: "customer_img")
          final String? memberImage,
      @JsonKey(name: "busunit_name")
          required final String busunitName,
      @JsonKey(name: "dept_name")
          required final String deptName,
      @JsonKey(name: "email")
          required final String email,
      @JsonKey(name: "employee_id")
          required final String doctorId,
      @JsonKey(name: "mobile_no")
          required final String mobileNo,
      @JsonKey(name: "id_busunit")
          required final int idBusunit,
      @JsonKey(name: "id_dept")
          required final int idDept}) = _$_AppointmentModel;

  factory _AppointmentModel.fromJson(Map<String, dynamic> json) =
      _$_AppointmentModel.fromJson;

  @override
  @JsonKey(name: "Id")
  int get id;
  @override
  @JsonKey(name: "appmt_id")
  String get appointmentId;
  @override
  @JsonKey(name: "branch")
  String get branch;
  @override
  @JsonKey(name: "id_customer")
  int get idMember;
  @override
  @JsonKey(name: "customer_name")
  String get memberName;
  @override
  @JsonKey(name: "id_employee")
  int get idDoctor;
  @override
  @JsonKey(name: "employee_name")
  String get doctorName;
  @override
  @JsonKey(name: "speciality")
  String get doctorSpecility;
  @override
  @JsonKey(name: "profileurl")
  String get doctorImage;
  @override
  @JsonKey(name: "Appmnt_Dttm")
  DateTime get appointmentDateTime;
  @override
  @JsonKey(name: "customer_img")
  String? get memberImage;
  @override
  @JsonKey(name: "busunit_name")
  String get busunitName;
  @override
  @JsonKey(name: "dept_name")
  String get deptName;
  @override
  @JsonKey(name: "email")
  String get email;
  @override
  @JsonKey(name: "employee_id")
  String get doctorId;
  @override
  @JsonKey(name: "mobile_no")
  String get mobileNo;
  @override
  @JsonKey(name: "id_busunit")
  int get idBusunit;
  @override
  @JsonKey(name: "id_dept")
  int get idDept;
  @override
  @JsonKey(ignore: true)
  _$$_AppointmentModelCopyWith<_$_AppointmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
