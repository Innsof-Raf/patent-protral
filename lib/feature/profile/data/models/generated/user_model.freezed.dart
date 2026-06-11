// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserModel {

@JsonKey(name: 'Id', fromJson: intFromJson) int get id;@JsonKey(name: 'FirstName') String get firstName;@JsonKey(name: 'LastName') String get lastName;@JsonKey(name: 'Username') String get userName;@JsonKey(name: 'MobileNo') String get mobileNumber;@JsonKey(name: 'EmailID') String get emailId;@JsonKey(name: 'accessToken') String get accessToken;@JsonKey(name: 'FCM_Token') String get fcmToken;@JsonKey(name: 'Members') List<MemberModel> get members;@JsonKey(name: 'IdMember', fromJson: intFromJson) int get idMember;
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserModelCopyWith<UserModel> get copyWith => _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.emailId, emailId) || other.emailId == emailId)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.fcmToken, fcmToken) || other.fcmToken == fcmToken)&&const DeepCollectionEquality().equals(other.members, members)&&(identical(other.idMember, idMember) || other.idMember == idMember));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,userName,mobileNumber,emailId,accessToken,fcmToken,const DeepCollectionEquality().hash(members),idMember);

@override
String toString() {
  return 'UserModel(id: $id, firstName: $firstName, lastName: $lastName, userName: $userName, mobileNumber: $mobileNumber, emailId: $emailId, accessToken: $accessToken, fcmToken: $fcmToken, members: $members, idMember: $idMember)';
}


}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res>  {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) = _$UserModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Id', fromJson: intFromJson) int id,@JsonKey(name: 'FirstName') String firstName,@JsonKey(name: 'LastName') String lastName,@JsonKey(name: 'Username') String userName,@JsonKey(name: 'MobileNo') String mobileNumber,@JsonKey(name: 'EmailID') String emailId,@JsonKey(name: 'accessToken') String accessToken,@JsonKey(name: 'FCM_Token') String fcmToken,@JsonKey(name: 'Members') List<MemberModel> members,@JsonKey(name: 'IdMember', fromJson: intFromJson) int idMember
});




}
/// @nodoc
class _$UserModelCopyWithImpl<$Res>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? userName = null,Object? mobileNumber = null,Object? emailId = null,Object? accessToken = null,Object? fcmToken = null,Object? members = null,Object? idMember = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,emailId: null == emailId ? _self.emailId : emailId // ignore: cast_nullable_to_non_nullable
as String,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,fcmToken: null == fcmToken ? _self.fcmToken : fcmToken // ignore: cast_nullable_to_non_nullable
as String,members: null == members ? _self.members : members // ignore: cast_nullable_to_non_nullable
as List<MemberModel>,idMember: null == idMember ? _self.idMember : idMember // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [UserModel].
extension UserModelPatterns on UserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserModel value)  $default,){
final _that = this;
switch (_that) {
case _UserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id', fromJson: intFromJson)  int id, @JsonKey(name: 'FirstName')  String firstName, @JsonKey(name: 'LastName')  String lastName, @JsonKey(name: 'Username')  String userName, @JsonKey(name: 'MobileNo')  String mobileNumber, @JsonKey(name: 'EmailID')  String emailId, @JsonKey(name: 'accessToken')  String accessToken, @JsonKey(name: 'FCM_Token')  String fcmToken, @JsonKey(name: 'Members')  List<MemberModel> members, @JsonKey(name: 'IdMember', fromJson: intFromJson)  int idMember)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.userName,_that.mobileNumber,_that.emailId,_that.accessToken,_that.fcmToken,_that.members,_that.idMember);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id', fromJson: intFromJson)  int id, @JsonKey(name: 'FirstName')  String firstName, @JsonKey(name: 'LastName')  String lastName, @JsonKey(name: 'Username')  String userName, @JsonKey(name: 'MobileNo')  String mobileNumber, @JsonKey(name: 'EmailID')  String emailId, @JsonKey(name: 'accessToken')  String accessToken, @JsonKey(name: 'FCM_Token')  String fcmToken, @JsonKey(name: 'Members')  List<MemberModel> members, @JsonKey(name: 'IdMember', fromJson: intFromJson)  int idMember)  $default,) {final _that = this;
switch (_that) {
case _UserModel():
return $default(_that.id,_that.firstName,_that.lastName,_that.userName,_that.mobileNumber,_that.emailId,_that.accessToken,_that.fcmToken,_that.members,_that.idMember);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Id', fromJson: intFromJson)  int id, @JsonKey(name: 'FirstName')  String firstName, @JsonKey(name: 'LastName')  String lastName, @JsonKey(name: 'Username')  String userName, @JsonKey(name: 'MobileNo')  String mobileNumber, @JsonKey(name: 'EmailID')  String emailId, @JsonKey(name: 'accessToken')  String accessToken, @JsonKey(name: 'FCM_Token')  String fcmToken, @JsonKey(name: 'Members')  List<MemberModel> members, @JsonKey(name: 'IdMember', fromJson: intFromJson)  int idMember)?  $default,) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.userName,_that.mobileNumber,_that.emailId,_that.accessToken,_that.fcmToken,_that.members,_that.idMember);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserModel extends UserModel {
  const _UserModel({@JsonKey(name: 'Id', fromJson: intFromJson) required this.id, @JsonKey(name: 'FirstName') this.firstName = '', @JsonKey(name: 'LastName') this.lastName = '', @JsonKey(name: 'Username') this.userName = '', @JsonKey(name: 'MobileNo') this.mobileNumber = '', @JsonKey(name: 'EmailID') this.emailId = '', @JsonKey(name: 'accessToken') required this.accessToken, @JsonKey(name: 'FCM_Token') this.fcmToken = '', @JsonKey(name: 'Members') final  List<MemberModel> members = const [], @JsonKey(name: 'IdMember', fromJson: intFromJson) this.idMember = 0}): _members = members,super._();
  factory _UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

@override@JsonKey(name: 'Id', fromJson: intFromJson) final  int id;
@override@JsonKey(name: 'FirstName') final  String firstName;
@override@JsonKey(name: 'LastName') final  String lastName;
@override@JsonKey(name: 'Username') final  String userName;
@override@JsonKey(name: 'MobileNo') final  String mobileNumber;
@override@JsonKey(name: 'EmailID') final  String emailId;
@override@JsonKey(name: 'accessToken') final  String accessToken;
@override@JsonKey(name: 'FCM_Token') final  String fcmToken;
 final  List<MemberModel> _members;
@override@JsonKey(name: 'Members') List<MemberModel> get members {
  if (_members is EqualUnmodifiableListView) return _members;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_members);
}

@override@JsonKey(name: 'IdMember', fromJson: intFromJson) final  int idMember;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserModelCopyWith<_UserModel> get copyWith => __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.emailId, emailId) || other.emailId == emailId)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.fcmToken, fcmToken) || other.fcmToken == fcmToken)&&const DeepCollectionEquality().equals(other._members, _members)&&(identical(other.idMember, idMember) || other.idMember == idMember));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,userName,mobileNumber,emailId,accessToken,fcmToken,const DeepCollectionEquality().hash(_members),idMember);

