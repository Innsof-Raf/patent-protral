// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: 'Id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'FirstName')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'LastName')
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'Username')
  String get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'MobileNo')
  String get mobileNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'EmailID')
  String get emailId => throw _privateConstructorUsedError;
  @JsonKey(name: 'accessToken')
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'Members')
  List<MemberModel> get members => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'Id') int id,
      @JsonKey(name: 'FirstName') String firstName,
      @JsonKey(name: 'LastName') String lastName,
      @JsonKey(name: 'Username') String userName,
      @JsonKey(name: 'MobileNo') String mobileNumber,
      @JsonKey(name: 'EmailID') String emailId,
      @JsonKey(name: 'accessToken') String accessToken,
      @JsonKey(name: 'Members') List<MemberModel> members});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res> implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  final UserModel _value;
  // ignore: unused_field
  final $Res Function(UserModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? userName = freezed,
    Object? mobileNumber = freezed,
    Object? emailId = freezed,
    Object? accessToken = freezed,
    Object? members = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      emailId: emailId == freezed
          ? _value.emailId
          : emailId // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<MemberModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$$_UserModelCopyWith(
          _$_UserModel value, $Res Function(_$_UserModel) then) =
      __$$_UserModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'Id') int id,
      @JsonKey(name: 'FirstName') String firstName,
      @JsonKey(name: 'LastName') String lastName,
      @JsonKey(name: 'Username') String userName,
      @JsonKey(name: 'MobileNo') String mobileNumber,
      @JsonKey(name: 'EmailID') String emailId,
      @JsonKey(name: 'accessToken') String accessToken,
      @JsonKey(name: 'Members') List<MemberModel> members});
}

/// @nodoc
class __$$_UserModelCopyWithImpl<$Res> extends _$UserModelCopyWithImpl<$Res>
    implements _$$_UserModelCopyWith<$Res> {
  __$$_UserModelCopyWithImpl(
      _$_UserModel _value, $Res Function(_$_UserModel) _then)
      : super(_value, (v) => _then(v as _$_UserModel));

  @override
  _$_UserModel get _value => super._value as _$_UserModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? userName = freezed,
    Object? mobileNumber = freezed,
    Object? emailId = freezed,
    Object? accessToken = freezed,
    Object? members = freezed,
  }) {
    return _then(_$_UserModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      emailId: emailId == freezed
          ? _value.emailId
          : emailId // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      members: members == freezed
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<MemberModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModel implements _UserModel {
  const _$_UserModel(
      {@JsonKey(name: 'Id') required this.id,
      @JsonKey(name: 'FirstName') required this.firstName,
      @JsonKey(name: 'LastName') required this.lastName,
      @JsonKey(name: 'Username') required this.userName,
      @JsonKey(name: 'MobileNo') required this.mobileNumber,
      @JsonKey(name: 'EmailID') required this.emailId,
      @JsonKey(name: 'accessToken') required this.accessToken,
      @JsonKey(name: 'Members') required final List<MemberModel> members})
      : _members = members;

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  @JsonKey(name: 'Id')
  final int id;
  @override
  @JsonKey(name: 'FirstName')
  final String firstName;
  @override
  @JsonKey(name: 'LastName')
  final String lastName;
  @override
  @JsonKey(name: 'Username')
  final String userName;
  @override
  @JsonKey(name: 'MobileNo')
  final String mobileNumber;
  @override
  @JsonKey(name: 'EmailID')
  final String emailId;
  @override
  @JsonKey(name: 'accessToken')
  final String accessToken;
  final List<MemberModel> _members;
  @override
  @JsonKey(name: 'Members')
  List<MemberModel> get members {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  String toString() {
    return 'UserModel(id: $id, firstName: $firstName, lastName: $lastName, userName: $userName, mobileNumber: $mobileNumber, emailId: $emailId, accessToken: $accessToken, members: $members)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality()
                .equals(other.mobileNumber, mobileNumber) &&
            const DeepCollectionEquality().equals(other.emailId, emailId) &&
            const DeepCollectionEquality()
                .equals(other.accessToken, accessToken) &&
            const DeepCollectionEquality().equals(other._members, _members));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(mobileNumber),
      const DeepCollectionEquality().hash(emailId),
      const DeepCollectionEquality().hash(accessToken),
      const DeepCollectionEquality().hash(_members));

  @JsonKey(ignore: true)
  @override
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      __$$_UserModelCopyWithImpl<_$_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
          {@JsonKey(name: 'Id') required final int id,
          @JsonKey(name: 'FirstName') required final String firstName,
          @JsonKey(name: 'LastName') required final String lastName,
          @JsonKey(name: 'Username') required final String userName,
          @JsonKey(name: 'MobileNo') required final String mobileNumber,
          @JsonKey(name: 'EmailID') required final String emailId,
          @JsonKey(name: 'accessToken') required final String accessToken,
          @JsonKey(name: 'Members') required final List<MemberModel> members}) =
      _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  @JsonKey(name: 'Id')
  int get id;
  @override
  @JsonKey(name: 'FirstName')
  String get firstName;
  @override
  @JsonKey(name: 'LastName')
  String get lastName;
  @override
  @JsonKey(name: 'Username')
  String get userName;
  @override
  @JsonKey(name: 'MobileNo')
  String get mobileNumber;
  @override
  @JsonKey(name: 'EmailID')
  String get emailId;
  @override
  @JsonKey(name: 'accessToken')
  String get accessToken;
  @override
  @JsonKey(name: 'Members')
  List<MemberModel> get members;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
