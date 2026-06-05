// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['Id'] as int,
      firstName: json['FirstName'] as String,
      lastName: json['LastName'] as String,
      userName: json['Username'] as String,
      mobileNumber: json['MobileNo'] as String,
      emailId: json['EmailID'] as String,
      accessToken: json['accessToken'] as String,
      members: (json['Members'] as List<dynamic>)
          .map((e) => MemberModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'FirstName': instance.firstName,
      'LastName': instance.lastName,
      'Username': instance.userName,
      'MobileNo': instance.mobileNumber,
      'EmailID': instance.emailId,
      'accessToken': instance.accessToken,
      'Members': instance.members,
    };
