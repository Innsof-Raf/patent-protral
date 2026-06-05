// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_appointment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyAppointmentModel _$MyAppointmentModelFromJson(Map<String, dynamic> json) {
  return _MyAppointmentModel.fromJson(json);
}

/// @nodoc
mixin _$MyAppointmentModel {
  @JsonKey(name: 'Id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_customer')
  int get memberId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_name')
  String get memberName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'mobile_no')
  String get mobileNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'dept_name')
  String get departName => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_id')
  String get doctorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_name')
  String get doctorName => throw _privateConstructorUsedError;
  @JsonKey(name: 'speciality')
  String get speciality => throw _privateConstructorUsedError;
  @JsonKey(name: 'branch')
  String get branch => throw _privateConstructorUsedError;
  @JsonKey(name: 'profileurl')
  String get profileUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'busunit_name')
  String get busunitName => throw _privateConstructorUsedError;
  @JsonKey(name: 'Appmnt_Dttm')
  DateTime get appointmentDateTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_employee')
  int get idDoctor => throw _privateConstructorUsedError;
  bool get isCanceling => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyAppointmentModelCopyWith<MyAppointmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyAppointmentModelCopyWith<$Res> {
  factory $MyAppointmentModelCopyWith(
          MyAppointmentModel value, $Res Function(MyAppointmentModel) then) =
      _$MyAppointmentModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'Id') int id,
      @JsonKey(name: 'id_customer') int memberId,
      @JsonKey(name: 'customer_name') String memberName,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'mobile_no') String mobileNumber,
      @JsonKey(name: 'dept_name') String departName,
      @JsonKey(name: 'employee_id') String doctorId,
      @JsonKey(name: 'employee_name') String doctorName,
      @JsonKey(name: 'speciality') String speciality,
      @JsonKey(name: 'branch') String branch,
      @JsonKey(name: 'profileurl') String profileUrl,
      @JsonKey(name: 'busunit_name') String busunitName,
      @JsonKey(name: 'Appmnt_Dttm') DateTime appointmentDateTime,
      @JsonKey(name: 'id_employee') int idDoctor,
      bool isCanceling});
}

/// @nodoc
class _$MyAppointmentModelCopyWithImpl<$Res>
    implements $MyAppointmentModelCopyWith<$Res> {
  _$MyAppointmentModelCopyWithImpl(this._value, this._then);

  final MyAppointmentModel _value;
  // ignore: unused_field
  final $Res Function(MyAppointmentModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? memberId = freezed,
    Object? memberName = freezed,
    Object? email = freezed,
    Object? mobileNumber = freezed,
    Object? departName = freezed,
    Object? doctorId = freezed,
    Object? doctorName = freezed,
    Object? speciality = freezed,
    Object? branch = freezed,
    Object? profileUrl = freezed,
    Object? busunitName = freezed,
    Object? appointmentDateTime = freezed,
    Object? idDoctor = freezed,
    Object? isCanceling = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      memberId: memberId == freezed
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      memberName: memberName == freezed
          ? _value.memberName
          : memberName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      departName: departName == freezed
          ? _value.departName
          : departName // ignore: cast_nullable_to_non_nullable
              as String,
      doctorId: doctorId == freezed
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
      doctorName: doctorName == freezed
          ? _value.doctorName
          : doctorName // ignore: cast_nullable_to_non_nullable
              as String,
      speciality: speciality == freezed
          ? _value.speciality
          : speciality // ignore: cast_nullable_to_non_nullable
              as String,
      branch: branch == freezed
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as String,
      profileUrl: profileUrl == freezed
          ? _value.profileUrl
          : profileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      busunitName: busunitName == freezed
          ? _value.busunitName
          : busunitName // ignore: cast_nullable_to_non_nullable
              as String,
      appointmentDateTime: appointmentDateTime == freezed
          ? _value.appointmentDateTime
          : appointmentDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      idDoctor: idDoctor == freezed
          ? _value.idDoctor
          : idDoctor // ignore: cast_nullable_to_non_nullable
              as int,
      isCanceling: isCanceling == freezed
          ? _value.isCanceling
          : isCanceling // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_MyAppointmentModelCopyWith<$Res>
    implements $MyAppointmentModelCopyWith<$Res> {
  factory _$$_MyAppointmentModelCopyWith(_$_MyAppointmentModel value,
          $Res Function(_$_MyAppointmentModel) then) =
      __$$_MyAppointmentModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'Id') int id,
      @JsonKey(name: 'id_customer') int memberId,
      @JsonKey(name: 'customer_name') String memberName,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'mobile_no') String mobileNumber,
      @JsonKey(name: 'dept_name') String departName,
      @JsonKey(name: 'employee_id') String doctorId,
      @JsonKey(name: 'employee_name') String doctorName,
      @JsonKey(name: 'speciality') String speciality,
      @JsonKey(name: 'branch') String branch,
      @JsonKey(name: 'profileurl') String profileUrl,
      @JsonKey(name: 'busunit_name') String busunitName,
      @JsonKey(name: 'Appmnt_Dttm') DateTime appointmentDateTime,
      @JsonKey(name: 'id_employee') int idDoctor,
      bool isCanceling});
}

