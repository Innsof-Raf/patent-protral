// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'member_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemberModel _$MemberModelFromJson(Map<String, dynamic> json) {
  return _MemberModel.fromJson(json);
}

/// @nodoc
mixin _$MemberModel {
  @JsonKey(name: "Id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "Name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "MobileNo")
  String? get mobileNo => throw _privateConstructorUsedError;
  @JsonKey(name: "EmailID")
  String? get emailId => throw _privateConstructorUsedError;
  @JsonKey(name: "Age")
  String get age => throw _privateConstructorUsedError;
  @JsonKey(name: "SSN")
  String get nationalId => throw _privateConstructorUsedError;
  @JsonKey(name: "Profile_Img")
  String? get profileImage => throw _privateConstructorUsedError;
  @JsonKey(name: "Is_Insu")
  bool get isInsurance => throw _privateConstructorUsedError;
  @JsonKey(name: "Is_InsuExpired")
  bool get isInsuranceExpired => throw _privateConstructorUsedError;
  @JsonKey(name: "Insur_Exp")
  DateTime? get insuranceExpDttm => throw _privateConstructorUsedError;
  @JsonKey(name: "Dob")
  DateTime? get dob => throw _privateConstructorUsedError;
  @JsonKey(name: "member_no")
  String? get memberNo => throw _privateConstructorUsedError;
  @JsonKey(name: "insur_name")
  String? get insuranceName => throw _privateConstructorUsedError;
  @JsonKey(name: "insu_id")
  int? get insuranceId => throw _privateConstructorUsedError;
  @JsonKey(name: "Gender")
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'docs')
  List<MmemberDocumentModel> get memberDocs =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberModelCopyWith<MemberModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberModelCopyWith<$Res> {
  factory $MemberModelCopyWith(
          MemberModel value, $Res Function(MemberModel) then) =
      _$MemberModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "Id") int id,
      @JsonKey(name: "Name") String name,
      @JsonKey(name: "MobileNo") String? mobileNo,
      @JsonKey(name: "EmailID") String? emailId,
      @JsonKey(name: "Age") String age,
      @JsonKey(name: "SSN") String nationalId,
      @JsonKey(name: "Profile_Img") String? profileImage,
      @JsonKey(name: "Is_Insu") bool isInsurance,
      @JsonKey(name: "Is_InsuExpired") bool isInsuranceExpired,
      @JsonKey(name: "Insur_Exp") DateTime? insuranceExpDttm,
      @JsonKey(name: "Dob") DateTime? dob,
      @JsonKey(name: "member_no") String? memberNo,
      @JsonKey(name: "insur_name") String? insuranceName,
      @JsonKey(name: "insu_id") int? insuranceId,
      @JsonKey(name: "Gender") String? gender,
      @JsonKey(name: 'docs') List<MmemberDocumentModel> memberDocs});
}

/// @nodoc
class _$MemberModelCopyWithImpl<$Res> implements $MemberModelCopyWith<$Res> {
  _$MemberModelCopyWithImpl(this._value, this._then);

