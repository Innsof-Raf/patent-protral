// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../member/member_model.dart';

part 'generated/user_model.freezed.dart';
part 'generated/user_model.g.dart';

@freezed
sealed class UserModel with _$UserModel {
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
}
