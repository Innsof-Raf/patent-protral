// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) =>
    _NotificationModel(
      date: json['date'] as String,
      month: json['month'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      description: json['description'] as String,
      isRead: json['isRead'] as bool? ?? false,
    );

Map<String, dynamic> _$NotificationModelToJson(_NotificationModel instance) =>
    <String, dynamic>{
      'date': instance.date,
      'month': instance.month,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'description': instance.description,
      'isRead': instance.isRead,
    };