@override
String toString() {
  return 'UserModel(id: $id, firstName: $firstName, lastName: $lastName, userName: $userName, mobileNumber: $mobileNumber, emailId: $emailId, accessToken: $accessToken, fcmToken: $fcmToken, members: $members, idMember: $idMember)';
}


}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(_UserModel value, $Res Function(_UserModel) _then) = __$UserModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Id', fromJson: intFromJson) int id,@JsonKey(name: 'FirstName') String firstName,@JsonKey(name: 'LastName') String lastName,@JsonKey(name: 'Username') String userName,@JsonKey(name: 'MobileNo') String mobileNumber,@JsonKey(name: 'EmailID') String emailId,@JsonKey(name: 'accessToken') String accessToken,@JsonKey(name: 'FCM_Token') String fcmToken,@JsonKey(name: 'Members') List<MemberModel> members,@JsonKey(name: 'IdMember', fromJson: intFromJson) int idMember
});




}
/// @nodoc
class __$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? userName = null,Object? mobileNumber = null,Object? emailId = null,Object? accessToken = null,Object? fcmToken = null,Object? members = null,Object? idMember = null,}) {
  return _then(_UserModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,emailId: null == emailId ? _self.emailId : emailId // ignore: cast_nullable_to_non_nullable
as String,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,fcmToken: null == fcmToken ? _self.fcmToken : fcmToken // ignore: cast_nullable_to_non_nullable
as String,members: null == members ? _self._members : members // ignore: cast_nullable_to_non_nullable
as List<MemberModel>,idMember: null == idMember ? _self.idMember : idMember // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
