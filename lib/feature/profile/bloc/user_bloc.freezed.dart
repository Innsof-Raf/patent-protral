// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) storeUserDetails,
    required TResult Function(
            String patientName,
            String nationalId,
            String? email,
            String gender,
            DateTime dob,
            int? idInsurance,
            String? memberNumber,
            File? profileImage,
            DateTime? expireDate,
            String? otherInsuranceName)
        addMember,
    required TResult Function(int idInsurance, int memberId,
            String? insuranceName, String memberNumber, DateTime expireDate)
        changememberInsuranceDetails,
    required TResult Function() changeMemberAddingSateToInitial,
    required TResult Function(int memberId) getMemberDetail,
    required TResult Function() logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel user)? storeUserDetails,
    TResult Function(
            String patientName,
            String nationalId,
            String? email,
            String gender,
            DateTime dob,
            int? idInsurance,
            String? memberNumber,
            File? profileImage,
            DateTime? expireDate,
            String? otherInsuranceName)?
        addMember,
    TResult Function(int idInsurance, int memberId, String? insuranceName,
            String memberNumber, DateTime expireDate)?
        changememberInsuranceDetails,
    TResult Function()? changeMemberAddingSateToInitial,
    TResult Function(int memberId)? getMemberDetail,
    TResult Function()? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? storeUserDetails,
    TResult Function(
            String patientName,
            String nationalId,
            String? email,
            String gender,
            DateTime dob,
            int? idInsurance,
            String? memberNumber,
            File? profileImage,
            DateTime? expireDate,
            String? otherInsuranceName)?
        addMember,
    TResult Function(int idInsurance, int memberId, String? insuranceName,
            String memberNumber, DateTime expireDate)?
        changememberInsuranceDetails,
    TResult Function()? changeMemberAddingSateToInitial,
    TResult Function(int memberId)? getMemberDetail,
    TResult Function()? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreUserDetails value) storeUserDetails,
    required TResult Function(AddMember value) addMember,
    required TResult Function(ChangememberInsuranceDetails value)
        changememberInsuranceDetails,
    required TResult Function(ChangeMemberAddingSateToInitial value)
        changeMemberAddingSateToInitial,
    required TResult Function(GetMemberDetail value) getMemberDetail,
    required TResult Function(LogOut value) logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreUserDetails value)? storeUserDetails,
    TResult Function(AddMember value)? addMember,
    TResult Function(ChangememberInsuranceDetails value)?
        changememberInsuranceDetails,
    TResult Function(ChangeMemberAddingSateToInitial value)?
        changeMemberAddingSateToInitial,
    TResult Function(GetMemberDetail value)? getMemberDetail,
    TResult Function(LogOut value)? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreUserDetails value)? storeUserDetails,
    TResult Function(AddMember value)? addMember,
    TResult Function(ChangememberInsuranceDetails value)?
        changememberInsuranceDetails,
    TResult Function(ChangeMemberAddingSateToInitial value)?
        changeMemberAddingSateToInitial,
    TResult Function(GetMemberDetail value)? getMemberDetail,
    TResult Function(LogOut value)? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res> implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  final UserEvent _value;
  // ignore: unused_field
  final $Res Function(UserEvent) _then;
}

/// @nodoc
abstract class _$$StoreUserDetailsCopyWith<$Res> {
  factory _$$StoreUserDetailsCopyWith(
          _$StoreUserDetails value, $Res Function(_$StoreUserDetails) then) =
      __$$StoreUserDetailsCopyWithImpl<$Res>;
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$StoreUserDetailsCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements _$$StoreUserDetailsCopyWith<$Res> {
  __$$StoreUserDetailsCopyWithImpl(
      _$StoreUserDetails _value, $Res Function(_$StoreUserDetails) _then)
      : super(_value, (v) => _then(v as _$StoreUserDetails));

  @override
  _$StoreUserDetails get _value => super._value as _$StoreUserDetails;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$StoreUserDetails(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  @override
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$StoreUserDetails implements StoreUserDetails {
  const _$StoreUserDetails({required this.user});

  @override
  final UserModel user;

  @override
  String toString() {
    return 'UserEvent.storeUserDetails(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreUserDetails &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$StoreUserDetailsCopyWith<_$StoreUserDetails> get copyWith =>
      __$$StoreUserDetailsCopyWithImpl<_$StoreUserDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) storeUserDetails,
    required TResult Function(
            String patientName,
            String nationalId,
            String? email,
            String gender,
            DateTime dob,
            int? idInsurance,
            String? memberNumber,
            File? profileImage,
            DateTime? expireDate,
            String? otherInsuranceName)
        addMember,
    required TResult Function(int idInsurance, int memberId,
            String? insuranceName, String memberNumber, DateTime expireDate)
        changememberInsuranceDetails,
    required TResult Function() changeMemberAddingSateToInitial,
    required TResult Function(int memberId) getMemberDetail,
    required TResult Function() logOut,
  }) {
    return storeUserDetails(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel user)? storeUserDetails,
    TResult Function(
            String patientName,
            String nationalId,
            String? email,
            String gender,
            DateTime dob,
            int? idInsurance,
            String? memberNumber,
            File? profileImage,
            DateTime? expireDate,
            String? otherInsuranceName)?
        addMember,
    TResult Function(int idInsurance, int memberId, String? insuranceName,
            String memberNumber, DateTime expireDate)?
        changememberInsuranceDetails,
    TResult Function()? changeMemberAddingSateToInitial,
    TResult Function(int memberId)? getMemberDetail,
    TResult Function()? logOut,
  }) {
    return storeUserDetails?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? storeUserDetails,
    TResult Function(
            String patientName,
            String nationalId,
            String? email,
            String gender,
            DateTime dob,
            int? idInsurance,
            String? memberNumber,
            File? profileImage,
            DateTime? expireDate,
            String? otherInsuranceName)?
        addMember,
    TResult Function(int idInsurance, int memberId, String? insuranceName,
            String memberNumber, DateTime expireDate)?
        changememberInsuranceDetails,
    TResult Function()? changeMemberAddingSateToInitial,
    TResult Function(int memberId)? getMemberDetail,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (storeUserDetails != null) {
      return storeUserDetails(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreUserDetails value) storeUserDetails,
    required TResult Function(AddMember value) addMember,
    required TResult Function(ChangememberInsuranceDetails value)
        changememberInsuranceDetails,
    required TResult Function(ChangeMemberAddingSateToInitial value)
        changeMemberAddingSateToInitial,
    required TResult Function(GetMemberDetail value) getMemberDetail,
    required TResult Function(LogOut value) logOut,
  }) {
    return storeUserDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreUserDetails value)? storeUserDetails,
    TResult Function(AddMember value)? addMember,
    TResult Function(ChangememberInsuranceDetails value)?
        changememberInsuranceDetails,
    TResult Function(ChangeMemberAddingSateToInitial value)?
        changeMemberAddingSateToInitial,
    TResult Function(GetMemberDetail value)? getMemberDetail,
    TResult Function(LogOut value)? logOut,
  }) {
    return storeUserDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreUserDetails value)? storeUserDetails,
    TResult Function(AddMember value)? addMember,
    TResult Function(ChangememberInsuranceDetails value)?
        changememberInsuranceDetails,
    TResult Function(ChangeMemberAddingSateToInitial value)?
        changeMemberAddingSateToInitial,
    TResult Function(GetMemberDetail value)? getMemberDetail,
    TResult Function(LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (storeUserDetails != null) {
      return storeUserDetails(this);
    }
    return orElse();
  }
}

