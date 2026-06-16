// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: (json['id'] as num).toInt(),
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  userName: json['userName'] as String,
  mobileNumber: json['mobileNumber'] as String,
  emailId: json['emailId'] as String,
  accessToken: json['accessToken'] as String,
  fcmToken: json['fcmToken'] as String? ?? '',
  members: (json['members'] as List<dynamic>)
      .map((e) => Member.fromJson(e as Map<String, dynamic>))
      .toList(),
  idMember: (json['idMember'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'id': instance.id,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'userName': instance.userName,
  'mobileNumber': instance.mobileNumber,
  'emailId': instance.emailId,
  'accessToken': instance.accessToken,
  'fcmToken': instance.fcmToken,
  'members': instance.members,
  'idMember': instance.idMember,
};