/// @nodoc
class __$$_MyAppointmentModelCopyWithImpl<$Res>
    extends _$MyAppointmentModelCopyWithImpl<$Res>
    implements _$$_MyAppointmentModelCopyWith<$Res> {
  __$$_MyAppointmentModelCopyWithImpl(
      _$_MyAppointmentModel _value, $Res Function(_$_MyAppointmentModel) _then)
      : super(_value, (v) => _then(v as _$_MyAppointmentModel));

  @override
  _$_MyAppointmentModel get _value => super._value as _$_MyAppointmentModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? memberId = freezed,
    Object? memberName = freezed,
    Object? email = freezed,
    Object? mobileNumber = freezed,
    Object? departName = freezed,
    Object? doctorId = freezed,
    Object? doctorName = freezed,
    Object? speciality = freezed,
    Object? branch = freezed,
    Object? profileUrl = freezed,
    Object? busunitName = freezed,
    Object? appointmentDateTime = freezed,
    Object? idDoctor = freezed,
    Object? isCanceling = freezed,
  }) {
    return _then(_$_MyAppointmentModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      memberId: memberId == freezed
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      memberName: memberName == freezed
          ? _value.memberName
          : memberName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      departName: departName == freezed
          ? _value.departName
          : departName // ignore: cast_nullable_to_non_nullable
              as String,
      doctorId: doctorId == freezed
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
      doctorName: doctorName == freezed
          ? _value.doctorName
          : doctorName // ignore: cast_nullable_to_non_nullable
              as String,
      speciality: speciality == freezed
          ? _value.speciality
          : speciality // ignore: cast_nullable_to_non_nullable
              as String,
      branch: branch == freezed
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as String,
      profileUrl: profileUrl == freezed
          ? _value.profileUrl
          : profileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      busunitName: busunitName == freezed
          ? _value.busunitName
          : busunitName // ignore: cast_nullable_to_non_nullable
              as String,
      appointmentDateTime: appointmentDateTime == freezed
          ? _value.appointmentDateTime
          : appointmentDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      idDoctor: idDoctor == freezed
          ? _value.idDoctor
          : idDoctor // ignore: cast_nullable_to_non_nullable
              as int,
      isCanceling: isCanceling == freezed
          ? _value.isCanceling
          : isCanceling // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyAppointmentModel implements _MyAppointmentModel {
  const _$_MyAppointmentModel(
      {@JsonKey(name: 'Id') required this.id,
      @JsonKey(name: 'id_customer') required this.memberId,
      @JsonKey(name: 'customer_name') required this.memberName,
      @JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'mobile_no') required this.mobileNumber,
      @JsonKey(name: 'dept_name') required this.departName,
      @JsonKey(name: 'employee_id') required this.doctorId,
      @JsonKey(name: 'employee_name') required this.doctorName,
      @JsonKey(name: 'speciality') required this.speciality,
      @JsonKey(name: 'branch') required this.branch,
      @JsonKey(name: 'profileurl') required this.profileUrl,
      @JsonKey(name: 'busunit_name') required this.busunitName,
      @JsonKey(name: 'Appmnt_Dttm') required this.appointmentDateTime,
      @JsonKey(name: 'id_employee') required this.idDoctor,
      this.isCanceling = false});

  factory _$_MyAppointmentModel.fromJson(Map<String, dynamic> json) =>
      _$$_MyAppointmentModelFromJson(json);

  @override
  @JsonKey(name: 'Id')
  final int id;
  @override
  @JsonKey(name: 'id_customer')
  final int memberId;
  @override
  @JsonKey(name: 'customer_name')
  final String memberName;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'mobile_no')
  final String mobileNumber;
  @override
  @JsonKey(name: 'dept_name')
  final String departName;
  @override
  @JsonKey(name: 'employee_id')
  final String doctorId;
  @override
  @JsonKey(name: 'employee_name')
  final String doctorName;
  @override
  @JsonKey(name: 'speciality')
  final String speciality;
  @override
  @JsonKey(name: 'branch')
  final String branch;
  @override
  @JsonKey(name: 'profileurl')
  final String profileUrl;
  @override
  @JsonKey(name: 'busunit_name')
  final String busunitName;
  @override
  @JsonKey(name: 'Appmnt_Dttm')
  final DateTime appointmentDateTime;
  @override
  @JsonKey(name: 'id_employee')
  final int idDoctor;
  @override
  @JsonKey()
  final bool isCanceling;

  @override
  String toString() {
    return 'MyAppointmentModel(id: $id, memberId: $memberId, memberName: $memberName, email: $email, mobileNumber: $mobileNumber, departName: $departName, doctorId: $doctorId, doctorName: $doctorName, speciality: $speciality, branch: $branch, profileUrl: $profileUrl, busunitName: $busunitName, appointmentDateTime: $appointmentDateTime, idDoctor: $idDoctor, isCanceling: $isCanceling)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyAppointmentModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.memberId, memberId) &&
            const DeepCollectionEquality()
                .equals(other.memberName, memberName) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.mobileNumber, mobileNumber) &&
            const DeepCollectionEquality()
                .equals(other.departName, departName) &&
            const DeepCollectionEquality().equals(other.doctorId, doctorId) &&
            const DeepCollectionEquality()
                .equals(other.doctorName, doctorName) &&
            const DeepCollectionEquality()
                .equals(other.speciality, speciality) &&
            const DeepCollectionEquality().equals(other.branch, branch) &&
            const DeepCollectionEquality()
                .equals(other.profileUrl, profileUrl) &&
            const DeepCollectionEquality()
                .equals(other.busunitName, busunitName) &&
            const DeepCollectionEquality()
                .equals(other.appointmentDateTime, appointmentDateTime) &&
            const DeepCollectionEquality().equals(other.idDoctor, idDoctor) &&
            const DeepCollectionEquality()
                .equals(other.isCanceling, isCanceling));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(memberId),
      const DeepCollectionEquality().hash(memberName),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(mobileNumber),
      const DeepCollectionEquality().hash(departName),
      const DeepCollectionEquality().hash(doctorId),
      const DeepCollectionEquality().hash(doctorName),
      const DeepCollectionEquality().hash(speciality),
      const DeepCollectionEquality().hash(branch),
      const DeepCollectionEquality().hash(profileUrl),
      const DeepCollectionEquality().hash(busunitName),
      const DeepCollectionEquality().hash(appointmentDateTime),
      const DeepCollectionEquality().hash(idDoctor),
      const DeepCollectionEquality().hash(isCanceling));

  @JsonKey(ignore: true)
  @override
  _$$_MyAppointmentModelCopyWith<_$_MyAppointmentModel> get copyWith =>
      __$$_MyAppointmentModelCopyWithImpl<_$_MyAppointmentModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyAppointmentModelToJson(
      this,
    );
  }
}