abstract class StoreUserDetails implements UserEvent {
  const factory StoreUserDetails({required final UserModel user}) =
      _$StoreUserDetails;

  UserModel get user;
  @JsonKey(ignore: true)
  _$$StoreUserDetailsCopyWith<_$StoreUserDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddMemberCopyWith<$Res> {
  factory _$$AddMemberCopyWith(
          _$AddMember value, $Res Function(_$AddMember) then) =
      __$$AddMemberCopyWithImpl<$Res>;
  $Res call(
      {String patientName,
      String nationalId,
      String? email,
      String gender,
      DateTime dob,
      int? idInsurance,
      String? memberNumber,
      File? profileImage,
      DateTime? expireDate,
      String? otherInsuranceName});
}

/// @nodoc
class __$$AddMemberCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements _$$AddMemberCopyWith<$Res> {
  __$$AddMemberCopyWithImpl(
      _$AddMember _value, $Res Function(_$AddMember) _then)
      : super(_value, (v) => _then(v as _$AddMember));

  @override
  _$AddMember get _value => super._value as _$AddMember;

  @override
  $Res call({
    Object? patientName = freezed,
    Object? nationalId = freezed,
    Object? email = freezed,
    Object? gender = freezed,
    Object? dob = freezed,
    Object? idInsurance = freezed,
    Object? memberNumber = freezed,
    Object? profileImage = freezed,
    Object? expireDate = freezed,
    Object? otherInsuranceName = freezed,
  }) {
    return _then(_$AddMember(
      patientName: patientName == freezed
          ? _value.patientName
          : patientName // ignore: cast_nullable_to_non_nullable
              as String,
      nationalId: nationalId == freezed
          ? _value.nationalId
          : nationalId // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      dob: dob == freezed
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as DateTime,
      idInsurance: idInsurance == freezed
          ? _value.idInsurance
          : idInsurance // ignore: cast_nullable_to_non_nullable
              as int?,
      memberNumber: memberNumber == freezed
          ? _value.memberNumber
          : memberNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: profileImage == freezed
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as File?,
      expireDate: expireDate == freezed
          ? _value.expireDate
          : expireDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      otherInsuranceName: otherInsuranceName == freezed
          ? _value.otherInsuranceName
          : otherInsuranceName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddMember implements AddMember {
  const _$AddMember(
      {required this.patientName,
      required this.nationalId,
      this.email,
      required this.gender,
      required this.dob,
      this.idInsurance,
      this.memberNumber,
      this.profileImage,
      this.expireDate,
      this.otherInsuranceName});

  @override
  final String patientName;
  @override
  final String nationalId;
  @override
  final String? email;
  @override
  final String gender;
  @override
  final DateTime dob;
  @override
  final int? idInsurance;
  @override
  final String? memberNumber;
  @override
  final File? profileImage;
  @override
  final DateTime? expireDate;
  @override
  final String? otherInsuranceName;

  @override
  String toString() {
    return 'UserEvent.addMember(patientName: $patientName, nationalId: $nationalId, email: $email, gender: $gender, dob: $dob, idInsurance: $idInsurance, memberNumber: $memberNumber, profileImage: $profileImage, expireDate: $expireDate, otherInsuranceName: $otherInsuranceName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddMember &&
            const DeepCollectionEquality()
                .equals(other.patientName, patientName) &&
            const DeepCollectionEquality()
                .equals(other.nationalId, nationalId) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.dob, dob) &&
            const DeepCollectionEquality()
                .equals(other.idInsurance, idInsurance) &&
            const DeepCollectionEquality()
                .equals(other.memberNumber, memberNumber) &&
            const DeepCollectionEquality()
                .equals(other.profileImage, profileImage) &&
            const DeepCollectionEquality()
                .equals(other.expireDate, expireDate) &&
            const DeepCollectionEquality()
                .equals(other.otherInsuranceName, otherInsuranceName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(patientName),
      const DeepCollectionEquality().hash(nationalId),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(dob),
      const DeepCollectionEquality().hash(idInsurance),
      const DeepCollectionEquality().hash(memberNumber),
      const DeepCollectionEquality().hash(profileImage),
      const DeepCollectionEquality().hash(expireDate),
      const DeepCollectionEquality().hash(otherInsuranceName));

  @JsonKey(ignore: true)
  @override
  _$$AddMemberCopyWith<_$AddMember> get copyWith =>
      __$$AddMemberCopyWithImpl<_$AddMember>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) storeUserDetails,
    required TResult Function(
            String patientName,
            String nationalId,
            String? email,
            String gender,
            DateTime dob,
            int? idInsurance,
            String? memberNumber,
            File? profileImage,
            DateTime? expireDate,
            String? otherInsuranceName)
        addMember,
    required TResult Function(int idInsurance, int memberId,
            String? insuranceName, String memberNumber, DateTime expireDate)
        changememberInsuranceDetails,
    required TResult Function() changeMemberAddingSateToInitial,
    required TResult Function(int memberId) getMemberDetail,
    required TResult Function() logOut,
  }) {
    return addMember(patientName, nationalId, email, gender, dob, idInsurance,
        memberNumber, profileImage, expireDate, otherInsuranceName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel user)? storeUserDetails,
    TResult Function(
            String patientName,
            String nationalId,
            String? email,
            String gender,
            DateTime dob,
            int? idInsurance,
            String? memberNumber,
            File? profileImage,
            DateTime? expireDate,
            String? otherInsuranceName)?
        addMember,
    TResult Function(int idInsurance, int memberId, String? insuranceName,
            String memberNumber, DateTime expireDate)?
        changememberInsuranceDetails,
    TResult Function()? changeMemberAddingSateToInitial,
    TResult Function(int memberId)? getMemberDetail,
    TResult Function()? logOut,
  }) {
    return addMember?.call(
        patientName,
        nationalId,
        email,
        gender,
        dob,
        idInsurance,
        memberNumber,
        profileImage,
        expireDate,
        otherInsuranceName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? storeUserDetails,
    TResult Function(
            String patientName,
            String nationalId,
            String? email,
            String gender,
            DateTime dob,
            int? idInsurance,
            String? memberNumber,
            File? profileImage,
            DateTime? expireDate,
            String? otherInsuranceName)?
        addMember,
    TResult Function(int idInsurance, int memberId, String? insuranceName,
            String memberNumber, DateTime expireDate)?
        changememberInsuranceDetails,
    TResult Function()? changeMemberAddingSateToInitial,
    TResult Function(int memberId)? getMemberDetail,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (addMember != null) {
      return addMember(patientName, nationalId, email, gender, dob, idInsurance,
          memberNumber, profileImage, expireDate, otherInsuranceName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreUserDetails value) storeUserDetails,
    required TResult Function(AddMember value) addMember,
    required TResult Function(ChangememberInsuranceDetails value)
        changememberInsuranceDetails,
    required TResult Function(ChangeMemberAddingSateToInitial value)
        changeMemberAddingSateToInitial,
    required TResult Function(GetMemberDetail value) getMemberDetail,
    required TResult Function(LogOut value) logOut,
  }) {
    return addMember(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreUserDetails value)? storeUserDetails,
    TResult Function(AddMember value)? addMember,
    TResult Function(ChangememberInsuranceDetails value)?
        changememberInsuranceDetails,
    TResult Function(ChangeMemberAddingSateToInitial value)?
        changeMemberAddingSateToInitial,
    TResult Function(GetMemberDetail value)? getMemberDetail,
    TResult Function(LogOut value)? logOut,
  }) {
    return addMember?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreUserDetails value)? storeUserDetails,
    TResult Function(AddMember value)? addMember,
    TResult Function(ChangememberInsuranceDetails value)?
        changememberInsuranceDetails,
    TResult Function(ChangeMemberAddingSateToInitial value)?
        changeMemberAddingSateToInitial,
    TResult Function(GetMemberDetail value)? getMemberDetail,
    TResult Function(LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (addMember != null) {
      return addMember(this);
    }
    return orElse();
  }
}

abstract class AddMember implements UserEvent {
  const factory AddMember(
      {required final String patientName,
      required final String nationalId,
      final String? email,
      required final String gender,
      required final DateTime dob,
      final int? idInsurance,
      final String? memberNumber,
      final File? profileImage,
      final DateTime? expireDate,
      final String? otherInsuranceName}) = _$AddMember;