  final MemberModel _value;
  // ignore: unused_field
  final $Res Function(MemberModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? mobileNo = freezed,
    Object? emailId = freezed,
    Object? age = freezed,
    Object? nationalId = freezed,
    Object? profileImage = freezed,
    Object? isInsurance = freezed,
    Object? isInsuranceExpired = freezed,
    Object? insuranceExpDttm = freezed,
    Object? dob = freezed,
    Object? memberNo = freezed,
    Object? insuranceName = freezed,
    Object? insuranceId = freezed,
    Object? gender = freezed,
    Object? memberDocs = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNo: mobileNo == freezed
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String?,
      emailId: emailId == freezed
          ? _value.emailId
          : emailId // ignore: cast_nullable_to_non_nullable
              as String?,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
      nationalId: nationalId == freezed
          ? _value.nationalId
          : nationalId // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: profileImage == freezed
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      isInsurance: isInsurance == freezed
          ? _value.isInsurance
          : isInsurance // ignore: cast_nullable_to_non_nullable
              as bool,
      isInsuranceExpired: isInsuranceExpired == freezed
          ? _value.isInsuranceExpired
          : isInsuranceExpired // ignore: cast_nullable_to_non_nullable
              as bool,
      insuranceExpDttm: insuranceExpDttm == freezed
          ? _value.insuranceExpDttm
          : insuranceExpDttm // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dob: dob == freezed
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      memberNo: memberNo == freezed
          ? _value.memberNo
          : memberNo // ignore: cast_nullable_to_non_nullable
              as String?,
      insuranceName: insuranceName == freezed
          ? _value.insuranceName
          : insuranceName // ignore: cast_nullable_to_non_nullable
              as String?,
      insuranceId: insuranceId == freezed
          ? _value.insuranceId
          : insuranceId // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      memberDocs: memberDocs == freezed
          ? _value.memberDocs
          : memberDocs // ignore: cast_nullable_to_non_nullable
              as List<MmemberDocumentModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_MemberModelCopyWith<$Res>
    implements $MemberModelCopyWith<$Res> {
  factory _$$_MemberModelCopyWith(
          _$_MemberModel value, $Res Function(_$_MemberModel) then) =
      __$$_MemberModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "Id") int id,
      @JsonKey(name: "Name") String name,
      @JsonKey(name: "MobileNo") String? mobileNo,
      @JsonKey(name: "EmailID") String? emailId,
      @JsonKey(name: "Age") String age,
      @JsonKey(name: "SSN") String nationalId,
      @JsonKey(name: "Profile_Img") String? profileImage,
      @JsonKey(name: "Is_Insu") bool isInsurance,
      @JsonKey(name: "Is_InsuExpired") bool isInsuranceExpired,
      @JsonKey(name: "Insur_Exp") DateTime? insuranceExpDttm,
      @JsonKey(name: "Dob") DateTime? dob,
      @JsonKey(name: "member_no") String? memberNo,
      @JsonKey(name: "insur_name") String? insuranceName,
      @JsonKey(name: "insu_id") int? insuranceId,
      @JsonKey(name: "Gender") String? gender,
      @JsonKey(name: 'docs') List<MmemberDocumentModel> memberDocs});
}

