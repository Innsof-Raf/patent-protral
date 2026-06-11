// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/profile/data/models/member_model.dart';
import 'package:patient_portal/feature/profile/domain/entities/user.dart';

part 'generated/user_model.freezed.dart';
part 'generated/user_model.g.dart';

@freezed
sealed class UserModel with _$UserModel {
  const UserModel._();

  const factory UserModel({
    @JsonKey(name: 'Id') required int id,
    @Default('') @JsonKey(name: 'FirstName') String firstName,
    @Default('') @JsonKey(name: 'LastName') String lastName,
    @Default('') @JsonKey(name: 'Username') String userName,
    @Default('') @JsonKey(name: 'MobileNo') String mobileNumber,
    @Default('') @JsonKey(name: 'EmailID') String emailId,
    @JsonKey(name: 'accessToken') required String accessToken,
    @Default('') @JsonKey(name: 'FCM_Token') String fcmToken,
    @Default([]) @JsonKey(name: 'Members') List<MemberModel> members,
    @Default(0) @JsonKey(name: 'IdMember') int idMember,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  User toEntity() {
    return User(
      id: id,
      firstName: firstName,
      lastName: lastName,
      userName: userName,
      mobileNumber: mobileNumber,
      emailId: emailId,
      accessToken: accessToken,
      fcmToken: fcmToken,
      members: members.map((e) => e.toEntity()).toList(),
      idMember: idMember,
    );
  }
}