  String get patientName;
  String get nationalId;
  String? get email;
  String get gender;
  DateTime get dob;
  int? get idInsurance;
  String? get memberNumber;
  File? get profileImage;
  DateTime? get expireDate;
  String? get otherInsuranceName;
  @JsonKey(ignore: true)
  _$$AddMemberCopyWith<_$AddMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangememberInsuranceDetailsCopyWith<$Res> {
  factory _$$ChangememberInsuranceDetailsCopyWith(
          _$ChangememberInsuranceDetails value,
          $Res Function(_$ChangememberInsuranceDetails) then) =
      __$$ChangememberInsuranceDetailsCopyWithImpl<$Res>;
  $Res call(
      {int idInsurance,
      int memberId,
      String? insuranceName,
      String memberNumber,
      DateTime expireDate});
}

/// @nodoc
class __$$ChangememberInsuranceDetailsCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements _$$ChangememberInsuranceDetailsCopyWith<$Res> {
  __$$ChangememberInsuranceDetailsCopyWithImpl(
      _$ChangememberInsuranceDetails _value,
      $Res Function(_$ChangememberInsuranceDetails) _then)
      : super(_value, (v) => _then(v as _$ChangememberInsuranceDetails));

  @override
  _$ChangememberInsuranceDetails get _value =>
      super._value as _$ChangememberInsuranceDetails;

