// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: intFromJson(json['Id']),
  firstName: json['FirstName'] as String? ?? '',
  lastName: json['LastName'] as String? ?? '',
  userName: json['Username'] as String? ?? '',
  mobileNumber: json['MobileNo'] as String? ?? '',
  emailId: json['EmailID'] as String? ?? '',
  accessToken: json['accessToken'] as String,
  fcmToken: json['FCM_Token'] as String? ?? '',
  members:
      (json['Members'] as List<dynamic>?)
          ?.map((e) => MemberModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  idMember: json['IdMember'] == null ? 0 : intFromJson(json['IdMember']),
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'FirstName': instance.firstName,
      'LastName': instance.lastName,
      'Username': instance.userName,
      'MobileNo': instance.mobileNumber,
      'EmailID': instance.emailId,
      'accessToken': instance.accessToken,
      'FCM_Token': instance.fcmToken,
      'Members': instance.members,
      'IdMember': instance.idMember,
    };
