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
    @JsonKey(name: 'FirstName') required String firstName,
    @JsonKey(name: 'LastName') required String lastName,
    @JsonKey(name: 'Username') required String userName,
    @JsonKey(name: 'MobileNo') required String mobileNumber,
    @JsonKey(name: 'EmailID') required String emailId,
    @JsonKey(name: 'accessToken') required String accessToken,
    @JsonKey(name: 'Members') required List<MemberModel> members,
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
      members: members.map((e) => e.toEntity()).toList(),
    );
  }
}