  @override
  $Res call({
    Object? idInsurance = freezed,
    Object? memberId = freezed,
    Object? insuranceName = freezed,
    Object? memberNumber = freezed,
    Object? expireDate = freezed,
  }) {
    return _then(_$ChangememberInsuranceDetails(
      idInsurance: idInsurance == freezed
          ? _value.idInsurance
          : idInsurance // ignore: cast_nullable_to_non_nullable
              as int,
      memberId: memberId == freezed
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      insuranceName: insuranceName == freezed
          ? _value.insuranceName
          : insuranceName // ignore: cast_nullable_to_non_nullable
              as String?,
      memberNumber: memberNumber == freezed
          ? _value.memberNumber
          : memberNumber // ignore: cast_nullable_to_non_nullable
              as String,
      expireDate: expireDate == freezed
          ? _value.expireDate
          : expireDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ChangememberInsuranceDetails implements ChangememberInsuranceDetails {
  const _$ChangememberInsuranceDetails(
      {required this.idInsurance,
      required this.memberId,
      required this.insuranceName,
      required this.memberNumber,
      required this.expireDate});

  @override
  final int idInsurance;
  @override
  final int memberId;
  @override
  final String? insuranceName;
  @override
  final String memberNumber;
  @override
  final DateTime expireDate;

  @override
  String toString() {
    return 'UserEvent.changememberInsuranceDetails(idInsurance: $idInsurance, memberId: $memberId, insuranceName: $insuranceName, memberNumber: $memberNumber, expireDate: $expireDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangememberInsuranceDetails &&
            const DeepCollectionEquality()
                .equals(other.idInsurance, idInsurance) &&
            const DeepCollectionEquality().equals(other.memberId, memberId) &&
            const DeepCollectionEquality()
                .equals(other.insuranceName, insuranceName) &&
            const DeepCollectionEquality()
                .equals(other.memberNumber, memberNumber) &&
            const DeepCollectionEquality()
                .equals(other.expireDate, expireDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idInsurance),
      const DeepCollectionEquality().hash(memberId),
      const DeepCollectionEquality().hash(insuranceName),
      const DeepCollectionEquality().hash(memberNumber),
      const DeepCollectionEquality().hash(expireDate));

  @JsonKey(ignore: true)
  @override
  _$$ChangememberInsuranceDetailsCopyWith<_$ChangememberInsuranceDetails>
      get copyWith => __$$ChangememberInsuranceDetailsCopyWithImpl<
          _$ChangememberInsuranceDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) storeUserDetails,
    required TResult Function(
            String patientName,
            String nationalId,
            String? email,
            String gender,
            DateTime dob,
            int? idInsurance,
            String? memberNumber,
            File? profileImage,
            DateTime? expireDate,
            String? otherInsuranceName)
        addMember,
    required TResult Function(int idInsurance, int memberId,
            String? insuranceName, String memberNumber, DateTime expireDate)
        changememberInsuranceDetails,
    required TResult Function() changeMemberAddingSateToInitial,
    required TResult Function(int memberId) getMemberDetail,
    required TResult Function() logOut,
  }) {
    return changememberInsuranceDetails(
        idInsurance, memberId, insuranceName, memberNumber, expireDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel user)? storeUserDetails,
    TResult Function(
            String patientName,
            String nationalId,
            String? email,
            String gender,
            DateTime dob,
            int? idInsurance,
            String? memberNumber,
            File? profileImage,
            DateTime? expireDate,
            String? otherInsuranceName)?
        addMember,
    TResult Function(int idInsurance, int memberId, String? insuranceName,
            String memberNumber, DateTime expireDate)?
        changememberInsuranceDetails,
    TResult Function()? changeMemberAddingSateToInitial,
    TResult Function(int memberId)? getMemberDetail,
    TResult Function()? logOut,
  }) {
    return changememberInsuranceDetails?.call(
        idInsurance, memberId, insuranceName, memberNumber, expireDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? storeUserDetails,
    TResult Function(
            String patientName,
            String nationalId,
            String? email,
            String gender,
            DateTime dob,
            int? idInsurance,
            String? memberNumber,
            File? profileImage,
            DateTime? expireDate,
            String? otherInsuranceName)?
        addMember,
    TResult Function(int idInsurance, int memberId, String? insuranceName,
            String memberNumber, DateTime expireDate)?
        changememberInsuranceDetails,
    TResult Function()? changeMemberAddingSateToInitial,
    TResult Function(int memberId)? getMemberDetail,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (changememberInsuranceDetails != null) {
      return changememberInsuranceDetails(
          idInsurance, memberId, insuranceName, memberNumber, expireDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreUserDetails value) storeUserDetails,
    required TResult Function(AddMember value) addMember,
    required TResult Function(ChangememberInsuranceDetails value)
        changememberInsuranceDetails,
    required TResult Function(ChangeMemberAddingSateToInitial value)
        changeMemberAddingSateToInitial,
    required TResult Function(GetMemberDetail value) getMemberDetail,
    required TResult Function(LogOut value) logOut,
  }) {
    return changememberInsuranceDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreUserDetails value)? storeUserDetails,
    TResult Function(AddMember value)? addMember,
    TResult Function(ChangememberInsuranceDetails value)?
        changememberInsuranceDetails,
    TResult Function(ChangeMemberAddingSateToInitial value)?
        changeMemberAddingSateToInitial,
    TResult Function(GetMemberDetail value)? getMemberDetail,
    TResult Function(LogOut value)? logOut,
  }) {
    return changememberInsuranceDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreUserDetails value)? storeUserDetails,
    TResult Function(AddMember value)? addMember,
    TResult Function(ChangememberInsuranceDetails value)?
        changememberInsuranceDetails,
    TResult Function(ChangeMemberAddingSateToInitial value)?
        changeMemberAddingSateToInitial,
    TResult Function(GetMemberDetail value)? getMemberDetail,
    TResult Function(LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (changememberInsuranceDetails != null) {
      return changememberInsuranceDetails(this);
    }
    return orElse();
  }
}

abstract class ChangememberInsuranceDetails implements UserEvent {
  const factory ChangememberInsuranceDetails(
      {required final int idInsurance,
      required final int memberId,
      required final String? insuranceName,
      required final String memberNumber,
      required final DateTime expireDate}) = _$ChangememberInsuranceDetails;