abstract class _MyAppointmentModel implements MyAppointmentModel {
  const factory _MyAppointmentModel(
      {@JsonKey(name: 'Id') required final int id,
      @JsonKey(name: 'id_customer') required final int memberId,
      @JsonKey(name: 'customer_name') required final String memberName,
      @JsonKey(name: 'email') required final String email,
      @JsonKey(name: 'mobile_no') required final String mobileNumber,
      @JsonKey(name: 'dept_name') required final String departName,
      @JsonKey(name: 'employee_id') required final String doctorId,
      @JsonKey(name: 'employee_name') required final String doctorName,
      @JsonKey(name: 'speciality') required final String speciality,
      @JsonKey(name: 'branch') required final String branch,
      @JsonKey(name: 'profileurl') required final String profileUrl,
      @JsonKey(name: 'busunit_name') required final String busunitName,
      @JsonKey(name: 'Appmnt_Dttm') required final DateTime appointmentDateTime,
      @JsonKey(name: 'id_employee') required final int idDoctor,
      final bool isCanceling}) = _$_MyAppointmentModel;

  factory _MyAppointmentModel.fromJson(Map<String, dynamic> json) =
      _$_MyAppointmentModel.fromJson;

  @override
  @JsonKey(name: 'Id')
  int get id;
  @override
  @JsonKey(name: 'id_customer')
  int get memberId;
  @override
  @JsonKey(name: 'customer_name')
  String get memberName;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'mobile_no')
  String get mobileNumber;
  @override
  @JsonKey(name: 'dept_name')
  String get departName;
  @override
  @JsonKey(name: 'employee_id')
  String get doctorId;
  @override
  @JsonKey(name: 'employee_name')
  String get doctorName;
  @override
  @JsonKey(name: 'speciality')
  String get speciality;
  @override
  @JsonKey(name: 'branch')
  String get branch;
  @override
  @JsonKey(name: 'profileurl')
  String get profileUrl;
  @override
  @JsonKey(name: 'busunit_name')
  String get busunitName;
  @override
  @JsonKey(name: 'Appmnt_Dttm')
  DateTime get appointmentDateTime;
  @override
  @JsonKey(name: 'id_employee')
  int get idDoctor;
  @override
  bool get isCanceling;
  @override
  @JsonKey(ignore: true)
  _$$_MyAppointmentModelCopyWith<_$_MyAppointmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