/// @nodoc
class __$$_MemberModelCopyWithImpl<$Res> extends _$MemberModelCopyWithImpl<$Res>
    implements _$$_MemberModelCopyWith<$Res> {
  __$$_MemberModelCopyWithImpl(
      _$_MemberModel _value, $Res Function(_$_MemberModel) _then)
      : super(_value, (v) => _then(v as _$_MemberModel));

  @override
  _$_MemberModel get _value => super._value as _$_MemberModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? mobileNo = freezed,
    Object? emailId = freezed,
    Object? age = freezed,
    Object? nationalId = freezed,
    Object? profileImage = freezed,
    Object? isInsurance = freezed,
    Object? isInsuranceExpired = freezed,
    Object? insuranceExpDttm = freezed,
    Object? dob = freezed,
    Object? memberNo = freezed,
    Object? insuranceName = freezed,
    Object? insuranceId = freezed,
    Object? gender = freezed,
    Object? memberDocs = freezed,
  }) {
    return _then(_$_MemberModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNo: mobileNo == freezed
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String?,
      emailId: emailId == freezed
          ? _value.emailId
          : emailId // ignore: cast_nullable_to_non_nullable
              as String?,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
      nationalId: nationalId == freezed
          ? _value.nationalId
          : nationalId // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: profileImage == freezed
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      isInsurance: isInsurance == freezed
          ? _value.isInsurance
          : isInsurance // ignore: cast_nullable_to_non_nullable
              as bool,
      isInsuranceExpired: isInsuranceExpired == freezed
          ? _value.isInsuranceExpired
          : isInsuranceExpired // ignore: cast_nullable_to_non_nullable
              as bool,
      insuranceExpDttm: insuranceExpDttm == freezed
          ? _value.insuranceExpDttm
          : insuranceExpDttm // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dob: dob == freezed
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      memberNo: memberNo == freezed
          ? _value.memberNo
          : memberNo // ignore: cast_nullable_to_non_nullable
              as String?,
      insuranceName: insuranceName == freezed
          ? _value.insuranceName
          : insuranceName // ignore: cast_nullable_to_non_nullable
              as String?,
      insuranceId: insuranceId == freezed
          ? _value.insuranceId
          : insuranceId // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      memberDocs: memberDocs == freezed
          ? _value._memberDocs
          : memberDocs // ignore: cast_nullable_to_non_nullable
              as List<MmemberDocumentModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MemberModel implements _MemberModel {
  const _$_MemberModel(
      {@JsonKey(name: "Id")
          required this.id,
      @JsonKey(name: "Name")
          required this.name,
      @JsonKey(name: "MobileNo")
          this.mobileNo = null,
      @JsonKey(name: "EmailID")
          this.emailId = null,
      @JsonKey(name: "Age")
          required this.age,
      @JsonKey(name: "SSN")
          required this.nationalId,
      @JsonKey(name: "Profile_Img")
          this.profileImage = null,
      @JsonKey(name: "Is_Insu")
          required this.isInsurance,
      @JsonKey(name: "Is_InsuExpired")
          required this.isInsuranceExpired,
      @JsonKey(name: "Insur_Exp")
          this.insuranceExpDttm = null,
      @JsonKey(name: "Dob")
          this.dob = null,
      @JsonKey(name: "member_no")
          this.memberNo = null,
      @JsonKey(name: "insur_name")
          this.insuranceName = null,
      @JsonKey(name: "insu_id")
          this.insuranceId = null,
      @JsonKey(name: "Gender")
          this.gender = null,
      @JsonKey(name: 'docs')
          final List<MmemberDocumentModel> memberDocs = const []})
      : _memberDocs = memberDocs;

  factory _$_MemberModel.fromJson(Map<String, dynamic> json) =>
      _$$_MemberModelFromJson(json);

  @override
  @JsonKey(name: "Id")
  final int id;
  @override
  @JsonKey(name: "Name")
  final String name;
  @override
  @JsonKey(name: "MobileNo")
  final String? mobileNo;
  @override
  @JsonKey(name: "EmailID")
  final String? emailId;
  @override
  @JsonKey(name: "Age")
  final String age;
  @override
  @JsonKey(name: "SSN")
  final String nationalId;
  @override
  @JsonKey(name: "Profile_Img")
  final String? profileImage;
  @override
  @JsonKey(name: "Is_Insu")
  final bool isInsurance;
  @override
  @JsonKey(name: "Is_InsuExpired")
  final bool isInsuranceExpired;
  @override
  @JsonKey(name: "Insur_Exp")
  final DateTime? insuranceExpDttm;
  @override
  @JsonKey(name: "Dob")
  final DateTime? dob;
  @override
  @JsonKey(name: "member_no")
  final String? memberNo;
  @override
  @JsonKey(name: "insur_name")
  final String? insuranceName;
  @override
  @JsonKey(name: "insu_id")
  final int? insuranceId;
  @override
  @JsonKey(name: "Gender")
  final String? gender;
  final List<MmemberDocumentModel> _memberDocs;
  @override
  @JsonKey(name: 'docs')
  List<MmemberDocumentModel> get memberDocs {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_memberDocs);
  }

  @override
  String toString() {
    return 'MemberModel(id: $id, name: $name, mobileNo: $mobileNo, emailId: $emailId, age: $age, nationalId: $nationalId, profileImage: $profileImage, isInsurance: $isInsurance, isInsuranceExpired: $isInsuranceExpired, insuranceExpDttm: $insuranceExpDttm, dob: $dob, memberNo: $memberNo, insuranceName: $insuranceName, insuranceId: $insuranceId, gender: $gender, memberDocs: $memberDocs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemberModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.mobileNo, mobileNo) &&
            const DeepCollectionEquality().equals(other.emailId, emailId) &&
            const DeepCollectionEquality().equals(other.age, age) &&
            const DeepCollectionEquality()
                .equals(other.nationalId, nationalId) &&
            const DeepCollectionEquality()
                .equals(other.profileImage, profileImage) &&
            const DeepCollectionEquality()
                .equals(other.isInsurance, isInsurance) &&
            const DeepCollectionEquality()
                .equals(other.isInsuranceExpired, isInsuranceExpired) &&
            const DeepCollectionEquality()
                .equals(other.insuranceExpDttm, insuranceExpDttm) &&
            const DeepCollectionEquality().equals(other.dob, dob) &&
            const DeepCollectionEquality().equals(other.memberNo, memberNo) &&
            const DeepCollectionEquality()
                .equals(other.insuranceName, insuranceName) &&
            const DeepCollectionEquality()
                .equals(other.insuranceId, insuranceId) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality()
                .equals(other._memberDocs, _memberDocs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(mobileNo),
      const DeepCollectionEquality().hash(emailId),
      const DeepCollectionEquality().hash(age),
      const DeepCollectionEquality().hash(nationalId),
      const DeepCollectionEquality().hash(profileImage),
      const DeepCollectionEquality().hash(isInsurance),
      const DeepCollectionEquality().hash(isInsuranceExpired),
      const DeepCollectionEquality().hash(insuranceExpDttm),
      const DeepCollectionEquality().hash(dob),
      const DeepCollectionEquality().hash(memberNo),
      const DeepCollectionEquality().hash(insuranceName),
      const DeepCollectionEquality().hash(insuranceId),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(_memberDocs));

  @JsonKey(ignore: true)
  @override
  _$$_MemberModelCopyWith<_$_MemberModel> get copyWith =>
      __$$_MemberModelCopyWithImpl<_$_MemberModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemberModelToJson(
      this,
    );
  }
}

abstract class _MemberModel implements MemberModel {
  const factory _MemberModel(
      {@JsonKey(name: "Id")
          required final int id,
      @JsonKey(name: "Name")
          required final String name,
      @JsonKey(name: "MobileNo")
          final String? mobileNo,
      @JsonKey(name: "EmailID")
          final String? emailId,
      @JsonKey(name: "Age")
          required final String age,
      @JsonKey(name: "SSN")
          required final String nationalId,
      @JsonKey(name: "Profile_Img")
          final String? profileImage,
      @JsonKey(name: "Is_Insu")
          required final bool isInsurance,
      @JsonKey(name: "Is_InsuExpired")
          required final bool isInsuranceExpired,
      @JsonKey(name: "Insur_Exp")
          final DateTime? insuranceExpDttm,
      @JsonKey(name: "Dob")
          final DateTime? dob,
      @JsonKey(name: "member_no")
          final String? memberNo,
      @JsonKey(name: "insur_name")
          final String? insuranceName,
      @JsonKey(name: "insu_id")
          final int? insuranceId,
      @JsonKey(name: "Gender")
          final String? gender,
      @JsonKey(name: 'docs')
          final List<MmemberDocumentModel> memberDocs}) = _$_MemberModel;

  factory _MemberModel.fromJson(Map<String, dynamic> json) =
      _$_MemberModel.fromJson;

  @override
  @JsonKey(name: "Id")
  int get id;
  @override
  @JsonKey(name: "Name")
  String get name;
  @override
  @JsonKey(name: "MobileNo")
  String? get mobileNo;
  @override
  @JsonKey(name: "EmailID")
  String? get emailId;
  @override
  @JsonKey(name: "Age")
  String get age;
  @override
  @JsonKey(name: "SSN")
  String get nationalId;
  @override
  @JsonKey(name: "Profile_Img")
  String? get profileImage;
  @override
  @JsonKey(name: "Is_Insu")
  bool get isInsurance;
  @override
  @JsonKey(name: "Is_InsuExpired")
  bool get isInsuranceExpired;
  @override
  @JsonKey(name: "Insur_Exp")
  DateTime? get insuranceExpDttm;
  @override
  @JsonKey(name: "Dob")
  DateTime? get dob;
  @override
  @JsonKey(name: "member_no")
  String? get memberNo;
  @override
  @JsonKey(name: "insur_name")
  String? get insuranceName;
  @override
  @JsonKey(name: "insu_id")
  int? get insuranceId;
  @override
  @JsonKey(name: "Gender")
  String? get gender;
  @override
  @JsonKey(name: 'docs')
  List<MmemberDocumentModel> get memberDocs;
  @override
  @JsonKey(ignore: true)
  _$$_MemberModelCopyWith<_$_MemberModel> get copyWith =>
      throw _privateConstructorUsedError;
}