  int get idInsurance;
  int get memberId;
  String? get insuranceName;
  String get memberNumber;
  DateTime get expireDate;
  @JsonKey(ignore: true)
  _$$ChangememberInsuranceDetailsCopyWith<_$ChangememberInsuranceDetails>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeMemberAddingSateToInitialCopyWith<$Res> {
  factory _$$ChangeMemberAddingSateToInitialCopyWith(
          _$ChangeMemberAddingSateToInitial value,
          $Res Function(_$ChangeMemberAddingSateToInitial) then) =
      __$$ChangeMemberAddingSateToInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeMemberAddingSateToInitialCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements _$$ChangeMemberAddingSateToInitialCopyWith<$Res> {
  __$$ChangeMemberAddingSateToInitialCopyWithImpl(
      _$ChangeMemberAddingSateToInitial _value,
      $Res Function(_$ChangeMemberAddingSateToInitial) _then)
      : super(_value, (v) => _then(v as _$ChangeMemberAddingSateToInitial));

  @override
  _$ChangeMemberAddingSateToInitial get _value =>
      super._value as _$ChangeMemberAddingSateToInitial;
}

/// @nodoc

class _$ChangeMemberAddingSateToInitial
    implements ChangeMemberAddingSateToInitial {
  const _$ChangeMemberAddingSateToInitial();

  @override
  String toString() {
    return 'UserEvent.changeMemberAddingSateToInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeMemberAddingSateToInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) storeUserDetails,
    required TResult Function(
            String patientName,
            String nationalId,
            String? email,
            String gender,
            DateTime dob,
            int? idInsurance,
            String? memberNumber,
            File? profileImage,
            DateTime? expireDate,
            String? otherInsuranceName)
        addMember,
    required TResult Function(int idInsurance, int memberId,
            String? insuranceName, String memberNumber, DateTime expireDate)
        changememberInsuranceDetails,
    required TResult Function() changeMemberAddingSateToInitial,
    required TResult Function(int memberId) getMemberDetail,
    required TResult Function() logOut,
  }) {
    return changeMemberAddingSateToInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel user)? storeUserDetails,
    TResult Function(
            String patientName,
            String nationalId,
            String? email,
            String gender,
            DateTime dob,
            int? idInsurance,
            String? memberNumber,
            File? profileImage,
            DateTime? expireDate,
            String? otherInsuranceName)?
        addMember,
    TResult Function(int idInsurance, int memberId, String? insuranceName,
            String memberNumber, DateTime expireDate)?
        changememberInsuranceDetails,
    TResult Function()? changeMemberAddingSateToInitial,
    TResult Function(int memberId)? getMemberDetail,
    TResult Function()? logOut,
  }) {
    return changeMemberAddingSateToInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? storeUserDetails,
    TResult Function(
            String patientName,
            String nationalId,
            String? email,
            String gender,
            DateTime dob,
            int? idInsurance,
            String? memberNumber,
            File? profileImage,
            DateTime? expireDate,
            String? otherInsuranceName)?
        addMember,
    TResult Function(int idInsurance, int memberId, String? insuranceName,
            String memberNumber, DateTime expireDate)?
        changememberInsuranceDetails,
    TResult Function()? changeMemberAddingSateToInitial,
    TResult Function(int memberId)? getMemberDetail,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (changeMemberAddingSateToInitial != null) {
      return changeMemberAddingSateToInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreUserDetails value) storeUserDetails,
    required TResult Function(AddMember value) addMember,
    required TResult Function(ChangememberInsuranceDetails value)
        changememberInsuranceDetails,
    required TResult Function(ChangeMemberAddingSateToInitial value)
        changeMemberAddingSateToInitial,
    required TResult Function(GetMemberDetail value) getMemberDetail,
    required TResult Function(LogOut value) logOut,
  }) {
    return changeMemberAddingSateToInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreUserDetails value)? storeUserDetails,
    TResult Function(AddMember value)? addMember,
    TResult Function(ChangememberInsuranceDetails value)?
        changememberInsuranceDetails,
    TResult Function(ChangeMemberAddingSateToInitial value)?
        changeMemberAddingSateToInitial,
    TResult Function(GetMemberDetail value)? getMemberDetail,
    TResult Function(LogOut value)? logOut,
  }) {
    return changeMemberAddingSateToInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreUserDetails value)? storeUserDetails,
    TResult Function(AddMember value)? addMember,
    TResult Function(ChangememberInsuranceDetails value)?
        changememberInsuranceDetails,
    TResult Function(ChangeMemberAddingSateToInitial value)?
        changeMemberAddingSateToInitial,
    TResult Function(GetMemberDetail value)? getMemberDetail,
    TResult Function(LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (changeMemberAddingSateToInitial != null) {
      return changeMemberAddingSateToInitial(this);
    }
    return orElse();
  }
}

abstract class ChangeMemberAddingSateToInitial implements UserEvent {
  const factory ChangeMemberAddingSateToInitial() =
      _$ChangeMemberAddingSateToInitial;
}

/// @nodoc
abstract class _$$GetMemberDetailCopyWith<$Res> {
  factory _$$GetMemberDetailCopyWith(
          _$GetMemberDetail value, $Res Function(_$GetMemberDetail) then) =
      __$$GetMemberDetailCopyWithImpl<$Res>;
  $Res call({int memberId});
}

/// @nodoc
class __$$GetMemberDetailCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements _$$GetMemberDetailCopyWith<$Res> {
  __$$GetMemberDetailCopyWithImpl(
      _$GetMemberDetail _value, $Res Function(_$GetMemberDetail) _then)
      : super(_value, (v) => _then(v as _$GetMemberDetail));

  @override
  _$GetMemberDetail get _value => super._value as _$GetMemberDetail;

  @override
  $Res call({
    Object? memberId = freezed,
  }) {
    return _then(_$GetMemberDetail(
      memberId: memberId == freezed
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetMemberDetail implements GetMemberDetail {
  const _$GetMemberDetail({required this.memberId});

  @override
  final int memberId;

  @override
  String toString() {
    return 'UserEvent.getMemberDetail(memberId: $memberId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMemberDetail &&
            const DeepCollectionEquality().equals(other.memberId, memberId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(memberId));

  @JsonKey(ignore: true)
  @override
  _$$GetMemberDetailCopyWith<_$GetMemberDetail> get copyWith =>
      __$$GetMemberDetailCopyWithImpl<_$GetMemberDetail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) storeUserDetails,
    required TResult Function(
            String patientName,
            String nationalId,
            String? email,
            String gender,
            DateTime dob,
            int? idInsurance,
            String? memberNumber,
            File? profileImage,
            DateTime? expireDate,
            String? otherInsuranceName)
        addMember,
    required TResult Function(int idInsurance, int memberId,
            String? insuranceName, String memberNumber, DateTime expireDate)
        changememberInsuranceDetails,
    required TResult Function() changeMemberAddingSateToInitial,
    required TResult Function(int memberId) getMemberDetail,
    required TResult Function() logOut,
  }) {
    return getMemberDetail(memberId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel user)? storeUserDetails,
    TResult Function(
            String patientName,
            String nationalId,
            String? email,
            String gender,
            DateTime dob,
            int? idInsurance,
            String? memberNumber,
            File? profileImage,
            DateTime? expireDate,
            String? otherInsuranceName)?
        addMember,
    TResult Function(int idInsurance, int memberId, String? insuranceName,
            String memberNumber, DateTime expireDate)?
        changememberInsuranceDetails,
    TResult Function()? changeMemberAddingSateToInitial,
    TResult Function(int memberId)? getMemberDetail,
    TResult Function()? logOut,
  }) {
    return getMemberDetail?.call(memberId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? storeUserDetails,
    TResult Function(
            String patientName,
            String nationalId,
            String? email,
            String gender,
            DateTime dob,
            int? idInsurance,
            String? memberNumber,
            File? profileImage,
            DateTime? expireDate,
            String? otherInsuranceName)?
        addMember,
    TResult Function(int idInsurance, int memberId, String? insuranceName,
            String memberNumber, DateTime expireDate)?
        changememberInsuranceDetails,
    TResult Function()? changeMemberAddingSateToInitial,
    TResult Function(int memberId)? getMemberDetail,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (getMemberDetail != null) {
      return getMemberDetail(memberId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreUserDetails value) storeUserDetails,
    required TResult Function(AddMember value) addMember,
    required TResult Function(ChangememberInsuranceDetails value)
        changememberInsuranceDetails,
    required TResult Function(ChangeMemberAddingSateToInitial value)
        changeMemberAddingSateToInitial,
    required TResult Function(GetMemberDetail value) getMemberDetail,
    required TResult Function(LogOut value) logOut,
  }) {
    return getMemberDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreUserDetails value)? storeUserDetails,
    TResult Function(AddMember value)? addMember,
    TResult Function(ChangememberInsuranceDetails value)?
        changememberInsuranceDetails,
    TResult Function(ChangeMemberAddingSateToInitial value)?
        changeMemberAddingSateToInitial,
    TResult Function(GetMemberDetail value)? getMemberDetail,
    TResult Function(LogOut value)? logOut,
  }) {
    return getMemberDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreUserDetails value)? storeUserDetails,
    TResult Function(AddMember value)? addMember,
    TResult Function(ChangememberInsuranceDetails value)?
        changememberInsuranceDetails,
    TResult Function(ChangeMemberAddingSateToInitial value)?
        changeMemberAddingSateToInitial,
    TResult Function(GetMemberDetail value)? getMemberDetail,
    TResult Function(LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (getMemberDetail != null) {
      return getMemberDetail(this);
    }
    return orElse();
  }
}

abstract class GetMemberDetail implements UserEvent {
  const factory GetMemberDetail({required final int memberId}) =
      _$GetMemberDetail;

  int get memberId;
  @JsonKey(ignore: true)
  _$$GetMemberDetailCopyWith<_$GetMemberDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogOutCopyWith<$Res> {
  factory _$$LogOutCopyWith(_$LogOut value, $Res Function(_$LogOut) then) =
      __$$LogOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements _$$LogOutCopyWith<$Res> {
  __$$LogOutCopyWithImpl(_$LogOut _value, $Res Function(_$LogOut) _then)
      : super(_value, (v) => _then(v as _$LogOut));

  @override
  _$LogOut get _value => super._value as _$LogOut;
}

/// @nodoc

class _$LogOut implements LogOut {
  const _$LogOut();

  @override
  String toString() {
    return 'UserEvent.logOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) storeUserDetails,
    required TResult Function(
            String patientName,
            String nationalId,
            String? email,
            String gender,
            DateTime dob,
            int? idInsurance,
            String? memberNumber,
            File? profileImage,
            DateTime? expireDate,
            String? otherInsuranceName)
        addMember,
    required TResult Function(int idInsurance, int memberId,
            String? insuranceName, String memberNumber, DateTime expireDate)
        changememberInsuranceDetails,
    required TResult Function() changeMemberAddingSateToInitial,
    required TResult Function(int memberId) getMemberDetail,
    required TResult Function() logOut,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel user)? storeUserDetails,
    TResult Function(
            String patientName,
            String nationalId,
            String? email,
            String gender,
            DateTime dob,
            int? idInsurance,
            String? memberNumber,
            File? profileImage,
            DateTime? expireDate,
            String? otherInsuranceName)?
        addMember,
    TResult Function(int idInsurance, int memberId, String? insuranceName,
            String memberNumber, DateTime expireDate)?
        changememberInsuranceDetails,
    TResult Function()? changeMemberAddingSateToInitial,
    TResult Function(int memberId)? getMemberDetail,
    TResult Function()? logOut,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? storeUserDetails,
    TResult Function(
            String patientName,
            String nationalId,
            String? email,
            String gender,
            DateTime dob,
            int? idInsurance,
            String? memberNumber,
            File? profileImage,
            DateTime? expireDate,
            String? otherInsuranceName)?
        addMember,
    TResult Function(int idInsurance, int memberId, String? insuranceName,
            String memberNumber, DateTime expireDate)?
        changememberInsuranceDetails,
    TResult Function()? changeMemberAddingSateToInitial,
    TResult Function(int memberId)? getMemberDetail,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreUserDetails value) storeUserDetails,
    required TResult Function(AddMember value) addMember,
    required TResult Function(ChangememberInsuranceDetails value)
        changememberInsuranceDetails,
    required TResult Function(ChangeMemberAddingSateToInitial value)
        changeMemberAddingSateToInitial,
    required TResult Function(GetMemberDetail value) getMemberDetail,
    required TResult Function(LogOut value) logOut,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreUserDetails value)? storeUserDetails,
    TResult Function(AddMember value)? addMember,
    TResult Function(ChangememberInsuranceDetails value)?
        changememberInsuranceDetails,
    TResult Function(ChangeMemberAddingSateToInitial value)?
        changeMemberAddingSateToInitial,
    TResult Function(GetMemberDetail value)? getMemberDetail,
    TResult Function(LogOut value)? logOut,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreUserDetails value)? storeUserDetails,
    TResult Function(AddMember value)? addMember,
    TResult Function(ChangememberInsuranceDetails value)?
        changememberInsuranceDetails,
    TResult Function(ChangeMemberAddingSateToInitial value)?
        changeMemberAddingSateToInitial,
    TResult Function(GetMemberDetail value)? getMemberDetail,
    TResult Function(LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class LogOut implements UserEvent {
  const factory LogOut() = _$LogOut;
}

/// @nodoc
mixin _$UserState {
  UserModel? get user => throw _privateConstructorUsedError;
  bool get isMemberAdding => throw _privateConstructorUsedError;
  bool get isMemberAddingFailed => throw _privateConstructorUsedError;
  bool get isMemberAddingSucess => throw _privateConstructorUsedError;
  bool get isFetchingMemberDetail => throw _privateConstructorUsedError;
  bool get isMemberDetailFetchingFailed => throw _privateConstructorUsedError;
  bool get isMemberDetailFetchingSucess => throw _privateConstructorUsedError;
  ErrorModel get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
  $Res call(
      {UserModel? user,
      bool isMemberAdding,
      bool isMemberAddingFailed,
      bool isMemberAddingSucess,
      bool isFetchingMemberDetail,
      bool isMemberDetailFetchingFailed,
      bool isMemberDetailFetchingSucess,
      ErrorModel error});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? isMemberAdding = freezed,
    Object? isMemberAddingFailed = freezed,
    Object? isMemberAddingSucess = freezed,
    Object? isFetchingMemberDetail = freezed,
    Object? isMemberDetailFetchingFailed = freezed,
    Object? isMemberDetailFetchingSucess = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      isMemberAdding: isMemberAdding == freezed
          ? _value.isMemberAdding
          : isMemberAdding // ignore: cast_nullable_to_non_nullable
              as bool,
      isMemberAddingFailed: isMemberAddingFailed == freezed
          ? _value.isMemberAddingFailed
          : isMemberAddingFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isMemberAddingSucess: isMemberAddingSucess == freezed
          ? _value.isMemberAddingSucess
          : isMemberAddingSucess // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingMemberDetail: isFetchingMemberDetail == freezed
          ? _value.isFetchingMemberDetail
          : isFetchingMemberDetail // ignore: cast_nullable_to_non_nullable
              as bool,
      isMemberDetailFetchingFailed: isMemberDetailFetchingFailed == freezed
          ? _value.isMemberDetailFetchingFailed
          : isMemberDetailFetchingFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isMemberDetailFetchingSucess: isMemberDetailFetchingSucess == freezed
          ? _value.isMemberDetailFetchingSucess
          : isMemberDetailFetchingSucess // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }

  @override
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$$_UserStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$$_UserStateCopyWith(
          _$_UserState value, $Res Function(_$_UserState) then) =
      __$$_UserStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserModel? user,
      bool isMemberAdding,
      bool isMemberAddingFailed,
      bool isMemberAddingSucess,
      bool isFetchingMemberDetail,
      bool isMemberDetailFetchingFailed,
      bool isMemberDetailFetchingSucess,
      ErrorModel error});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_UserStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$$_UserStateCopyWith<$Res> {
  __$$_UserStateCopyWithImpl(
      _$_UserState _value, $Res Function(_$_UserState) _then)
      : super(_value, (v) => _then(v as _$_UserState));

  @override
  _$_UserState get _value => super._value as _$_UserState;

  @override
  $Res call({
    Object? user = freezed,
    Object? isMemberAdding = freezed,
    Object? isMemberAddingFailed = freezed,
    Object? isMemberAddingSucess = freezed,
    Object? isFetchingMemberDetail = freezed,
    Object? isMemberDetailFetchingFailed = freezed,
    Object? isMemberDetailFetchingSucess = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_UserState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      isMemberAdding: isMemberAdding == freezed
          ? _value.isMemberAdding
          : isMemberAdding // ignore: cast_nullable_to_non_nullable
              as bool,
      isMemberAddingFailed: isMemberAddingFailed == freezed
          ? _value.isMemberAddingFailed
          : isMemberAddingFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isMemberAddingSucess: isMemberAddingSucess == freezed
          ? _value.isMemberAddingSucess
          : isMemberAddingSucess // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingMemberDetail: isFetchingMemberDetail == freezed
          ? _value.isFetchingMemberDetail
          : isFetchingMemberDetail // ignore: cast_nullable_to_non_nullable
              as bool,
      isMemberDetailFetchingFailed: isMemberDetailFetchingFailed == freezed
          ? _value.isMemberDetailFetchingFailed
          : isMemberDetailFetchingFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isMemberDetailFetchingSucess: isMemberDetailFetchingSucess == freezed
          ? _value.isMemberDetailFetchingSucess
          : isMemberDetailFetchingSucess // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }
}

/// @nodoc

class _$_UserState implements _UserState {
  const _$_UserState(
      {required this.user,
      required this.isMemberAdding,
      required this.isMemberAddingFailed,
      required this.isMemberAddingSucess,
      required this.isFetchingMemberDetail,
      required this.isMemberDetailFetchingFailed,
      required this.isMemberDetailFetchingSucess,
      required this.error});

  @override
  final UserModel? user;
  @override
  final bool isMemberAdding;
  @override
  final bool isMemberAddingFailed;
  @override
  final bool isMemberAddingSucess;
  @override
  final bool isFetchingMemberDetail;
  @override
  final bool isMemberDetailFetchingFailed;
  @override
  final bool isMemberDetailFetchingSucess;
  @override
  final ErrorModel error;

  @override
  String toString() {
    return 'UserState(user: $user, isMemberAdding: $isMemberAdding, isMemberAddingFailed: $isMemberAddingFailed, isMemberAddingSucess: $isMemberAddingSucess, isFetchingMemberDetail: $isFetchingMemberDetail, isMemberDetailFetchingFailed: $isMemberDetailFetchingFailed, isMemberDetailFetchingSucess: $isMemberDetailFetchingSucess, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserState &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other.isMemberAdding, isMemberAdding) &&
            const DeepCollectionEquality()
                .equals(other.isMemberAddingFailed, isMemberAddingFailed) &&
            const DeepCollectionEquality()
                .equals(other.isMemberAddingSucess, isMemberAddingSucess) &&
            const DeepCollectionEquality()
                .equals(other.isFetchingMemberDetail, isFetchingMemberDetail) &&
            const DeepCollectionEquality().equals(
                other.isMemberDetailFetchingFailed,
                isMemberDetailFetchingFailed) &&
            const DeepCollectionEquality().equals(
                other.isMemberDetailFetchingSucess,
                isMemberDetailFetchingSucess) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(isMemberAdding),
      const DeepCollectionEquality().hash(isMemberAddingFailed),
      const DeepCollectionEquality().hash(isMemberAddingSucess),
      const DeepCollectionEquality().hash(isFetchingMemberDetail),
      const DeepCollectionEquality().hash(isMemberDetailFetchingFailed),
      const DeepCollectionEquality().hash(isMemberDetailFetchingSucess),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_UserStateCopyWith<_$_UserState> get copyWith =>
      __$$_UserStateCopyWithImpl<_$_UserState>(this, _$identity);
}

abstract class _UserState implements UserState {
  const factory _UserState(
      {required final UserModel? user,
      required final bool isMemberAdding,
      required final bool isMemberAddingFailed,
      required final bool isMemberAddingSucess,
      required final bool isFetchingMemberDetail,
      required final bool isMemberDetailFetchingFailed,
      required final bool isMemberDetailFetchingSucess,
      required final ErrorModel error}) = _$_UserState;

  @override
  UserModel? get user;
  @override
  bool get isMemberAdding;
  @override
  bool get isMemberAddingFailed;
  @override
  bool get isMemberAddingSucess;
  @override
  bool get isFetchingMemberDetail;
  @override
  bool get isMemberDetailFetchingFailed;
  @override
  bool get isMemberDetailFetchingSucess;
  @override
  ErrorModel get error;
  @override
  @JsonKey(ignore: true)
  _$$_UserStateCopyWith<_$_UserState> get copyWith =>
      throw _privateConstructorUsedError;
}
